<?php
namespace App\Controllers;

use App\Models\Post;
use CodeIgniter\API\ResponseTrait;

class AjaxController extends BaseController {
	use ResponseTrait;

	public function index () {
		return $this->view( 'ajax/index', 'Cargar datos con Ajax utilizando el CSRF');
	}

	public function loadPosts () {
		if ($this->request->isAJAX()) {
			$posts = (new Post)->asArray()->findAll();
			return $this->respond($posts, 200);
		}
		return redirect('/ajax');
	}
}