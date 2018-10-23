<?php namespace App\Controllers;
use App\Models\User;
use CodeIgniter\Controller;

class Home extends Controller
{
	public function index()
	{	
		//elimino el return
		//return view('welcome_message');
		//creo las instancias
		$userModel = new User;
		$userEntity= new\App\Entities\User;
		//la data que se quiere insertar
		$data =[
			'name' => 'usuario1',
			'email'    => 'usuario1@mail.com',
			'password' => 'secret'
		];
		$userEntity->fill($data);//pasamos los datos que queremos insertar
		//se hace persistente
		$userModel->save($userEntity);//entidad que queremos insertar
	}

	//--------------------------------------------------------------------

}
