<?php

namespace App\Http\Controllers;

use App\Author;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class AuthorController extends Controller
{

    public function posts(Author $author)
    {
        $posts = $author->posts;
        return view('authors.posts', compact('posts'));
    }
    
    public function index()
    {
        //$authors = json_encode(Author::all(), JSON_PRETTY_PRINT);
        $authors = Author::join('posts', 'posts.author_id', '=', 'authors.id')
            ->groupBy('authors.id')
            ->get([
                'authors.id',
                'authors.name',
                'authors.email',
                DB::raw('count(posts.id) as posts')
            ]
        );

        $authors = json_encode($authors, JSON_PRETTY_PRINT);

        return "<pre>$authors</pre>";
    }
    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        //
    }
    public function show(Author $author)
    {
        $posts = $author->posts->count();

        $text = <<<TEXT
        ID:     $author->id
        Name:   $author->name
        E-mail: $author->email
        Bio:    $author->bio
        Posts:  $posts
TEXT;
        /* A marca de fim do heredoc (TEXT;)
           deve ficar na coluna zero da linha */

        return "<pre>$text</pre>";
    }
    public function edit(Post $post)
    {
        //
    }
    public function update(Request $request, $id)
    {
        //
    }
    public function destroy($id)
    {
        //
    }

    /**
     * Redirect logged author to posts
     *
     * @param \App\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function login()
    {
        $author = \Auth::user()->author;
        $posts = $author->posts;
        return view('authors.posts', compact('posts'));
    }
    
}
