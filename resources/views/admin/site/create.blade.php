<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sites</title>
    </head>
    <body>
        <h1>Creation</h1>
        <form action="{{ route('site.store') }}" method="post" enctype="multipart/form-data">
            @csrf
            <p>
                <label for="name" class="form-label">Nom du site</label>
                <input type="text" name="name" class="form-control">
            </p>
            @error('name')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
            <p>
                <label for="image_uri" class="form-label">Image</label>
                <input type="file" name="image_uri" class="form-control">
            </p>
            @error('image_uri')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
            <p>
                <label for="quartier_id" class="form-label">Quartier</label>
                <select name="quartier_id" id="quartier">
                    @foreach ($quartiers as $quartier)
                        <option value="{{$quartier['id']}}">{{$quartier['name']}}</option>
                    @endforeach
                </select>
            </p>
            <input type="submit" value="Enregistrer" class="form-control">
            @error('quartier_id')
                <div class="alert alert-danger">{{$message}}</div>
            @enderror
        </form>
    </body>
</html>