<?php

namespace App\Http\Controllers;
use Validator;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Requests;


// Models
use App\User as User;
use App\sc_packages as DBPackage;

class Sc_packagesController extends Controller
{
    

    public function new_sc_Entry(Request $request)
    {
      /*
      inputs Form Name :
      firstname,lastname,email,
      password,password_retry,gender(male-female),
      birthday(YYYY-mm-dd),fileName,userfile
      */
     /* $validator = Validator::make($request->all(), [
        'firstname'  => 'required|max:100',
        'lastname'   => 'required|max:100',
        'email'      => 'required|unique:user|max:100',
        'password'   => 'required|max:255',
        'password_retry'=> 'required|max:255',
        'gender'     => 'required|max:6',
        'birthday'   => 'required|max:10'
    ]);
    // Return the Error to View.
    if ($validator->fails()) {
            return redirect('create_account')
                        ->withErrors($validator)
                        ->withInput();
        }*/
    // save To DB...
        $inputs = $request->all();
        foreach ($inputs as $row) {
        	# code...
        	DBPackage::insert($row);
        }
        

       /* $myfile = fopen("testfile.txt", "w");
		fwrite($myfile, json_decode($inputs[0]['package_name']));
		fclose($myfile);*/

    // eliminate unwanted rows(_token, fileName,..etc).
        /*unset($inputs['_token']);
        unset($inputs['fileName']);
        unset($inputs['password_retry']);

        User::insert($inputs);
        $Data['title'] = 'Welcome to our World : '.$inputs['firstname'];
        $Data['message'] = '<div class="alert alert-success alert-dismissible" role="alert">
                               <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                               <strong>Info!</strong> your account created successfully.
                              </div>';
        return response()->view('user.add', $Data);
    }

    public function create_account()
    {
      $Data['title']      = 'Join Us';
      $Data['message']    = '<div class="alert alert-info alert-dismissible" role="alert">
                             <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                             <strong>Info!</strong> Please Fill Gaps Below To create your new account.
                            </div>';
    return view('user.add',$Data);
    }

    public function get_user_by($id){
      $User = User::where('id','=',$id)->first();
      $Data = array('User'=> $User);
      return view('display_profile',$Data);
    }

    public function test(){
      $myName = "Achraf Karrouche";
      $data = array('myName' => $myName);
      return view('mypage',$data);
    }*/
}
}