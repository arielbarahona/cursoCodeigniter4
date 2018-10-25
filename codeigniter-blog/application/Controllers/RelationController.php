<?php
namespace App\Controllers;

use App\Models\User;

class RelationController extends BaseController {
	public function index () {
		$userWithPosts = (new User)->withPosts();
		return $this->view('relations/index', 'Posts del usuario', compact('userWithPosts'));
	}
}