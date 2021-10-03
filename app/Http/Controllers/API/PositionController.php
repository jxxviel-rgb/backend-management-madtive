<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Position;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class PositionController extends Controller
{
    public function index()
    {
        $positions = Position::all();
        if($positions)
        return response()->json([
            'success' => true,
            'message' => 'Retrieving All Data Positions',
            'data' => $positions
        ]);
        return response()->json([
            'success' => false,
            'message' => 'Not Found',
            'data' => null
        ], Response::HTTP_NO_CONTENT);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'position_name' => 'required'
        ]);
        if($validator->fails())
        return response()->json($validator->erros, Response::HTTP_BAD_REQUEST);
        $dataInput = $request->all();
        $position = Position::create($dataInput);
        return response()->json([
            'success' => true,
            'message' => 'New Position Successfully Created',
            'data' => $position
        ], 201);
    }

    public function destroy($id)
    {
        $position = Position::findOrFail($id);
        $position->delete();
        return response()->json([
            'success' => true,
            'message' => 'Successfull Deleted Data Position',
            'data' => $position
        ], 204);
    }

    public function update(Request $request, $id)
    {
        $position = Position::findOrFail($id);
        $position->update($request->all());
        return response()->json([
            'success' => true,
            'message' => 'Update Success',
            'data' => $position
        ], 200);
    }

    public function show($id)
    {
        $position = Position::findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Retrieving Specific Position',
            'data' => $position
        ], 200);
    }
}
