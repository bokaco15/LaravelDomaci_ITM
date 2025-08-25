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
        Schema::create('loans', function (Blueprint $table) {
            $table->id();

            //Book ID (FK)
            $table->unsignedBigInteger('book_id');
            $table->foreign('book_id')
                ->references('id')
                ->on('books')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            //Members ID (FK)
            $table->unsignedBigInteger('member_id');
            $table->foreign('member_id')
                ->references('id')
                ->on('members')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            //Loan date
            $table->date('loan_date');
            //Returned Date
            $table->date('return_date')->nullable();


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loans');
    }
};
