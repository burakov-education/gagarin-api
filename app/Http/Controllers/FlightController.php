<?php

namespace App\Http\Controllers;

use App\Models\Flight;

class FlightController extends Controller
{
    /**
     * Get flights
     *
     * @return array
     */
    public function __invoke(): array
    {
        return [
//            'data' => Flight::query()->select('data')->get()->map(function (Flight $flight) {
//                return $flight->data;
//            }),
            'data' => Flight::query()->select('data')->get()->map->data,
        ];
    }

//    public function __invoke()
//    {
//        return json_decode('{
//    "data": [ {
//        "name": " Apollo-11",
//        "crew_capacity": 3,
//        "cosmonaut": [
//            {
//                "name": "Neil Armstrong ",
//                "role": "Commander "
//            },
//            {
//                "name": "Buzz Aldrin",
//                "role": "Lunar module pilot "
//            },
//            {
//                "name": "Michael Collins",
//                "role": "Command Module Pilot"
//            }
//        ],
//        "launch_details": {
//            "launch_date": "1969-07-16",
//            "launch_site": {
//                "name": "Kennedy Space Center",
//                "latitude": 28.5721000,
//                "longitude": -80.6480000
//            }
//        },
//        "landing_details": {
//            "landing_date": "1969-07-20",
//            "landing_site": {
//                "name": "Sea of tranquility",
//                "latitude": 0.6740000,
//                "longitude": 23.4720000
//            }
//        }
//    }
//]}');
//    }
}
