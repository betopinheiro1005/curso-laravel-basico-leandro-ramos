<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PostController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    // public function index()
    // {
    //     $posts = Post::all();
    //     return view('posts.index', compact('posts'));
    // }

    public function index()
    {
        $posts = Post::orderBy('created_at', 'desc')->get();
        return view('posts.index', compact('posts'));
    }

    public function create()
    {
        return view('posts.create');
    }

    public function store(Request $request)
    {
        $post = new Post;

        $post->title        = $request->title;
        $post->content      = $request->content;
        $post->author_id    = decrypt($request->author_id);

        $post->save();
        $request->session()->flash('alert-success', 'Post criado com sucesso!');
        return redirect()->route('posts.index');
    }

    public function show(Post $post)
    {
        return view('posts.show', compact('post'));
    }    

    
//     public function show(Post $post)
//     {
//         $author = $post->author->name;

//         $text = <<<TEXT
//         ID:         $post->id
//         Title:      $post->title
//         Content:    $post->content
//         Author:     $author
// TEXT;
//         // A marca do fim do heredoc (TEXT;) deve ficar na coluna zero da linha.
//         // ou teremos um erro - Unexpected end of file
//         return "<pre>$text</pre>";
//     }

    public function edit(Post $post)
    {
        $action = action('PostController@update', $post->id);

        return view('posts.edit', compact('post', "action"));
    }

    public function update(Request $request, Post $post)
    {
        $post->title        = $request->title;
        $post->content      = $request->content;

        $post->save();
        $request->session()->flash('alert-success', 'Post alterado com sucesso!');
        return redirect("authors/$post->author_id/posts");
    }

    public function destroy(Request $request, Post $post)
    {
        $post->delete();
        $request->session()->flash('alert-success', 'Post apagado com sucesso!');
        return redirect()->back();
    }
}
