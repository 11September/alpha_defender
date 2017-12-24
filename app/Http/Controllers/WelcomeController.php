<?php

namespace App\Http\Controllers;

use Validator;
use App\Post;
use App\Person;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
        $posts = Post::where('status', '=', "PUBLISHED")->take(3)->latest()->orderBy('id', 'desc')->get();

        return view('welcome', compact('posts'));
    }

    public function contacts()
    {
        $persons = Person::orderBy('name', 'desc')->get();

        return view('contact', compact('persons'));
    }

    public function sendEmail(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required|min:3',
            'email' => 'required|email',
            'message' => 'required|min:5',
            'g-recaptcha-response' => 'required|captcha'
        ]);

        if ($validator->fails()) {
            return redirect('/contacts')
                ->withErrors($validator)
                ->withInput();
        } else {
            try{
                $message = $request->all();

                $to = 'sadok.metelyk@gmail.com';

                if(Voyager::setting('email_contact')){
                    $to = Voyager::setting('email_contact');
                }

                $result = \Mail::to($to)->send(new ContactForm($message));

//                \Mail::to($request->email)->send(new ContactUs($message));
//
//                $contact = new Contact;
//                $contact->name = $request->name;
//                $contact->email = $request->email;
//                $contact->phone = $request->phone;
//                $contact->message = $request->message;
//                $contact->save();
//
//                return response()->json('Ваше сообщение доставлено!');
            }
            catch (Exception $exception){
                $request->session()->flash('alert-success', 'Email not send!');

                return redirect()->back();
            }

            $request->session()->flash('alert-success', 'Email send successully!');

            return redirect()->back();
        }
    }

}
