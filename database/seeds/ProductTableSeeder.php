<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $product = new \App\Product(['imagePath' => 'http://www.greenmoxie.com/wp/wp-content/uploads/Homemade-paper-580x400.jpg','title' => 'Papergrass 3','description' => 'Terbuat dari bahan dasar rumput yang diolah sedemikian rupa untuk dibuat menjadi kertas alternatif yang digunakan untuk sebagai hiasan,cover,dll','price' => 35000]);

        $product->save();
    }
}
