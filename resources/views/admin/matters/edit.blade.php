<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Matiere</title>
</head>
<body>
    <h1>Modification</h1>
    <form action="{{ route('matter.update', ['matter'=>$matter]) }}" method="post">
        @csrf
        <p>
            <label for="name" class="form-label">Nom de la matiere</label>
            <input type="text" name="name" value="{{ $matter->name }}" class="form-control">

            @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </p>
        <input type="submit" value="Enregistrer" class="form-control">
    </form>
</body>
</html>