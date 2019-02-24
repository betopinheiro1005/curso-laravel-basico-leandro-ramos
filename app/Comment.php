<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function post()
    {
        // Um comentário pertence a um post
        return $this->belongsTo('App\Post');
    }
}
