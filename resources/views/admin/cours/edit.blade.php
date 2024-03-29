<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cours</title>
</head>
<body>
    <h1>Modification</h1>
    <form action="{{ route('cours.update', ['cours'=>$cours]) }}" method="post">
        @csrf
        <p>
            <label for="coefficient" class="form-label">Coefficient du cours</label>
            <input type="number" name="coefficient" id="name" class="form-control" value="{{ $cours->coefficent }}">
            @error('coefficient')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </p>
        <p>
            <label for="matter_id" class="form-label">Choisissez une matiere</label>
            <select name="matter_id" class="form-select">
                @foreach ($matters as $matter)
                    <option value="{{ $matter->id }}">{{ $matter->name }}</option>
                @endforeach
            </select>
            @error('matter_id')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </p>
        <p>
            <label for="classe_id" class="form-label">Choisissez une classe</label>
            <select name="classe_id" class="form-select">
                @foreach ($classes as $classe)
                    <option value="{{ $classe->id }}">{{ $classe->getFullName() }}</option>
                @endforeach
            </select>
            @error('classe_id')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </p>
        <p>
            <input type="submit" value="Enregistrer" class="form-control">>
        </p>
    </form>
</body>
</html>