<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnggotaUkmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anggota_ukms', function (Blueprint $table) {
            $table->id();
            $table->integer('ukm_id');
            $table->string('status')->default('Belum Diterima');
            $table->string('foto')->default('default.jpg');
            $table->string('nama')->nullable();
            $table->bigInteger('nim')->nullable();
            $table->bigInteger('no_tlp')->nullable();
            $table->string('alamat')->nullable();
            $table->string('angkatan')->nullable();
            $table->string('prodi')->nullable();
            $table->string('divisi')->nullable();
            $table->date('tahun_masuk')->nullable();
            $table->date('tahun_selesai')->nullable();
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
        Schema::dropIfExists('anggota_ukms');
    }
}
