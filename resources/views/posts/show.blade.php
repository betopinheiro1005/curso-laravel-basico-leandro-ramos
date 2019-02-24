@extends('layouts.app')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card card-default">

                <div class="flash-message">
                    @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                        @if(Session::has('alert-' . $msg))

                        <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="fechar">&times;</a></p>
                        @endif
                    @endforeach
                </div>
            
                <div class="card-header">
                    <h3>{{ $post->title }} :: <small>por {{ $post->author->user->name }}</small></h3>
                </div>
                <div class="card-body">
                    <p>
                        {{ $post->content }}
                    </p>
                    <h4>Comentários:</h4>
                    <!-- Comentários do post -->
                    @foreach($post->comments as $comment)
                        <div class="card card-default">
                            <div class="card-header">
                                {{ $comment->author_email }}
                            </div>
                            <div class="card-body">
                                {{ $comment->content }}
                                @if (Auth::check() && Auth::user()->author->id == $post->author_id)
                                    <form method="post" action="{{ action('CommentController@destroy', $comment->id) }}">
                                        {{ csrf_field() }}
                                        {{ method_field('delete') }}
                                        <button type="submit" class="btn btn-danger delete-button" onclick="return confirm('Tem certeza?');")>Apagar Comentário</button>
                                    </form>
                                @endif
                            </div>
                        </div>
                        <br>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection