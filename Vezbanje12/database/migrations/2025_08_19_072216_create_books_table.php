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
        /*
         *  id
            title (UNIQUE)
            author_id (foreign key → Authors: id)
            published_at (datum objavljivanja)
        */
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->foreignId('author_id')->references('id')->on('authors')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('author_name');
            $table->string('title')->unique();
            $table->date('published_at');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
