@extends('template_backend.index')
@section('sub-judul', 'Kategori')
@section('content')

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session('success') }}
        </div> 
    @endif
    <a href="{{ route('category.create') }}" class="btn btn-info mb-3">Tambah Data Kategori</a><br>

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Kategori</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        @foreach($category as $result => $hasil)
            <tr>
                <td>{{ $result + $category->firstitem() }}</td>
                <td>{{ $hasil->nama }}</td>
                <td>
                    <form action="{{ route('category.destroy', $hasil->id) }}" method="post">
                        @csrf
                        @method('delete')
                        <a href="{{ route('category.edit', $hasil->id) }}" class="btn btn-primary btn-sm">Edit</a>
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>         
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $category->links() }}

@endsection