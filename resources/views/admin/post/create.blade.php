@extends('template_backend.index')
@section('sub-judul', 'Form Tambah Data Post')
@section('content')

<form action="{{ route('post.store') }}" method="post" enctype="multipart/form-data">
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
                    <label>Judul Post</label>
                    <input type="text" class="form-control" name="judul" placeholder="Masukkan Judul Post">
                </div>
                <div class="form-group">
                    <label>Kategori</label>
                    <select name="category_id" class="form-control">
                        <option value="" holder>--Pilih Kategori--</option>
                        @foreach($category as $result)
                        <option value="{{ $result->id }}">{{ $result->nama }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Pilih Tags</label>
                    <select class="form-control select2" multiple="" name="tags[]">
                        @foreach($tag as $result)
                        <option value="{{ $result->id }}">{{ $result->nama }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Isi Konten</label>
                    <textarea name="content" class="form-control" id="content"></textarea>
                </div>
                <div class="form-group">
                    <label>Thumbnail</label>
                    <input type="file" class="form-control" name="gambar">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Simpan</button>
                </div>
            </div>
        </div>
    </div>
</form>

<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('content');
</script>

@endsection