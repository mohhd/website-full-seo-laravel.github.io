@extends('template_backend.index')
@section('sub-judul', 'Tag')
@section('content')

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session('success') }}
        </div> 
    @endif
    <a href="{{ route('tag.create') }}" class="btn btn-info mb-3">Tambah Data Tag</a><br>

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Tag</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        @foreach($tag as $result => $hasil)
            <tr>
                <td>{{ $result + $tag->firstitem() }}</td>
                <td>{{ $hasil->nama }}</td>
                <td>
                    <form action="{{ route('tag.destroy', $hasil->id) }}" method="post">
                        @csrf
                        @method('delete')
                        <a href="{{ route('tag.edit', $hasil->id) }}" class="btn btn-primary btn-sm">Edit</a>
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>         
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $tag->links() }}

@endsection