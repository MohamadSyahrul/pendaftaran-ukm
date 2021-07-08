<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbUkmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_ukm', function (Blueprint $table) {
            $table->id();
            $table->string('ukm');
            $table->text('keterangan');
            $table->text('foto')->nullable();
            $table->text('foto1')->nullable();
            $table->text('logo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_ukm');
    }
}
