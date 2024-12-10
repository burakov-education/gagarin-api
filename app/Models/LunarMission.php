<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * @property $id
 * @property $user_id
 * @property $name
 * @property $launch_details
 * @property $landing_details
 * @property $spacecraft
 */
class LunarMission extends Model
{
    protected $fillable = [
        'user_id',
        'name',
        'launch_details',
        'landing_details',
        'spacecraft',
    ];

    protected $casts = [
        'launch_details' => 'array',
        'landing_details' => 'array',
        'spacecraft' => 'array',
    ];

    /**
     * Get author
     *
     * @return HasOne
     */
    public function user(): HasOne
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
