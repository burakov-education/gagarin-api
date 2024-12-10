<?php

namespace App\Http\Controllers;

use App\Models\GagarinFlight;

class GagarinController extends Controller
{
    /**
     * Get gagarin flights
     *
     * @return array
     */
    public function __invoke(): array
    {
        return [
            // SELECT mission, landing, cosmonaut FROM gagarin_flights
            'data' => GagarinFlight::query()->select(['mission', 'landing', 'cosmonaut'])->get(),
        ];
    }

//    public function __invoke()
//    {
//        return json_decode('{
//    "data": [
//        {
//            "mission": {
//                "name": "Восток 1",
//                "launch_details": {
//                    "launch_date": "1961-04-12",
//                    "launch_site": {
//                        "name": "Космодром Байконур",
//                        "location": {
//                            "latitude": 45.965,
//                            "longitude": 63.305
//                        }
//                    }
//                },
//                "flight_duration": {
//                    "hours": 1,
//                    "minutes": 48
//                },
//                "spacecraft": {
//                    "name": "Восток 3KA",
//                    "manufacturer": "OKB-1",
//                    "crew_capacity": 1
//                }
//            },
//            "landing": {
//                "date": "1961-04-12",
//                "site": {
//                    "name": "Смеловка",
//                    "country": "СССР",
//                    "coordinates": {
//                        "latitude": 51.27,
//                        "longitude": 45.997
//                    }
//                },
//                "details": {
//                    "parachute_landing": true,
//                    "mpc": 7
//                }
//            },
//            "cosmonaut": {
//                "name": "Юрий Гагарин",
//                "birthdate": "1934-03-09",
//                "rank": "Старший лейтенант",
//                "bio": {
//                    "early_life": "Родился в Клушино, Россия..",
//                    "career": "Отобран в отряд космонавтов в 1960 году...",
//                    "post_flight": "Стал международным героем.."
//                }
//            }
//        }
//    ]
//}');
//    }
}
