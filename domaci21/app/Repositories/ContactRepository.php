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

    public function test()
    {
        dd("123123");
    }

}
