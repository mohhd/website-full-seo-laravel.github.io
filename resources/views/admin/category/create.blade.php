@extends('template_backend.index')
@section('sub-judul', 'Form Tambah Data Kategori')
@section('content')

<form action="{{ route('category.store') }}" method="post">
    @csrf
    <div class="row">
        <div class="col-12 col-md-6 col-lg-6">
            @if(count($errors)>0)
                @foreach($errors->all() as $error)
                    <div class="alert alert-danger" role="alert">
                        {{ $error }}
                    </div>
                @endforeach
            @endif
            <div class="card-body">
                <div class="form-group">
                    <label>Nama Kategori</label>
                    <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama Kategori">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Simpan</button>
                </div>
            </div>
        </div>
    </div>
</form>
@endsection