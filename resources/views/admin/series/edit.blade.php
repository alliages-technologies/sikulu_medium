<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Series</title>
</head>
<body>
    <h1>Modification</h1>
    <form action="{{ route('serie.update', ['serie'=>$serie]) }}" method="post">
        @csrf
        <p>
            <label for="name" class="form-label">Nom de la serie</label>
            <input type="text" name="name" value="{{ $serie->name }}" class="form-control">
        </p>
        <p>
            <label for="abbv" class="form-label">Abreviation de la serie</label>
            <input type="text" name="abbv" value="{{ $serie->abbv }}" class="form-control">
        </p>
        <input type="submit" value="Enregistrer" class="form-control">
    </form>
</body>
</html>