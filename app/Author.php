<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    public function posts()
    {
    	// Um autor tem muitos posts
        return $this->hasMany('App\Post');
    }
    public function comments()
    {
     	// Um autor tem muitos comentários, passando pelos posts
        return $this->hasManyThrough('App\Comment', 'App\Post');
    }

    public function user()
    {
        // Um autor pertence a um user
        return $this->belongsTo('App\User');
    }

}
