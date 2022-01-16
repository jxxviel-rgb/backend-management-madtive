<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;

use App\Models\AdditionalCost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class AdditionalCostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        $message = [
            'category.required' => 'Input tidak boleh kosong',
            'project_id.required' => 'Input tidak boleh kosong',
            'description.required' => 'Input tidak boleh kosong',
            'type.required' => 'Input tidak boleh kosong',
            'cost.required' => 'Input tidak boleh kosong',
            'cost.numeric' => 'Input harus angka',
        ];
        $validator = Validator::make($request->all(), [
            'category' => 'required',
            'project_id' => 'required',
            'description' => 'required',
            'cost' => 'required|numeric',
            'type' => 'required'
        ], $message);
        if ($validator->fails())
            return response()->json($validator->errors(), 400);
        $additionalCost = AdditionalCost::create($request->all());
        // if ($additionalCost) {
        return response()->json([
            'success' => true,
            'message' => 'Success store data costs',
            'data' => $additionalCost
        ], Response::HTTP_CREATED);
        // } else {
        //     return response()->json([
        //         'success' => false,
        //         'message' => 'Failed retrieve all data costs',
        //         'data' => null
        //     ], Response::HTTP_BAD_REQUEST);
        // }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AdditionalCost  $additionalCost
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $additionalCost = AdditionalCost::findOrFail($id);

        return response()->json([
            'success' => true,
            'message' => 'Success get specific additional cost',
            'data' => $additionalCost,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AdditionalCost  $additionalCost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $additionalCost = AdditionalCost::findOrFail($id);
        $additionalCost->update($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Success updating data',
            'data' => $additionalCost,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AdditionalCost  $additionalCost
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $additionalCost = AdditionalCost::findOrFail($id);
        $additionalCost->delete();

        return response()->json([
            'success' => true,
            'message' => 'Success delete data aditional cost',
            'data' => $additionalCost,
        ]);
    }
}
