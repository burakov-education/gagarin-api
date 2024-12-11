<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property $id
 * @property $flight_number
 * @property $destination
 * @property $launch_date
 * @property $seats_available
 *
 * @property-read $free_seats_count
 *
 * @property-read array<SpaceFlightBook> $books
 */
class SpaceFlight extends Model
{
    protected $fillable = [
        'flight_number',
        'destination',
        'launch_date',
        'seats_available',
    ];

    /**
     * Get books
     *
     * @return HasMany
     */
    public function books(): HasMany
    {
        return $this->hasMany(SpaceFlightBook::class, 'flight_id', 'id');
    }

    /**
     * Get free seats count
     *
     * @return Attribute
     */
    public function freeSeatsCount(): Attribute
    {
        return Attribute::get(function () {
            return $this->seats_available - $this->books()->count();
        });
    }
}
