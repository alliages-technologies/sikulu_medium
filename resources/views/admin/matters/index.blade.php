<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>matiere</title>
</head>
<body>
    <h1>Les matieres</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('matter.create') }}">Nouvelle matiere</a>
    </p>
    <ol>
        @foreach ($matters as $matter)
            <li>
                <p>
                    <a href="{{ route('matter.show', ['matter' => $matter]) }}">{{$matter->name}}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('matter.edit', ['matter' => $matter]) }}">Modifier</a>
                    </button>
                    
                    @if ($matter->active == 1)
                         <form action="{{ route('matter.disable', ['matter' =>$matter]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('matter.enable', ['matter' =>$matter]) }}" method="post">
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