<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pic;
use Illuminate\Support\Facades\Validator;

class PicController extends Controller
{
    public function index()
    {
        $pics = Pic::with('client')->get();
        return response()->json([
            'success' => true,
            'message' => 'Retrieving All Data Pics',
            'data' => $pics
        ], 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'client_id' => 'required',
            'name' => 'required',
            'phone_number' => 'required|unique:pics',
            'email' => 'required|email|unique:pics',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $pic = Pic::create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Successfully stored data pics',
            'data' => $pic
        ]);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'phone_number' => 'unique:pics,phone_number,' . $id,
            'email' => 'email|unique:pics,email,' . $id,
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $pic = Pic::findOrFail($id);
        $pic->update($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Successfully updating data PIC',
            'data' => $pic
        ], 200);
    }

    public function destroy($id)
    {
        $pic = Pic::findOrFail($id);
        $pic->delete();
        return response()->json([
            'success' => true,
            'message' => 'Successfully deleted data pic',
            'data' => $pic
        ], 200);
    }

    public function show($id)
    {
        $pic = Pic::with('client')->findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Retrieving Specific PIC',
            'data' => $pic
        ], 200);
    }
}
