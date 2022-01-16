<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class RegisterController extends Controller
{
    public function register(Request $request)
    {
        $messages = [
            'name.required' => 'Nama tidak boleh kosong.',
            'email.required' => 'Email tidak boleh kosong.',
            'email.unique' => 'Email sudah terdaftar.',
            'email.email' => 'Harap masukan email yang benar.',
            'password.required' => 'Password tidak boleh kosong.',
            'password.min' => 'Password min. 8 karakter.',
            'password_confirmation.required' => 'Konfirmasi password tidak boleh kosong.',
            'password.confirmed' => 'Password tidak cocok.',
            'phone_number.required' => 'Nomor telepon tidak boleh kosong.',
            'phone_number.unique' => 'Nomor telepon sudah terdaftar.'
        ];
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8|confirmed',
            'password_confirmation' => 'required|',
            'phone_number' => 'required|unique:employees'
        ], $messages);
        if ($validator->fails()) {
            return response()->json($validator->errors(), Response::HTTP_BAD_REQUEST);
        }
        DB::beginTransaction();
        try {
            $employee = Employee::create([
                'name' => $request->name,
                'phone_number' => $request->phone_number
            ]);
            $user = User::create([
                'employee_id' => $employee->id,
                'email' => $request->email,
                'password' => Hash::make($request->password),
            ]);
            // $user->sendEmailVerificationNotification();

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Register Success',
                'data' => [
                    'user' => $user,
                    'employees' => $employee
                ]
            ]);
        } catch (\Throwable $th) {
            DB::rollback();
            return response()->json([
                'success' => false,
                'message' => 'Register Failed',
                'data' => [
                    'user' => null,
                    'employees' => null
                ]
            ], Response::HTTP_CONFLICT);
        }
    }
}
