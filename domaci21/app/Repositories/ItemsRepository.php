<?php

namespace App\Repositories;

use App\Models\items;

class ItemsRepository
{
    protected $itemModel;

    public function __construct()
    {
        $this->itemModel = new items();
    }

    public function updateItem($request, $item)
    {
        $item->item = $request->get('item');
        $item->save();
    }

    public function addItem($request)
    {
        $this->itemModel->create(['item'=>$request->get('item')]);
    }

}
