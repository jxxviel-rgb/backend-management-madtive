<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;

use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;


class VerifyEmailController extends Controller
{
    public function verify($id, Request $request)
    {
        if (!$request->hasValidSignature()) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid/Expired URL',
                'data' => null
            ], Response::HTTP_UNAUTHORIZED);
        }
        $user = User::findOrFail($id);
        if (!$user->hasVerifiedEmail()) {
            $user->markEmailAsVerified();
        }
        if ($user->hasVerifiedEmail()) {
            return redirect()->to('http://localhost:3000/admin/dashboard');
        }
        return response()->json([
            'success' => true,
            'message' => 'Verification successfull',
            'data' => $user,
        ], Response::HTTP_OK);
    }
    public function kirimUlang(Request $request)
    {

        $request()->user()->sendEmailVerificationNotification();

        return [
            "status" => "Email sudah dikirim",
        ];
    }
}
