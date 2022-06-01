<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PerusahaanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('perusahaans')->insert([
            'nama' => 'Sari Roti',
            'notelpon' => '081576897665',
            'alamat' => 'Bekasi',
        ]);
    }
}
