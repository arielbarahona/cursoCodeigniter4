<?php namespace Config;

class Validation
{
	//--------------------------------------------------------------------
	// Setup
	//--------------------------------------------------------------------

	/**
	 * Stores the classes that contain the
	 * rules that are available.
	 *
	 * @var array
	 */
	public $ruleSets = [
		\CodeIgniter\Validation\Rules::class,
		\CodeIgniter\Validation\FormatRules::class,
		\CodeIgniter\Validation\FileRules::class,
		\CodeIgniter\Validation\CreditCardRules::class,
	];

	/**
	 * Specifies the views that are used to display the
	 * errors.
	 *
	 * @var array
	 */
	public $templates = [
		'list'   => 'CodeIgniter\Validation\Views\list',
		'single' => 'CodeIgniter\Validation\Views\single'
	];

	//--------------------------------------------------------------------
	// Rules
	//--------------------------------------------------------------------
	public $login = [
		'email' => 'valid_email|required',
		'password' => 'required|min_length[6]',
	];

	public $login_errors = [
		'email' => [
			'required' => 'El email es requerido',
			'valid_email' => 'El formato del email no es correcto',
		],
		'password' => [
			'required' => 'El password es requerido',
			'min_length' => 'El password es demasiado corto',
		]
	];

	public $post_add = [
		'title' => 'required|is_unique[posts.title]',
		'content' => 'required',
	];

	public $post_add_errors = [
		'title' => [
			'required' => 'El campo título es requerido',
			'is_unique' => 'El título ya existe en base de datos'
		],
		'content' => [
			'required' => 'El campo content es requerido',
		]
	];
}
