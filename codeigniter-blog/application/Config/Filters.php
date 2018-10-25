<?php namespace Config;

use App\Filters\Auth;
use App\Filters\Guest;
use CodeIgniter\Config\BaseConfig;

class Filters extends BaseConfig
{
	// Makes reading things below nicer,
	// and simpler to change out script that's used.
	public $aliases = [
		'csrf' 	  => \App\Filters\CSRF::class,
		'toolbar' => \App\Filters\DebugToolbar::class,
		'honeypot' => \App\Filters\Honeypot::class,
		'auth'=>Auth::class,
		'guest'=>Guest::class,
		'api-auth'=>ApiAuth::class
	];
	//modificamos esta parte
	// Always applied before every request
	public $globals = [
		'before' => [
			//'honeypot'
			'csrf'=>['except'=>[
				'api/*'
			]], //habilitamos este campo
		],
		'after'  => [
			'toolbar',
			//'honeypot'
		]
	];

	// Works on all of a particular HTTP method
	// (GET, POST, etc) as BEFORE filters only
	//     like: 'post' => ['CSRF', 'throttle'],
	public $methods = [];

	// List filter aliases and any before/after uri patterns
	// that they should run on, like:
	//    'isLoggedIn' => ['before' => ['account/*', 'profiles/*']],
	public $filters = [
		'auth'=>['before'=>['dashboard','posts','ajax', 'profile', 'relations']],
		'guest'=>['before'=>['login','register']],
		'api-auth' =>['before' => ['api']]
		
	];
		
}
