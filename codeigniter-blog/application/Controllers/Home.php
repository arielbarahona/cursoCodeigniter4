<?php namespace App\Controllers;
use App\Models\User;
use CodeIgniter\Controller;

class Home extends BaseController
{
	public function index()
	{	
		return $this->view('auth/register', 'pagina de registro');
		
	}

	public function flash(){
		
		session()->setFlashdata('message','Nueva sesion flash');
		return redirect('/');
	}

	//--------------------------------------------------------------------

}
