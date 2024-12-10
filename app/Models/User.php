<?php

namespace App\Models;

use Database\Factories\UserFactory;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

/**
 * @property $id
 * @property $first_name
 * @property $last_name
 * @property $patronymic
 * @property $birth_date
 * @property $email
 * @property $password
 * @property $full_name
 *
 * @property-read array<LunarMission> $lunarMissions
 */
class User extends Authenticatable
{
    /** @use HasFactory<UserFactory> */
    use HasFactory, Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'patronymic',
        'birth_date',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'password' => 'hashed',
        ];
    }

    /**
     * Get user's lunar missions
     *
     * @return HasMany
     */
    public function lunarMissions(): HasMany
    {
        return $this->hasMany(LunarMission::class, 'user_id', 'id');
    }

    /**
     * Get full_name attribute
     *
     * @return Attribute
     */
    public function fullName(): Attribute
    {
        return Attribute::get(fn () => $this->last_name . ' ' . $this->first_name . ' ' . $this->patronymic);
    }
}
