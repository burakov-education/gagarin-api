<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('lunar_missions', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('launch_details');
            $table->text('landing_details');
            $table->text('spacecraft');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lunar_missions');
    }
};
