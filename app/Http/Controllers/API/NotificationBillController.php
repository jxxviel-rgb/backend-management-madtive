<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\NotificationBill;
use App\Models\Pic;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;
use Twilio\Rest\Client;

class NotificationBillController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->input('message') === 'null') {
            $messages = NotificationBill::where('message', null)->get();
            return response()->json([
                'success' => true,
                'message' => 'Success retrieve bill with message null',
                'data' => $messages
            ]);
        }
        // return $this->messagesHistory();
        $bills = NotificationBill::with(['client', 'pic', 'project'])->get();

        return response()->json([
            'success' => true,
            'message' => 'Get All Bill.',
            'data' => $bills,
        ], Response::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'project_id' => 'required',
            'client_id' => 'required',
            'pic_id' => 'required',
            'due_date' => 'required|date',
            'start_date' => 'required|date',
        ]);
        if ($validator->fails())
            return response()->json($validator->errors(), Response::HTTP_BAD_GATEWAY);

        $notificationBill = NotificationBill::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Bill  $bill
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $bill = NotificationBill::with(['client', 'project', 'pic'])->findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Get Specific Bill',
            'data' => $bill
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Bill  $bill
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        // dd($request->message);

        $validator = Validator::make($request->all(), [
            'message' => 'required',
            'before_due' => 'required',
            'start_date' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), Response::HTTP_BAD_GATEWAY);
        }
        $bill = NotificationBill::findOrFail($id);
        $bill->update([
            'before_due' => $request->before_due,
            'message' => $request->message,
            'start_date' => $request->start_date,
            'due_date' => Carbon::parse(
                $request->start_date
            )->addMonth(1)
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Success updating bill',
            'data' => $bill
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Bill  $bill
     * @return \Illuminate\Http\Response
     */
    public function destroy(NotificationBill $bill)
    {
        //
    }

    public function messagesHistory(Request $request)
    {
        $sid = getenv("TWILIO_AUTH_SID");
        $token = getenv("TWILIO_AUTH_TOKEN");
        // $from = getenv("TWILIO_WHATSAPP_FROM");
        // ddd($token);
        $twilio = new Client($sid, $token);
        if (!$request->page) {
            $messages = $twilio->messages->page([], 5, 10);
        } else {
            $messages = $twilio->messages->getPage($request->page);
        }
        // NotificationsBill::where('')
        // dd($request->page);
        // dd($messages);
        foreach ($messages as $value => $record) {
            $phone_number[] = explode(':', $record->to);
            $from = explode(':', $record->from);
            $pics = Pic::with('client')->where('phone_number', $phone_number[$value][1])->first();
            // dd($pics);
            $encodedMessages[] = [
                'sid' => $record->sid,
                'body' => $record->body,
                'from' => $from[1],
                'to' => $record->to,
                'date_sent' => $record->dateSent,
                'status' => $record->status,
                'pics' => $pics
            ];
        }

        // dd($pics);
        // dump($phone_number[0]);
        // $encodedMessagesp[] = [
        //     'pics' => $phone_number,
        // ];

        // dd($pics);
        $next_page = $messages->getNextPageUrl();
        $previous_page = $messages->getPreviousPageUrl();
        return response()->json([
            'success' => true,
            'message' => 'Retrieve all history message',
            'previous_page' => $previous_page,
            'next_page' => $next_page,
            'data' => $encodedMessages
        ]);
    }
}
