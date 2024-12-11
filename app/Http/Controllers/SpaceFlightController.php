<?php

namespace App\Http\Controllers;

use App\Http\Requests\SpaceFlightRequest;
use App\Models\SpaceFlight;
use Illuminate\Http\JsonResponse;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class SpaceFlightController extends Controller
{
    /**
     * Create space flight
     *
     * @param SpaceFlightRequest $request
     * @return JsonResponse
     */
    public function store(SpaceFlightRequest $request): JsonResponse
    {
        SpaceFlight::query()->create($request->validated());

        return response()->json([
            'data' => [
                'code' => 201,
                'message' => 'Космический полет создан',
            ],
        ], 201);
    }

    /**
     * Get space flights
     *
     * @return array
     */
    public function index(): array
    {
        return [
            'data' => SpaceFlight::query()->get()->map(function (SpaceFlight $flight) {
                return [
                    'flight_number' => $flight->flight_number,
                    'destination' => $flight->destination,
                    'launch_date' => $flight->launch_date,
                    'seats_available' => $flight->free_seats_count,
                ];
            }),
        ];
    }

    /**
     * Book space flight
     *
     * @return JsonResponse
     */
    public function book(): JsonResponse
    {
        request()->validate([
            'flight_number' => 'required',
        ]);

        $flight = SpaceFlight::query()
            ->where('flight_number', \request()->input('flight_number'))
            ->first();

        if (!$flight) {
            throw new NotFoundHttpException();
        }

        if ($flight->free_seats_count <= 0) {
            throw new AccessDeniedHttpException();
        }

        // $flight->seats_available = $flight->seats_available - 1;
//        $flight->seats_available -= 1;
//        $flight->save();

        $flight->books()->create([
            'user_id' => auth()->id(),
        ]);

        return response()->json([
            'data' => [
                'code' => 201,
                'message' => 'Рейс забронирован',
            ],
        ], 201);
    }
}
