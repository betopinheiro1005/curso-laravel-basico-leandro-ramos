    @extends('layouts.app')
    @section('content')
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    @foreach ($posts as $post)
                        <div class="card-header">
                            <h3>{{ $post->title }} :: por {{ $post->author->user->name }}</h3>
                        </div>
                        <div class="card-body">
                            <p>
                                {{ substr($post->content, 0, 60) }}...
                                <a href="{{ action('PostController@show', $post->id) }}" title="Ler o post">Ler o post</a>
                            </p>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    @endsection