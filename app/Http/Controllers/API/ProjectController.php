<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\ProjectTeam;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Client\Response as ClientResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

use function PHPUnit\Framework\isNull;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::with('client')->get();
        for ($i=0; $i < count($projects); $i++) { 
            $projects[$i]->deadline = Carbon::parse($projects[$i]->deadline)->translatedFormat('d F Y');
            $projects[$i]->estimation = Carbon::parse($projects[$i]->estimation)->translatedFormat('d F Y');
        }
       
            return response()->json([
                'success' => true,
                'message' => "Success Retrieving All Projects",
                'data' => $projects
            ], 200);
        
    }


    public function show($id)
    {

        $project = Project::with('client')->findOrFail($id);
            $project->deadline = Carbon::parse($project->deadline)->translatedFormat('d F Y');
            $project->estimation = Carbon::parse($project->estimation)->translatedFormat('d F Y');
        
        return response()->json([
            'success' => true,
            'message' => 'Success Retrieving Specific Project',
            'data' => $project,
        ], 200);
    }
    public function showForUpdate($id)
    {

        $project = Project::with('client')->findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Success Retrieving Specific Project',
            'data' => $project,
        ], 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [

            'client_id' => 'required',
            'name' => 'required|string|max:255',
            'deadline' => 'required|date',
            'estimation' => 'required|date',
            'project_value' => 'required|numeric',
            'accomodation' => 'required|numeric',
            'profit_team' => 'required|numeric',
            'profit_company' => 'required|numeric',
            'tax' => 'required',
            'progres' => 'required',
            'status' => 'required',
        ]);

        if ($validator->fails())
            return response()->json($validator->errors(), 400);

        $project = Project::create($request->all());


        return response()->json([
            'success' => true,
            'message' => 'Success Add New Project',
            'data' => $project
        ]);
    }

    public function update(Request $request, $id)
    {
        $project = Project::findOrFail($id);
        $project->update($request->all());
            return response()->json([
                'success' => true,
                'message' => 'Success Update Existing Project',
                'data' => $project
            ], Response::HTTP_OK);
    }


    public function destroy($id)
    {
        DB::beginTransaction();
        try{
            $project = Project::findOrFail($id);
            $project->delete();
            $team = ProjectTeam::where('project_id', $id);
            $team->delete();
            DB::commit();
            return response()->json([
                'success' => true,
                "message"=>"Successfully deleted project with team members",
                "data"=>[
                    "project"=>$project,
                    "team" => $team,
                ]
                ], Response::HTTP_ACCEPTED);
        } catch(Exception $e ){
            DB::rollBack();
            return response()->json([
                'success' => true,
                "message"=>"Successfully deleted project with team members",
                "data"=>[
                    "project"=>$project,
                    "team" => $team,
                ]
                ], Response::HTTP_ACCEPTED);
        }

        if ($project)
            return response()->json([
                'success' => true,
                'message' => 'Successfully delete project',
                'data' => $project
            ], Response::HTTP_OK);
        else
            return response()->json([
                'success' => false,
                'message' => 'Failed deleting project',
                'data' => null
            ], Response::HTTP_BAD_REQUEST);
    }
}
