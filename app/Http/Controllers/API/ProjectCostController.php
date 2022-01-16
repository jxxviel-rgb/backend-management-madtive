<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\ProjectCost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProjectCostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projectCost = ProjectCost::get();
        return response()->json([
            'success' => true,
            'message' => 'Retrieve data project cost',
            'data' => $projectCost,
        ]);
    }
    public function show($id)
    {
        $projectCost = ProjectCost::findOrFail($id);

        return response()->json([
            'success' => true,
            'message' => 'Get specific project cost',
            'data' => $projectCost
        ]);
    }

    public function update(Request $request, $id)
    {
        $messages = [
            'tax.numeric' => 'Input hanya boleh angka',
            'profit_team.numeric' => 'Input hanya boleh angka',
            'profit_company.numeric' => 'Input hanya boleh angka'
        ];
        $validator = Validator::make($request->all(), [
            'tax' => 'numeric',
            'profit_team' => 'numeric',
            'profit_company' => 'numeric',
        ], $messages);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        $projectCost = ProjectCost::findOrFail($id);
        $projectCost->update($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Success update data',
            'data' => $projectCost,
        ]);
    }
}
