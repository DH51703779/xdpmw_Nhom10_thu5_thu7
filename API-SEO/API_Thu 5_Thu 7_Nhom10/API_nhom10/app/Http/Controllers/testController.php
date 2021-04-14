<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\Return_;

class testController extends Controller
{
    public function Userslist()
    {
        return response()->json(Users::get(),200);
    }
    public function UserbyID($id)
    {
        return response()->json(Users::find($id),200);
    }
    public function adUser(Request $request)
    {
        $user = new Users;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->Phone = $request->Phone;
        $result= $user->save();
        return response()->json($user,201);
    }
    public function Update($id,Request $request){
        $user = Users::Find($id);
        $user->name=isset($request->name)?$request->name:$user->name;
        $user->email=isset($request->email)?$request->email:$user->email;
        $user->password=isset($request->password)?$request->password:$user->password;
        $user->Phone=isset($request->Phone)?$request->Phone:$user->Phone;
        $result= $user->save();
        return response()->json($user,200);
    }
    public function delete($id){
        $user = Users::Find($id);
        $result =$user->delete();
        return response()->json($result,201);

    }
    public function Search($name){
        return Users::where("name","Like","%".$name."%")->get();

    }

    // Login
    public function Login(){
        Return view('admin_login');
    }
}
