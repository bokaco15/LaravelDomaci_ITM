<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddContactRequest;
use App\Http\Requests\UpdateContactRequest;
use App\Models\Contact;
use App\Repositories\ContactRepository;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    private $contactRepo;

    public function __construct()
    {
        $this->contactRepo = new ContactRepository();
    }
    public function addContact(AddContactRequest $request)
    {
        $this->contactRepo->addContact($request);
        return redirect('/admin/add-contact')->with('uspeh', 'Uspeno ste dodali kontakta');
    }

    public function allContacts()
    {
        $contacts = Contact::all();

        return view('allContacts', compact('contacts'));
    }

    public function deleteContact($id)
    {
        $contact = $this->contactRepo->getContactById($id);
        if($contact != null)
        {
            $contact->delete();
            return redirect('/admin/all-contacts')->with('uspeh', 'Uspesno si obrisao kontakta');
        }
        else
        {
            return redirect('/admin/all-contacts')->with('greska', 'Ovaj korisnik ne postoji!!!');
        }
    }

    public function edit($id)
    {
        $contact = Contact::findOrFail($id);
        return view('editContact', compact('contact'));
    }

    public function saveUpdate(UpdateContactRequest $request, $id)
    {
        $contact=$this->contactRepo->getContactById($id);
        $this->contactRepo->updateContact($request, $contact);
        return redirect()->route('allcontacts')->with('uspeh', "Uspesno ste azurirali kontakta {$contact['email']}");
    }

}
