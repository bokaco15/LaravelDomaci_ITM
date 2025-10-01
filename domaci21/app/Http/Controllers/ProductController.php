<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveProductRequest;
use App\Models\Products;
use App\Repositories\ProductRepository;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    private $productRepo;

    public function __construct()
    {
        $this->productRepo = new ProductRepository();
//        $this->productRepo->test();
    }

    public function index()
    {
        return view('addProduct');
    }

    public function addProductToDB(SaveProductRequest $request)
    {
        $this->productRepo->createProduct($request);

        return redirect('/admin/show-products')->with('success', 'Uspesno ste dodali proizvod');

    }

    public function show()
    {
        $products=Products::all();
//        dd($products);
//        dd($this->productRepo->test());
        return view('showProducts', compact('products'));
    }

    public function delete($product)
    {

        $singleProduct=$this->productRepo->getProductById($product);

//        dd($singleProduct);

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
        $product = $this->productRepo->getProductById($id);
        $this->productRepo->updateProduct($request, $product);

        return redirect()->route('showAllProducts')->with('success', 'Uspesno ste azurirali Vas Proizvid');

    }

}
