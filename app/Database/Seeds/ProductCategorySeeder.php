<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ProductCategorySeeder extends Seeder
{
public function run()
{
$categories = ['Laptop', 'Printer'];

$products = $this->db->table('product')->select('id')->get()->getResult();

foreach ($products as $product) {
$this->db->table('product_category')->insert([
'id' => $product->id,
'kategori' => $categories[array_rand($categories)],
]);
}
}
}