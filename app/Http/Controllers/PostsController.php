<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index()
    {
        $featured = Post::where('featured', 1)->first();

        $posts = Post::where('status', '=', "PUBLISHED")->paginate(1);

        return view('posts', compact('posts', 'featured'));
    }

    public function show(Post $post)
    {
        return view('post', compact('post'));
    }

    public function search(Request $request)
    {
        $searchQuery = $request->search;

        $posts = Post::where('excerpt', 'like', "%$searchQuery%")->where('status', '=', "PUBLISHED")->paginate(10);

        return view('posts', compact('posts'));
    }
}
