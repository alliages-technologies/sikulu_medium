<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sites</title>
    </head>
    <body>
        <h1>Les Sites</h1>
        <p>
            <a href="/">Accueil</a>
        </p>
        <p>
            <a href="{{ route('site.create') }}">Nouveau site</a>
        </p>
        <ol>
            @foreach ($sites as $site)
                <li>
                    <p>
                        <a href="{{ route('site.show', ['site' => $site]) }}">{{$site->name}}</a>
                    </p>
                    <p>
                        <button>
                            <a href="{{ route('site.edit', ['site' => $site]) }}">Modifier</a>
                        </button>
                        @if ($site->active == 1)
                            <form action="{{ route('site.disable', ['site' =>$site]) }}" method="post">
                                @csrf
                                <input type="submit" value="desactiver">
                            </form>
                        @else
                            <form action="{{ route('site.enable', ['site' =>$site]) }}" method="post">
                                @csrf
                                <input type="submit" value="activer">
                            </form>
                        @endif
                    </p>
                </li>
            @endforeach
        </ol>
    </body>
</html>