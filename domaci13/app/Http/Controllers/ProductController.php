<?php

namespace App\Http\Controllers;

use App\Models\Products;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return view('addProduct');
    }

    public function addProductToDB(Request $request)
    {
        $validate=$request->validate([
            'name'=>'required|max:64|string|unique:products',
            'description'=>'required|string',
            'amount'=>'required|integer|min:1',
            'price'=>'required|integer|min:1',
            'image'=>''
        ]);

        Products::create($validate);

        return redirect('/admin/show-products')->with('success', 'Uspesno ste dodali proizvod');

    }

    public function show()
    {
        $products=Products::all();
//        dd($products);
        return view('showProducts', compact('products'));
    }

    public function delete($product)
    {
        $singleProduct=Products::where([
           'id'=>$product
        ])->first();

        if($singleProduct!=null)
        {
            $singleProduct->delete();
            return redirect()->back()->with('success', 'Uspesno ste obrisali proizvod');
        }
        else
        {
            return redirect()->back()->with('error', 'Greska, ovaj proizvod ne postoji!!!');

        }
    }


    public function edit($id)
    {
//        $product = Products::where(['id'=>$id])->first();
        $product=Products::findOrFail($id);
        if($product!=null) {
            return view('editProduct', compact('product'));
        }
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name'=>'required|max:64|string|',
            'description'=>'required|string',
            'amount'=>'required|integer|min:1',
            'price'=>'required|integer|min:1',
            'image'=>''
        ]);

        $product = Products::findOrFail($id);
        $product['name'] = $request->get('name');
        $product['description'] = $request->get('description');
        $product['amount'] = $request->get('amount');
        $product['price'] = $request->get('price');
        $product['image'] = $request->get('image');

        $product->save();

        return redirect()->route('showAllProducts')->with('success', 'Uspesno ste azurirali Vas Proizvid');

    }

}
