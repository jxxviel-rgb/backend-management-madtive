<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Client;
use App\Models\Pic;
use App\Models\Project;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class ClientController extends Controller
{
    public function index()
    {
        $clients = Client::with(['project', 'pic'])->get();

        if ($clients) {
            return response()->json([
                'success' => true,
                'message' => 'Retrieving All Data Clients',
                'data' => $clients,
            ], Response::HTTP_OK);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Clients Not Found.',
                'data' => null,
            ], Response::HTTP_NOT_FOUND);
        }
    }

    public function update(Request $request, $id)
    {
        $client = Client::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'company_name' => 'required',
            'address' => 'required',
            'company_email' => 'required|email|unique:clients,company_email,' . $id,
            'phone_number' => 'required|numeric|unique:clients,phone_number,' . $id,
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $client->update($request->all());

        if ($client) {
            return response()->json([
                'success' => true,
                'message' => 'Successfuly updating client',
                'data' => $client,
            ], Response::HTTP_OK);
        } else {
            return response()->json([
                'success' => true,
                'message' => 'Failed updating client',
                'data' => null,
            ], Response::HTTP_BAD_REQUEST);
        }
    }
    public function show($id)
    {
        $client = Client::with(['project', 'pic'])->findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Successfull Retrieving Specific Client',
            'data' => $client,
        ]);
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'company_name' => 'required',
            'address' => 'required',
            'company_email' => 'required|email|unique:clients,company_email',
            'phone_number' => 'required|unique:clients,phone_number',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $client = Client::create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Successfully Add New Client',
            'data' => $client,
        ]);
    }
    public function destroy($id)
    {
        DB::beginTransaction();
        try {
            $client = Client::findOrFail($id);
            $client->delete();
            $project = Project::where('client_id', $id);
            $project->delete();
            $pics = Pic::with('client')->where('client_id', $id);
            $pics->delete();
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Successfully deleted client and all project',
                'data' => [
                    'client' => $client,
                    'projects' => $project,
                ],
            ], Response::HTTP_OK);
        } catch (Exception $e) {
            DB::rollback();
            return response()->json([
                'success' => true,
                'message' => 'Failed delete client and all project',
                'data' => [
                    'client' => $client,
                    'projects' => $project,
                ],
            ], Response::HTTP_BAD_REQUEST);
        }
    }
    public function showPicsClient($id)
    {
        $pics = Pic::with('client')->where("client_id", $id)->get();
        return response()->json([
            'success' => true,
            'message' => 'Retrieving Specific Pics Client',
            'data' => $pics,
        ], Response::HTTP_OK);
    }
}
