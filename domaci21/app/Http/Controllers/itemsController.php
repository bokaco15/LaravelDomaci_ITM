<?php

namespace App\Http\Controllers;

use App\Models\items;
use App\Repositories\ItemsRepository;
use Illuminate\Http\Request;

class itemsController extends Controller
{
    private $itemsRepository;

    public function __construct()
    {
        $this->itemsRepository = new ItemsRepository();
    }
    public function show()
    {
        $items=items::all();
        return view('allItems', ['items'=>$items]);
    }

    public function deleteItem(items $item)
    {
        $item->delete();
        return redirect()->route('allItems')->with('success', "uspesno ste obrisali item: {$item->id}");
    }

    public function editItem(items $item)
    {
        return view('editItem', compact('item'));
    }

    public function updateItem(Request $request, items $item)
    {
        $this->itemsRepository->updateItem($request, $item);
        return redirect()->route('allItems');
    }

    public function addItem(Request $request)
    {
        $this->itemsRepository->addItem($request);
        return redirect()->route('allItems');
    }
}
