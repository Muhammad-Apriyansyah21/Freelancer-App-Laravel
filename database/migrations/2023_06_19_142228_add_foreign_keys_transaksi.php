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
        Schema::table('transaksi', function (Blueprint $table) {
            $table->foreign('id_pembeli', 'fk_transaksi_to_pembeli')->references('id')->on('pembeli')->onUpdate('CASCADE')->onDelete('CASCADE');
            $table->foreign('id_barang', 'fk_transaksi_to_barang')->references('id')->on('barang')->onUpdate('CASCADE')->onDelete('CASCADE');
        });
    }

    /** 
     * Reverse the migrations.
     */
    public function down(): void 
    {
        Schema::table('transaksi', function (Blueprint $table) {
            //
        });
    }
};
