<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Repositories\ContactRepository;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    private $contactRepo;

    public function __construct()
    {
        $this->contactRepo = new ContactRepository();
//        $this->contactRepo->test();
    }
    public function addContact(Request $request)
    {
        $validation=$request->validate([
           'email'=>'required|string|max:64',
           'subject'=>'string',
            'message'=> 'required|string'
        ]);
//        dd($request->all());
        Contact::create($validation);

        return redirect('/admin/add-contact')->with('uspeh', 'Uspeno ste dodali kontakta');
    }

    public function allContacts()
    {
        $contacts = Contact::all();

        return view('allContacts', compact('contacts'));
    }

    public function deleteContact($id)
    {
        /*
        $url = route('contact.delete', ['id'=>$id]);
        dd($url);
        */
//      dd($id);
        $contact = Contact::where(['id'=>$id])->first();
//      dd($contact);
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
        //$contact = Contact::where(['id'=>$id])->first();
        $contact = Contact::findOrFail($id);
//        dd($contact);
        return view('editContact', compact('contact'));
    }

    public function saveUpdate(Request $request, $id)
    {
//        $contact = Contact::where(['id'=>$id])->first();
        $contact=Contact::findOrFail($id);
        $request->validate([
            'email'=>'required|string|max:64',
            'subject'=>'string',
            'message'=> 'required|string'
        ]);

        $contact['email']=$request->get('email');
        $contact['subject']=$request->get('subject');
        $contact['message']=$request->get('message');
        $contact->save();

        return redirect()->route('allcontacts')->with('uspeh', "Uspesno ste azurirali kontakta {$contact['email']}");

    }

}
