<?php
namespace App\Controllers;

use App\Models\User;


class ProfileController extends BaseController {
	public function index() {
		$user = (new User)->find(session('id'));
		return $this->view( 'profile/form', 'Mi perfil', compact( 'user'));
	}
    //Actualizando el perfil
	public function updateProfile () {
		if ($this->request->getPost()) {
			$profileInput = esc($this->request->getPost());
			$picture = $this->request->getFile('picture');
			//validacion
			$validation = $this->validate(
				//reglas de la validacion
				[
					'picture' => $picture->isValid() ? 'ext_in[picture,jpg,png]|max_size[picture,2048]' : 'max_size[picture,2048]',
					'password' => $profileInput['password'] ? 'min_length[6]' : 'min_length[0]'
				],
				[
					'picture' => [
						'ext_in' => 'La extensión del archivo no es válida',
						'max_size' => 'El archivo es demasiado pesado'
					],
					'password' => [
						'min_length' => 'El password es demasiado corto'
					]
				]
			);

			if ( ! $validation) {
				return redirect()->back()->withInput();
			}

			$userModel = new User;
			$user = $userModel->find(session('id'));

			if ($profileInput['password']) {
				$user->password = $profileInput['password'];
			}

			// $utils = new Utils;
            // $utils->uploadFile( WRITEPATH . 'uploads/profiles', $picture, $user, 'picture');
            if($picture->isValid()){
                if($user->picture && file_exists('uploads/' . $user->picture)){
                    unlink('uploads/'. $user->picture);
                }

                $pictureName = $picture->getRandomName();
                if(! $picture->hasMoved()){
                    $picture->move('uploads', $pictureName);
                }
                $user->picture = $pictureName;
                
			}
			$userModel->update(session('id'), $user);
			session()->setFlashdata('message', 'Perfil actualizado');	
		}
		return redirect('/profile');
	}
}