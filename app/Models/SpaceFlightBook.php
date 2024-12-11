<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property $id
 * @property $user_id
 * @property $flight_id
 */
class SpaceFlightBook extends Model
{
    protected $fillable = [
        'user_id',
        'flight_id',
    ];
}
