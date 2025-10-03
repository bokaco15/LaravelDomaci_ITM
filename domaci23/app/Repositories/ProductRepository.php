<?php

namespace App\Repositories;

use App\Models\Products;

class ProductRepository
{

    // DI - Dependency injection

    private $productModel;

    public function __construct()
    {
        $this->productModel = new Products();
    }

    public function test()
    {
        dd("123123123");
    }

    public function getProductById($id)
    {
        return $this->productModel::where('id', $id)->first();
    }

    public function createProduct($request)
    {
//        dd($request->all());
        $this->productModel->create([
            'name'=>$request->get('name'),
            'description'=>$request->get('description'),
            'amount'=>$request->get('amount'),
            'price'=>$request->get('price'),
            'image'=>$request->get('image'),
        ]);
    }

    public function updateProduct($request, $product)
    {
        $request->validate([
            'name'=>'required|max:64|string|',
            'description'=>'required|string',
            'amount'=>'required|integer|min:1',
            'price'=>'required|integer|min:1',
            'image'=>''
        ]);


        $product['name'] = $request->get('name');
        $product['description'] = $request->get('description');
        $product['amount'] = $request->get('amount');
        $product['price'] = $request->get('price');
        $product['image'] = $request->get('image');

        $product->save();
    }

}
