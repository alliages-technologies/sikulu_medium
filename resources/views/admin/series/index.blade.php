<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Series</title>
</head>
<body>
    <h1>Les Series</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('serie.create') }}">Nouvelle serie</a>
    </p>
    <ol>
        @foreach ($series as $serie)
            <li>
                <p>
                    <a href="{{ route('serie.show', ['serie' => $serie]) }}">{{$serie->name}}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('serie.edit', ['serie' => $serie]) }}">Modifier</a>
                    </button>
                    
                    @if ($serie->active == 1)
                         <form action="{{ route('serie.disable', ['serie' =>$serie]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('serie.enable', ['serie' =>$serie]) }}" method="post">
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