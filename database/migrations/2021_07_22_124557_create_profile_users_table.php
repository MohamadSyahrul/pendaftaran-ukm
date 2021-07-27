<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfileUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profile_users', function (Blueprint $table) {
            $table->id();
            $table->text('foto')->default('default.jpg');
            $table->string('nama')->nullable();
            $table->bigInteger('nim')->nullable();
            $table->bigInteger('no_tlp')->nullable();
            $table->string('alamat')->nullable();
            $table->string('angkatan')->nullable();
            $table->string('prodi')->nullable();
            $table->foreignId('id_user')->references('id')->on('users');
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
        Schema::dropIfExists('profile_users');
    }
}
