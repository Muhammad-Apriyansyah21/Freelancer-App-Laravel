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
        Schema::create('transaksi', function (Blueprint $table) {
            $table->id();
            // $table->integer('id_barang')->nullable();
            $table->foreignId('id_barang')->nullable()->index('fk_transaksi_to_barang'); 
            // $table->integer('id_pembeli')->nullable();
            $table->foreignId('id_pembeli')->nullable()->index('fk_transaksi_to_pembeli'); 
            $table->timestamp('date')->nullable();
            $table->longText('keterangan')->nullable();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transaksi');
    }
}; 
