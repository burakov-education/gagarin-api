<?php

namespace App\Http\Requests;

use App\Rules\FirstLetterRule;
use Illuminate\Foundation\Http\FormRequest;

class LunarMissionRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'mission.name' => [
                'required',
                'max:255',
                new FirstLetterRule(),
            ],
            'mission.launch_details.launch_date' => 'required|date_format:Y-m-d',
            'mission.launch_details.launch_site.name' => 'required',
            'mission.launch_details.launch_site.location.latitude' => [
                'required',
                function ($attribute, $value, $fail) {
                    $this->validateLatitude($value, $fail);
                },
            ],
            'mission.launch_details.launch_site.location.longitude' => [
                'required',
                function ($attribute, $value, $fail) {
                    $this->validateLongitude($value, $fail);
                },
            ],
            'mission.landing_details.landing_date' => 'required|date_format:Y-m-d',
            'mission.landing_details.landing_site.name' => 'required',
            'mission.landing_details.landing_site.coordinates.latitude' => [
                'required',
                function ($attribute, $value, $fail) {
                    $this->validateLatitude($value, $fail);
                },
            ],
            'mission.landing_details.landing_site.coordinates.longitude' => [
                'required',
                function ($attribute, $value, $fail) {
                    $this->validateLongitude($value, $fail);
                },
            ],
            'mission.spacecraft.command_module' => 'required',
            'mission.spacecraft.lunar_module' => 'required',
            'mission.spacecraft.crew' => 'required|array|min:1',
            'mission.spacecraft.crew.*.name' => 'required',
            'mission.spacecraft.crew.*.role' => 'required',
        ];
    }

    /**
     * Validate latitude
     *
     * @param $value
     * @param $fail
     * @return void
     */
    private function validateLatitude($value, $fail): void
    {
        $value = (float) $value;

        if ($value < -90 || $value > 90) {
            $fail('Ошибка');
        }
    }

    /**
     * Validate longitude
     *
     * @param $value
     * @param $fail
     * @return void
     */
    private function validateLongitude($value, $fail): void
    {
        $value = (float) $value;

        if ($value < -180 || $value > 180) {
            $fail('Ошибка');
        }
    }
}
