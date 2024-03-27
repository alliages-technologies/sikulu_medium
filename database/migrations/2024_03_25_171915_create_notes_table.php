<?php

use App\Models\Education;
use App\Models\Inscription;
use App\Models\Evaluation;

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
        Schema::create('notes', function (Blueprint $table) {
            $table->id();
            $table->float('value');
            $table->foreignIdFor(Inscription::class);
            $table->foreignIdFor(Education::class);
            $table->foreignIdFor(Evaluation::class);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('notes');
    }
};
