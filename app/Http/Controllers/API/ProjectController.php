<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\AdditionalCost;
use App\Models\NotificationBill;
use App\Models\Project;
use App\Models\ProjectTeam;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Client\Response as ClientResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use PHPUnit\Framework\Error\Notice;
use Symfony\Component\HttpFoundation\Response;

class ProjectController extends Controller
{
    public function index(Request $request)
    {

        $projects = Project::with(['client', 'pic'])->orderBy('created_at', 'desc')->paginate(5);
        // dd($projects[0]->client);
        for ($i = 0; $i < count($projects->items()); $i++) {
            $projects[$i]->deadline = Carbon::parse($projects[$i]->deadline)->translatedFormat('d F Y');
            $projects[$i]->start_project = Carbon::parse($projects[$i]->start_project)->translatedFormat('d F Y');
            $projects[$i]->document = asset($projects[$i]->document);
        }
        $type = $request->input('type');
        if ($type === 'monthly') {
            $projects = Project::with('client')->where('type', 'MONTHLY')->get();
        }
        return response()->json([
            'success' => true,
            'message' => "Success Retrieving All Projects",
            'data' => $projects
        ], 200);
    }


    public function show($id)
    {

        $project = Project::with(['client', 'pic'])->findOrFail($id);
        $project->deadline = Carbon::parse($project->deadline)->translatedFormat('d F Y');
        $project->start_project = Carbon::parse($project->start_project)->translatedFormat('d F Y');
        $project->document = asset($project->document);
        return response()->json([
            'success' => true,
            'message' => 'Success Retrieving Specific Project',
            'data' => $project,
        ], 200);
    }
    public function showForUpdate($id)
    {

        $project = Project::with(['client', 'pic'])->findOrFail($id);
        // dd(explode('/', $project->document));
        $project->document = explode('/', $project->document);
        $project->document = array_diff_key($project->document, [$project->document[1], $project->document[0]]);
        $project->document = implode("", $project->document);
        return response()->json([
            'success' => true,
            'message' => 'Success Retrieving Specific Project',
            'data' => $project,
        ], 200);
    }

    public function store(Request $request)
    {
        $message = [
            'document.mimes' => 'Dokumen harus berekstensi jpg, jpeg, png, doc, docx, pdf dan Max. 10mb',
        ];
        if ($request->addTax) {
            $validator = Validator::make($request->all(), [
                'client_id' => 'required',
                'pic_id' => 'required',
                'name' => 'required|string|max:255',
                'start_project' => 'required|date',
                'deadline' => 'required|date',
                'project_value' => 'required',
                'accomodation' => 'required',
                'profit_team' => 'required',
                'profit_company' => 'required',
                'tax' => 'required',
                'status' => 'required',
                'type' => 'required',
                'point' => 'required',
                'document' => 'required|mimes:pdf, jpg,jpeg,png,docx,doc,zip|max:10240',
                'support_link' => 'required',
            ], $message);
        } elseif ($request->type === 'MONTHLY') {
            $validator = Validator::make($request->all(), [
                'client_id' => 'required',
                'pic_id' => 'required',
                'name' => 'required|string|max:255',
                'start_project' => 'required|date',
                'deadline' => 'required|date',
                'project_value' => 'required',
                'accomodation' => 'required',
                'profit_team' => 'required',
                'profit_company' => 'required',
                'status' => 'required',
                'monthly_fee' => 'required',
                'point' => 'required',
                'document' => 'required|mimes:pdf, jpg,jpeg,png,docx,doc,zip|max:10240',
                'support_link' => 'required',
            ], $message);
        } else {
            $validator = Validator::make($request->all(), [
                'pic_id' => 'required',
                'client_id' => 'required',
                'name' => 'required|string|max:255',
                'start_project' => 'required|date',
                'deadline' => 'required|date',
                'project_value' => 'required',
                'accomodation' => 'required',
                'profit_team' => 'required',
                'profit_company' => 'required',
                'status' => 'required',
                'type' => 'required',
                'point' => 'required',
                'document' => 'required|mimes:pdf, jpg,jpeg,png,docx,doc,zip|max:10240',
                'support_link' => 'required',
            ], $message);
        }

        if ($validator->fails())
            return response()->json($validator->errors(), 400);
        $file = $request->file('document');

        $fileName = time() . $file->getClientOriginalName();

        $filePath = $file->storeAs('public/documents', $fileName);
        $filePathFiltered = str_replace('public', 'storage', $filePath);
        if ($request->type === 'MONTHLY') {
            DB::beginTransaction();
            try {
                $project = Project::create([
                    'client_id' => $request->client_id,
                    'pic_id' => $request->pic_id,
                    'name' => $request->name,
                    'type' => $request->type,
                    'start_project' => $request->start_project,
                    'deadline' => $request->deadline,
                    'project_value' => $request->project_value,
                    'monthly_fee' => $request->type === 'ONE TIME' ? 0 : $request->monthly_fee,
                    'estimation' => $request->estimation,
                    'accomodation' => $request->accomodation,
                    'profit_team' => $request->profit_team,
                    'profit_company' => $request->profit_company,
                    'tax' => $request->addTax ? $request->tax : '0',
                    'status' => $request->status,
                    'point' => $request->point,
                    'support_link' => $request->support_link,
                    'document' => $filePathFiltered,
                ]);
                $bill = NotificationBill::create([
                    'project_id' => $project->id,
                    'client_id' => $project->client_id,
                    'pic_id' => $project->pic_id,
                    'start_date' => $project->deadline,
                    'due_date' => Carbon::parse($project->deadline)->addMonth(1)
                ]);
                DB::commit();
            } catch (Exception $th) {
                DB::rollBack();
            }
        } else {
            $project = Project::create([
                'client_id' => $request->client_id,
                'pic_id' => $request->pic_id,
                'name' => $request->name,
                'type' => $request->type,
                'start_project' => $request->start_project,
                'deadline' => $request->deadline,
                'project_value' => $request->project_value,
                'monthly_fee' => $request->type === 'ONE TIME' ? 0 : $request->monthly_fee,
                'estimation' => $request->estimation,
                'accomodation' => $request->accomodation,
                'profit_team' => $request->profit_team,
                'profit_company' => $request->profit_company,
                'tax' => $request->addTax ? $request->tax : '0',
                'status' => $request->status,
                'point' => $request->point,
                'support_link' => $request->support_link,
                'document' => $filePathFiltered,
            ]);
        }
        return response()->json([
            'success' => true,
            'message' => 'Success Add New Project',
            'data' => $project
        ]);
    }

