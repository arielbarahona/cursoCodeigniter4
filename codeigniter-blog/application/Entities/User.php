<?php 
//Directorio manespace
namespace App\Entities;

use CodeIgniter\Entity;
//defino la clase
class User extends Entity{
    //CAMPOS DE LA TABLA DE LA BASE DE DATOS
    /**
	 * @var
	 */
	protected $id;

	/**
	 * @var
	 */
	protected $name;

	/**
	 * @var
	 */
	protected $picture;

	/**
	 * @var
	 */
	protected $email;

	/**
	 * @var
	 */
	protected $password;

	/**
	 * @var
	 */
	protected $created_at;

	/**
	 * @var
	 */
	protected $updated_at;

	/**
	 * @var
	 */
	protected $deleted_at;

	//mw wncripta la contrasena
	protected function setPassword (string $password) {
		$this->password = password_hash( $password, PASSWORD_BCRYPT);
	}
	//metodo para la fecha:   
	public function createdOn ($format = 'Y-m-d') {
		$date = new \DateTime($this->created_at);
		return $date->format($format);
	}
}



