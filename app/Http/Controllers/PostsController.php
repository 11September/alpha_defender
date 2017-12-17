<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index()
    {
        $featured = Post::where('featured', 1)->first();

        $posts = Post::where('status', '=', "PUBLISHED")->paginate(10);

        return view('posts', compact('posts', 'featured'));
    }

    public function show(Post $post)
    {
        $previous = Post::where('id', '<', $post->id)->max('id');

        $next = Post::where('id', '>', $post->id)->min('id');

        return view('post', compact('post', 'previous', 'next'));
    }

    public function search(Request $request)
    {
        $searchQuery = $request->search;

        if ($searchQuery == " " || $searchQuery == ""){
            return redirect('/posts');
        }

        $posts = Post::where('excerpt', 'like', "%$searchQuery%")
            ->orWhere('title', 'like' , "%$searchQuery%")
            ->orWhere('body', 'like' , "$searchQuery%")
            ->where('status', '=', "PUBLISHED")->paginate(10);

        return view('search', compact('posts'));
    }
}
