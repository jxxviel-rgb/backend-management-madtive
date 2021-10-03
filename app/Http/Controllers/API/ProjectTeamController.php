<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\ProjectTeam;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;


class ProjectTeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teams = ProjectTeam::with(['project', 'employee'])->get();

        return response()->json([
            'success' => true,
            'message' => 'Retrieving All Project Teams.',
            'data' => $teams
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
            'employee_id' => 'required',
            'position' => 'required',
            'profit' => 'required|numeric',
            'payment_status' => 'required',
        ]);
        
        if ($validator->fails())
            return response()->json($validator->errors(), Response::HTTP_BAD_REQUEST);
        $team = ProjectTeam::create($request->all());
        if ($team)
            return response()->json([
                'success' => true,
                'message' => 'Successfully store new project team',
                'data' => $team
            ], Response::HTTP_CREATED);
        else
            return response()->json([
                'success' => false,
                'message' => 'Failed store new project team',
                'data' => null
            ], Response::HTTP_BAD_REQUEST);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $team = ProjectTeam::with(['employee', "project"])->findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Retrieving Specific Data Project Team',
            'data' => $team
        ]);
    }
    public function showProjectTeam($id){
        $team = ProjectTeam::with(['employee', 'project'])->where('project_id', $id)->get();
        return response()->json([
            'success'=>true,
            'message'=>'Retrieving Specific Project Team',
            'data'=>$team,
        ], Response::HTTP_OK);
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
        $team = ProjectTeam::findOrFail($id);
        $team->update($request->all());
        return response()->json([
            'success' => true,
            'message' => 'Update Existing Project Team',
            'data' => $team
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $team = ProjectTeam::findOrFail($id);
        $team->delete();
        return response()->json([
            'success' => true,
            'message' => 'Successfully delete data project team',
            'data' => $team
        ], Response::HTTP_OK);
    }
}
