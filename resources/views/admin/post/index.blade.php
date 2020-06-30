@extends('template_backend.index')
@section('sub-judul', 'Post')
@section('content')

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session('success') }}
        </div> 
    @endif
    <a href="{{ route('post.create') }}" class="btn btn-info mb-3">Tambah Data Post</a><br>

    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Post</th>
                <th>Kategori</th>
                <th>Tags</th>
                <th>Creator</th>
                <th>Thumbnail</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        @foreach($post as $result => $hasil)
            <tr>
                <td>{{ $result + $post->firstitem() }}</td>
                <td>{{ $hasil->judul }}</td>
                <td>{{ $hasil->category->nama }}</td>
                <td>
                    @foreach($hasil->tag as $tg)
                        <ul>
                        <h6><span class="badge badge-info">{{ $tg->nama }}</span></h6>
                        </ul>
                    @endforeach
                </td>
                <td>{{ $hasil->users->name }}</td>   
                <td><img src="{{ asset($hasil->gambar) }}" class="img-fluid" style="width: 100px"></td>
                <td>
                    <form action="{{ route('post.destroy', $hasil->id) }}" method="post">
                        @csrf
                        @method('delete')
                        <a href="{{ route('post.edit', $hasil->id) }}" class="btn btn-primary btn-sm">Edit</a>
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>         
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $post->links() }}

@endsection