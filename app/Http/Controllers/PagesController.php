<?php

namespace App\Http\Controllers;

use App\Page;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function page($page)
    {
        $page = Page::where('slug', $page)->where('status', 'ACTIVE')->first();
        if (!$page){
            return back();
        }

        return view('page', compact('page'));
    }
}
