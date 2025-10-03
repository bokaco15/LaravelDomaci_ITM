<?php

namespace App\Http\Controllers;

use App\Http\Requests\CartAddRequest;
use App\Models\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ShoppingCartController extends Controller
{
    public function index()
    {
        if(!Session::has('amount')) {
            return redirect()->back();
        }
        return view('cart', [
            'cart'=>Session::get('product')
        ]);
    }

    public function add(CartAddRequest $request)
    {
//        $cart = Session::get('product');
//
//        if (isset($cart[$request->id])) {
//            $cart[$request->id] += $request->amount;
//        } else {
//            $cart[$request->id] = $request->amount;
//        }
//
//        Session::put('product', $cart);
//        Session::forget('product');

        $product = Products::find($request->id);
        if((int)$request->amount > (int)$product->amount)
        {
            dd("GRESKA");
        }
        else
        {
        Session::push('product', [
            'product_id'=>$request->id,
            'product_name'=>$product->name,
            'amount'=>$request->amount,
        ]);

        return redirect(route('cart.all'));
//        dd(Session::get('amount'));
        }
    }
}
