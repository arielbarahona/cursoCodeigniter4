<?php


namespace App\Controllers;
use App\Libraries\Auth;
use App\Models\User;
use CodeIgniter\Events\Events;
use CodeIgniter\Services;

class AuthController extends BaseController{
    public function register(){

        //validaciones del formulario de registro
        if ($this->request->getGetPost()) {
			$validation = $this->validate(
				[
					'name' => 'required|min_length[2]',
					'email' => 'valid_email|required|is_unique[users.email]',
					'password' => 'required|min_length[6]',
					'password_confirmation' => 'required|matches[password]'
				],
				[
					'name' => [
						'required' => 'El nombre es requerido',
						'min_length' => 'El nombre es demasiado corto'
					],
					'email' => [
						'required' => 'El email es requerido',
						'valid_email' => 'El formato del email no es correcto',
						'is_unique' => 'El email ya está en uso'
					],
					'password' => [
						'required' => 'El password es requerido',
						'min_length' => 'El password es demasiado corto'
					],
					'password_confirmation' => [
						'required' => 'Debe confirmar el password',
						'matches' => 'Los passwords no coinciden'
					]
				]
			);
			if ( ! $validation) {
				return redirect('/register')->withInput();
			} else {
				$userModel = new User;//procesar el formulario
				$userEntity = new \App\Entities\User; //utilizar la entidad
				$postEscapedData = esc($this->request->getRawInput());//
				$userEntity->fill($postEscapedData);//evitar ataques protegiendo la data
				$userModel->save($userEntity);// los datos quedan guardados

				//TODO: enviar correo electrónico
				Events::trigger( 'userRegistered', $postEscapedData);

				session()->setFlashdata('message', 'Registro correcto');
				return redirect('/register');//redirigirnos
			}
		} else {
			return $this->view( 'auth/register', 'Página de registro');
		}
		
	}
	public function login () {
		//VALIDAR
		\Kint::dump($_SERVER);
		if ($this->request->getGetPost()) {
			$validation = Services::validation();
			if ( ! $validation->run($this->request->getPost(), 'login')) {
				return redirect('/login')->withInput();
			} else {
				$postEscapedData = esc($this->request->getRawInput());
				$user = (new User)->asObject()->where(
					'email', $postEscapedData['email']
				)->first();

				if ($user) {
					if ( ! password_verify($postEscapedData['password'], $user->password)) {
						$validation->setError( 'password', 'El password introducido es incorrecto');
						return redirect('/login')->withInput();
					} else {
						Auth::generateUserSession($user);
						return redirect('/dashboard');
					}
				} else {
					$validation->setError( 'email', 'El usuario no existe');
					return redirect('/login')->withInput();
				}
			}
		} else {
			return $this->view( 'auth/login', 'Página de login');
		}
	}
}

