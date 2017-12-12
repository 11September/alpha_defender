<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index()
    {
        $posts = Post::where('status', '=', "PUBLISHED")->paginate(10);

        return view('posts', compact('posts'));
    }

    public function show(Post $post)
    {
        return view('post', compact('post'));
    }
}
