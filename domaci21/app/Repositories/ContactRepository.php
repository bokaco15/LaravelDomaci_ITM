<?php

namespace App\Repositories;

use App\Models\Contact;

class ContactRepository
{

    private $contactModel;

    public function __construct()
    {
        $this->contactModel = new Contact();
    }

    public function addContact($request)
    {
        $this->contactModel->create([
            'email'=>$request->get('email'),
            'subject'=>$request->get('subject'),
            'message'=>$request->get('message'),
        ]);
    }

    public function getContactById($id)
    {
        return $this->contactModel->where('id',$id)->first();
    }

    /*
    public function test()
    {
        dd("123123");
    }
    */

}
