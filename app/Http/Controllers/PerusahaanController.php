<?php

namespace App\Http\Controllers;

use App\Models\Perusahaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class PerusahaanController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $data = Perusahaan::where('nama','LIKE','%' .$request->search.'%')->paginate(5);
            Session::put('halaman_url', request()->fullUrl());
        }else{
            $data = Perusahaan::paginate(5);
            Session::put('halaman_url', request()->fullUrl());
        }
            return view('dataperusahaan',compact('data')); 
    }

    public function tambahperusahaan(){
        return view('tambahdata');
    }
    public function insertdata(Request $request){
        //dd($request->all());
        Perusahaan::create($request->all());
        return redirect()->route('perusahaan')->with('success','Data Berhasil Di Tambahkan');
    }
    public function tampilkandata($id){
        $data = Perusahaan::find($id);
        //dd($data);

        return view('tampildata', compact('data'));
    }
    public function updatedata(Request $request, $id){
        $data = Perusahaan::find($id);
        $data->update($request->all());
        if(session('halaman_url')){
            return Redirect(session('halaman_url'))->with('success','Data Berhasil Di Update');
        }

        return redirect()->route('perusahaan')->with('success','Data Berhasil Di Update');
    }
    public function delete($id){
        $data = Perusahaan::find($id);
        $data->delete();
        return redirect()->route('perusahaan')->with('success','Data Berhasil Di Hapus');
    }   
}