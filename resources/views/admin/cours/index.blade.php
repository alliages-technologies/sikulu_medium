<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cours</title>
</head>
<body>
    <h1>Les Cours</h1>
    <p>
        <a href="/">Accueil</a>
    </p>
    <p>
        <a href="{{ route('cours.create') }}">Nouveau cours</a>
    </p>
    <ol>
        @foreach ($cours as $cours)
            <li>
                <p>
                    <a href="{{ route('cours.show', ['cours' => $cours]) }}">{{ $cours->matter->name }} {{ $cours->coefficient }}</a>
                </p>
                <p>
                    <button>
                        <a href="{{ route('cours.edit', ['cours' => $cours]) }}">Modifier</a>
                    </button>

                    @if ($cours->active == 1)
                         <form action="{{ route('cours.disable', ['cours' =>$cours]) }}" method="post">
                            @csrf
                            <input type="submit" value="desactiver">
                        </form>
                    @else
                        <form action="{{ route('cours.enable', ['cours' =>$cours]) }}" method="post">
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