<?php

namespace App\Http\Controllers;

use App\Http\Requests\AuthRequest;
use App\Http\Requests\RegistrationRequest;
use App\Models\User;
use Illuminate\Http\JsonResponse;

class AuthController extends Controller
{
    /**
     * Registration
     *
     * @param RegistrationRequest $request
     * @return JsonResponse
     */
    public function registration(RegistrationRequest $request): JsonResponse
    {
        $user = User::query()->create($request->validated());

        return response()->json([
            'data' => [
                'user' => [
                    'name' => $user->full_name,
                    'email' => $user->email,
                ],
                'code' => 201,
                'message' => 'Пользователь создан',
            ],
        ], 201);
    }

    public function authorization(AuthRequest $request)
    {
        if (auth()->attempt($request->validated())) {
            /** @var User $user */
            $user = auth()->user();

            return response()->json([
                'data' => [
                    'user' => [
                        'id' => $user->id,
                        'name' => $user->full_name,
                        'birth_date' => $user->birth_date,
                        'email' => $user->email,
                    ],
                    'token' => '',
                ],
            ]);
        }

        return response()->json([
            'code' => 401,
            'message' => 'Login failed',
        ], 401);
    }
}
