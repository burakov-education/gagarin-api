<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    protected $casts = [
        'data' => 'array',
    ];
}
