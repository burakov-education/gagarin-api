<?php

namespace App\Policies;

use App\Models\LunarMission;
use App\Models\User;

class LunarMissionPolicy
{
    /**
     * Check access to manage mission
     *
     * @param User $user
     * @param LunarMission $mission
     * @return bool
     */
    public function manage(User $user, LunarMission $mission): bool
    {
        return $user->id === $mission->user_id;
    }
}
