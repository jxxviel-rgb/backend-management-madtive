<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Message;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $isUsed = $request->input('isUsed');
        if ($isUsed) {
            $message = Message::where('isUsed', 1)->first();
            return response()->json([
                'success' => true,
                'message' => 'Retrieve message is used',
                'data' => $message
            ]);
        } else {
            $messages = Message::all();

            return response()->json([
                'success' => true,
                'message' => 'Retrieving all messages',
                'data' => $messages
            ]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $messages = [
            'message.required' => 'Input tidak boleh kosong'
        ];
        $validator = Validator::make($request->all(), [
            'message' => 'required',
        ], $messages);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        $message = Message::create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Success store data message',
            'data' => $message
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $message = Message::findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Retrieving specific message',
            'data' => $message
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $updateIsUsedOnly = $request->isUsedOnly;
        if ($updateIsUsedOnly) {
            $newMessage = Message::findOrFail($id);
            $oldMessage = Message::where('isUsed', 1);
            DB::beginTransaction();
            try {
                $oldMessage->update([
                    'isUsed' => 0
                ]);
                $newMessage->update([
                    'isUsed' => 1
                ]);
                DB::commit();
                return response()->json([
                    'success' => true,
                    'message' => 'data has updated',
                    'data' => [
                        'old' => $oldMessage,
                        'new' => $newMessage,
                    ],
                ]);
            } catch (Exception $e) {
                DB::rollBack();
            }
        } else {
            $message = Message::findOrFail($id);
            $message->update($request->all());
            return response()->json([
                'success' => true,
                'message' => 'data has updated',
                'data' => $message,
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $message = Message::findOrFail($id);
        $message->delete();

        return response()->json([
            'success' => true,
            'message' => 'Data has been deleted',
            'data' => $message
        ]);
    }
}
