<?php

namespace App\Database\Seeds;
use CodeIgniter\Database\Seeder;
class ProductCategorySeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'username'  => 'arya123',
                'deskripsi' => 'Kategori tas ransel'
            ],
            [
                'username'  => 'therion77',
                'deskripsi' => 'Kategori tas selempang'
            ],
            [
                'username'  => 'nuki88',
                'deskripsi' => 'Kategori tas kerja'
            ],
        ];

        // Insert data ke dalam tabel product_category
        $this->db->table('product_category')->insertBatch($data);
    }
}