    public function update(Request $request, $id)
    {
        // dd($request->all());
        $project = Project::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'document' => 'mimes:pdf,docx,doc,zip|max:10240',
        ]);
        if ($validator->fails())
            return response()->json($validator->errors(), 400);
        $file = $request->file('document');
        $file ? $fileName = time() . $file->getClientOriginalName() : "";
        if (file_exists(public_path() . '/' . $project->document) && $file) {
            File::delete(public_path() . '/' . $project->document);
        }
        if ($file !== null) {
            $filePath = $file->storeAs('public/documents', $fileName);
            $filePathFiltered = str_replace('public', 'storage', $filePath);
        } else {
            $filePathFiltered = 'storage/documents/' . $request->file('document');
        }
        $project->update([
            'client_id' => $request->client_id,
            'pic_id' => $request->pic_id,
            'name' => $request->name,
            'type' => $request->type,
            'start_project' => $request->start_project,
            'deadline' => $request->deadline,
            'project_value' => $request->project_value,
            'monthly_fee' => $request->type === 'ONE TIME' ? 0 : $request->monthly_fee,
            'estimation' => $request->estimation,
            'accomodation' => $request->accomodation,
            'profit_team' => $request->profit_team,
            'profit_company' => $request->profit_company,
            'tax' => $request->addTax ? $request->tax : '0',
            'status' => $request->status,
            'point' => $request->point,
            'support_link' => $request->support_link,
            'document' => $filePathFiltered,
        ]);
        if ($request->type === 'MONTHLY') {
            $billFound = NotificationBill::onlyTrashed()->where('project_id', $id)->first();
            $billExist = NotificationBill::where('project_id', $id)->first();
            // dd($billFound);
            if ($billFound) {
                $billFound->restore();
            } else if (!$billExist) {
                $bill = NotificationBill::create([
                    'project_id' => $project->id,
                    'client_id' => $project->client_id,
                    'pic_id' => $project->pic_id,
                    'start_date' => $project->deadline,
                    'due_date' => Carbon::parse($project->deadline)->addMonth(1)
                ]);
            }
        } elseif ($request->type === 'ONE TIME') {
            $bill = NotificationBill::where('project_id', $project->id);
            $bill->delete();
        }
        // dd($project);
        return response()->json([
            'success' => true,
            'message' => 'Success Update Existing Project',
            'data' => $project
        ], Response::HTTP_OK);
    }


    public function destroy($id)
    {
        DB::beginTransaction();
        try {
            $project = Project::findOrFail($id);
            if (file_exists(public_path() . '/' . $project->document)) {
                File::delete(public_path() . '/' . $project->document);
            }
            $bill = NotificationBill::where('project_id', $project->id);
            $bill->delete();
            $project->delete();
            $team = ProjectTeam::where('project_id', $id);
            $team->delete();
            $additionalCost = AdditionalCost::where('project_id', $id);
            $additionalCost->delete();
            DB::commit();
            return response()->json([
                'success' => true,
                "message" => "Successfully deleted project with team members",
                "data" => [
                    "project" => $project,
                    "team" => $team,
                    "additional_cost" => $additionalCost,
                ]
            ], Response::HTTP_ACCEPTED);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => true,
                "message" => "Failed deleted project with team members",
                "data" => null,
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
    public function projectWithAddlCost($id)
    {
        // $project = Project::findOrFail($id);
        $costs = AdditionalCost::where('project_id', $id)->get();
        // dd($costs);

        return response()->json([
            'success' => true,
            'message' => 'Retrieve project with addl costs',
            'data' => $costs
        ]);
    }
}
