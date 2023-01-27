<?php

namespace App\Http\Controllers\editor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\ProductAddon;

class AddonsController extends Controller
{
    public function manage(){
        $addons = ProductAddon::all();
        return view('backEnd.addon.manage', compact('addons'));
    }

    public function add(Request $request)
    {
        return view('backEnd.addon.add');
    }

    public function store(Request $request)
    {
        //return $request->all();
        $this->validate($request, [
            "name" => "required",
            "price" => "required",
        ]);

        if($request->file('image')){
            $image = $request->file('image');
            $name =  time().'-'.$image->getClientOriginalName();
            $uploadpath = 'public/uploads/product/';
            $image->move($uploadpath, $name);
            $imageUrl = $uploadpath.$name;

            ProductAddon::create([
                "name" => $request->name,
                "price" => $request->price,
                "image" => $imageUrl,
                "status" => $request->status,
            ]);
        }else{
            ProductAddon::create([
                "name" => $request->name,
                "price" => $request->price,
                "status" => $request->status,
            ]);
        }


        Toastr::success('message', 'Addon added successfully!');

        return back();


    }

    public function inactive(Request $request)
    {
        $addons = ProductAddon::find($request->hidden_id);
        $addons->status = 0;
        $addons->save();

        Toastr::success('message', 'Addon inactive successfully!');
        return back();
    }

    public function active(Request $request)
    {
        $addons = ProductAddon::find($request->hidden_id);
        $addons->status = 1;
        $addons->save();

        Toastr::success('message', 'Addon active successfully!');
        return back();
    }

    public function edit($id)
    {
        $edit = ProductAddon::find($id);

        return view('backEnd.addon.edit', compact('edit'));
    }

    public function update(Request $request){
        $addons = ProductAddon::find($request->id);

        if($request->file('image')){
            $image = $request->file('image');
            $name =  time().'-'.$image->getClientOriginalName();
            $uploadpath = 'public/uploads/product/';
            $image->move($uploadpath, $name);
            $imageUrl = $uploadpath.$name;


            $addons->name = $request->name;
            $addons->price = $request->price;
            $addons->image = $imageUrl;
            $addons->status = $request->status;
            $addons->save();

        }else{
            $addons->name = $request->name;
            $addons->price = $request->price;
            $addons->status = $request->status;
            $addons->save();
        }

        Toastr::success('message', 'Addon update successfully!');

        return back();

    }
}
