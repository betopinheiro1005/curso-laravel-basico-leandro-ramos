<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function comments()
    {
        // Um post tem vários comentários
        return $this->hasMany('App\Comment');
    }

    public function author()
    {
        // Um post pertence a um autor
        return $this->belongsTo('App\Author');
    }
}
