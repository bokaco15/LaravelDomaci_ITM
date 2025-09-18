<?php

namespace App\Http\Controllers;

use App\Models\items;
use Illuminate\Http\Request;

class itemsController extends Controller
{
    public function show()
    {
        $items=items::all();
//        dd($items);
        return view('allItems', ['items'=>$items]);
    }

    public function deleteItem(items $item)
    {
        $item->delete();
        return redirect()->route('allItems')->with('success', "uspesno ste obrisali item: {$item->id}");
    }

    public function editItem(items $item)
    {
//
        return view('editItem', compact('item'));
    }

    public function updateItem(Request $request, items $item)
    {
//        dd($request->all());
        $item->item = $request->get('item');
        $item->save();

        return redirect()->route('allItems');
    }

    public function addItem()
    {

    }
}
