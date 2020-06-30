<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
use App\Category;
use App\Tags;

class LandingController extends Controller
{
    public function index(Posts $posts)
    {
        $tag = Tags::all();
        $category_widget = Category::all();
        $data = $posts->latest()->take(4)->get();
        return view('landing', compact('data', 'category_widget', 'tag'));
    }

    public function isi_blog($slug)
    {
        $tag = Tags::all();
        $category_widget = Category::all();
        $data = Posts::where('slug', $slug)->get();
        return view('blog.isi_blog', compact('data', 'category_widget', 'tag'));
    }

    public function list_blog()
    {
        $tag = Tags::all();
        $category_widget = Category::all();
        $data = Posts::latest()->paginate(6);
        return view('blog.list_blog', compact('data', 'category_widget', 'tag'));
    }

    public function list_category(category $category)
    {
        $category_widget = Category::all();
        $data = $category->posts()->paginate(6);
        $tag = Tags::all();
        return view('blog.list_blog', compact('data', 'category_widget', 'tag'));
    }

    public function cari(request $request)
    {
        $category_widget = Category::all();
        $data = Posts::where('judul', $request->cari)->orWhere('judul', 'like', '%'.$request->cari. '%')->paginate(6);
        $tag = Tags::all();
        return view('blog.list_blog', compact('data', 'category_widget', 'tag'));
    }
}
