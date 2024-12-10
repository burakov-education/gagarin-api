<?php

namespace App\Http\Controllers;

use App\Http\Requests\LunarMissionRequest;
use App\Http\Resources\LunarMissionResource;
use App\Models\LunarMission;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Http\Response;

class LunarMissionController extends Controller
{
    /**
     * Create lunar mission
     *
     * @param LunarMissionRequest $request
     * @return JsonResponse
     */
    public function store(LunarMissionRequest $request): JsonResponse
    {
        auth()->user()->lunarMissions()->create($request->validated('mission'));

        return response()->json([
            'data' => [
                'code' => 201,
                'message' => 'Миссия добавлена',
            ],
        ], 201);
    }

    /**
     * Get user's lunar missions
     *
     * @return AnonymousResourceCollection
     */
    public function index(): AnonymousResourceCollection
    {
//        all
//        $missions = LunarMission::query()->get();

        return LunarMissionResource::collection(auth()->user()->lunarMissions);
    }

    /**
     * Delete mission
     *
     * @param LunarMission $mission
     * @return Response
     */
    public function delete(LunarMission $mission): Response
    {
        $mission->delete();

        return response()->noContent();
    }

    /**
     * Update mission
     *
     * @param LunarMission $mission
     * @param LunarMissionRequest $request
     * @return array[]
     */
    public function update(LunarMission $mission, LunarMissionRequest $request): array
    {
        $mission->update($request->validated('mission'));

        return [
            'data' => [
                'code' => 200,
                'message' => 'Миссия обновлена',
            ],
        ];
    }
}
