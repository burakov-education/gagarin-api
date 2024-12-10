<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GagarinFlight extends Model
{
    protected $casts = [
        'mission' => 'array',
        'landing' => 'array',
        'cosmonaut' => 'array',
    ];
}
