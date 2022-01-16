<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

use function PHPSTORM_META\type;
use function PHPUnit\Framework\isNull;

class EmployeeController extends Controller
{
    public function index()
    {
        $employees = User::with(['employee' => function ($employee) {
            $employee->orderByDesc('name');
        }])->where('id', '!=', auth('api')->id())->get();

        return response()->json([
            'success' => true,
            'message' => 'Retrieving All Data Employees',
            'data' => $employees
        ], 200);
    }

    public function show($id)
    {
        $employee = User::with('employee')->findOrFail($id);
        return response()->json([
            'success' => true,
            'message' => 'Retrieving Specific Employee',
            'data' => $employee
        ], 200);
    }


    public function store(Request $request)
    {
        $accountRecuired = $request->accountRecuired;
        // dd($accountRecuired);
        if ($accountRecuired) {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'position_id' => 'required',
                'phone_number' => 'required|unique:employees,phone_number',
                'address' => 'required',
                'salary' => 'required|integer',
                'email' => 'required|email|unique:users,email',
                'password' => 'required|min:8',
                'role' => 'required',
                'nik' => 'required',
                'gender' => 'required',
                'last_education' => 'required',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'position_id' => 'required',
                'phone_number' => 'required|unique:employees,phone_number',
                'address' => 'required',
                'salary' => 'required|integer',
                'email' => 'required|email|unique:users,email',
                'join_date' => 'required',
                'nik' => 'required',
                'gender' => 'required',
                'last_education' => 'required'
            ]);
        }
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        DB::beginTransaction();
        try {
            $dataInput = $request->all();
            $employee = Employee::create([
                'position_id' => $dataInput['position_id'],
                'name' => $dataInput['name'],
                'phone_number' => $dataInput['phone_number'],
                'address' => $dataInput['address'],
                'salary' => $dataInput['salary'],
                'join_date' => $dataInput['join_date'],
                'nik' => $dataInput['nik'],
                'gender' => $dataInput['gender'],
                'last_education' => $dataInput['last_education'],
            ]);
            $employeeId = $employee->id;
            if ($accountRecuired) {
                $user = User::create([
                    'employee_id' => $employeeId,
                    'email' => $dataInput['email'],
                    'password' => Hash::make($dataInput['password']),
                    'role' => $dataInput['role'],
                ]);
            } else {
                $user = User::create([
                    'employee_id' => $employeeId,
                    'email' => $dataInput['email'],
                ]);
            }

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'New employee successfully created',
                'data' => [
                    'employee' => $employee,
                    'user' => $user,
                ]
            ], 201);
        } catch (Exception $e) {
            DB::rollback();
            return response()->json([
                'success' => false,
                'message' => 'Failed create new employee',
                'data' => [
                    'employee' => null,
                    'user' => null,
                ]
            ], 409);
        }
    }

    public function update(Request $request, $id)
    {
        $accountRequired = $request->accountRequired;
        $user = User::findOrFail($id);
        $employeeId = $user->employee_id;
        if ($accountRequired) {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'position_id' => 'required',
                'phone_number' => 'required|unique:employees,phone_number,' . $employeeId,
                'address' => 'required',
                'salary' => 'required|integer',
                'email' => 'required|email|unique:users,email,' . $id,
                'role' => 'required',
                'gender' => 'required',
                'last_education' => 'required',
                'nik' => 'required',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'position_id' => 'required',
                'phone_number' => 'required|unique:employees,phone_number,' . $employeeId,
                'address' => 'required',
                'salary' => 'required|integer',
                'email' => 'required|email|unique:users,email,' . $id,
                'gender' => 'required',
                'last_education' => 'required',
                'nik' => 'required',
            ]);
        }
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }
        DB::beginTransaction();
        try {
            $employee = Employee::findOrFail($employeeId);
            $user->update([
                'role' => $request->role,
                'email' => $request->email,
            ]);
            $employee->update([
                'position_id' => $request->position_id,
                'name' => $request->name,
                'phone_number' => $request->phone_number,
                'address' => $request->address,
                'salary' => $request->salary,
                'nik' => $request->nik,
                'join_date' => $request->join_date,
                'gender' => $request->gender,
                'last_education' => $request->last_education,
            ]);
            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Success Updating Data Employee',
                'data' => $user
            ], 200);
        } catch (Exception $e) {
            DB::rollback();
            return response()->json([
                'success' => false,
                'message' => 'Failed Updating Data Employee',
                'data' => null
            ], 409);
        }
    }

    public function delete($id)
    {
        DB::beginTransaction();
        try {
            $user = User::findOrFail($id);
            $employee = Employee::where('id', $user->employee_id);
            $user->delete();
            $employee->delete();
            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Successfully delete employee',
                'data' => [
                    'employee' => $employee,
                    'user' => $user
                ]
            ], 200);
        } catch (Exception $e) {
            DB::rollback();
            return response()->json([
                'success' => false,
                'message' => 'Failed delete employee',
                'data' => [
                    'employee' => null,
                    'user' => null
                ]
            ], Response::HTTP_CONFLICT);
        }
    }
    public function employeeAvaibility(Request $request)
    {
        $ids = $request->ids;
        // dd(($request);
        $employee = Employee::whereNotIn('id', $ids)->get();
        return response()->json([
            'success' => true,
            'message' => 'Success get data',
            'data' => $employee
        ]);
    }
}
