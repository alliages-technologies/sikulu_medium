<?php

use App\Models\Classe;
use App\Models\Classroom;
use App\Models\Note;
use App\Models\Pupil;
use App\Models\Year;
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
        Schema::create('inscriptions', function (Blueprint $table) {
            $table->id();
            $table->decimal('amount')->default(2500);
            $table->foreignIdFor(Pupil::class);
            $table->foreignIdFor(Classe::class);
            $table->foreignIdFor(Note::class);
            $table->foreignIdFor(Classroom::class);
            $table->foreignIdFor(Year::class);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inscriptions');
    }
};
