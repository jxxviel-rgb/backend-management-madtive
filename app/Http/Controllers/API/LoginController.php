<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Response;

class LoginController extends Controller
{
    public function login(Request $request)
    {

        $messages = [
            'email.required' => 'Email tidak boleh kosong',
            'email.email' => 'Harap masukan email yang benar',
            'password.required' => 'Password tidak boleh kosong',
        ];
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ], $messages);

        if ($validator->fails()) {
            return response()->json($validator->errors(), Response::HTTP_BAD_REQUEST);
        }

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Login Failed!',
            ]);
        }

        return response()->json([
            'success' => true,
            'message' => 'Login Success!',
            'data'    => $user,
            'token'   => $user->createToken('authToken')->accessToken
        ]);
    }


    public function logout(Request $request)
    {
        $removeToken = $request->user()->token()->delete();
        if ($removeToken) {
            return response()->json([
                'success' => true,
                'message' => 'Logout Success'
            ]);
        }
    }
}
