<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Series</title>
</head>
<body>
    <h1>Creation</h1>
    <form action="{{ route('classe.store') }}" method="post">
        @csrf
        <p>
            <label for="level_id" class="form-label">Choisissez un niveau</label>
            <select name="level_id" class="form-select">
                @foreach ($levels as $level)
                    <option value="{{ $level->id }}">{{ $level->name }}</option>
                @endforeach
            </select>
            @error('level_id')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </p>
        <p>
            <label for="serie_id" class="form-label">Choisissez une serie</label>
            <select name="serie_id" class="form-select">
                @foreach ($series as $serie)
                    <option value="{{ $serie->id }}">{{ $serie->name }}</option>
                @endforeach
            </select>
            @error('serie_id')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </p>
        <p>
            <input type="submit" value="Enregistrer" class="form-control">
        </p>
    </form>
</body>
</html>