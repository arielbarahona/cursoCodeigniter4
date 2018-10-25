<?php
namespace App\Controllers;

use App\Models\Post;
use CodeIgniter\Services;

class PostController extends BaseController {

	/**
	 * @var Post
	 */
	protected $postModel;

	public function __construct() {
		$this->postModel = new Post;
	}

	public function index () {
		$data = [
			'posts' => $this->postModel->paginate(2),
			'pager' => $this->postModel->pager
		];
		return $this->view('posts/index', 'Listado de posts', $data);
	}

	public function create () {
		$data = [
			'post' => new class { public $title = ''; public $content = ''; },
			'route' => route_to( 'posts_create'),
			'actionBtn' => 'Crear post'
		];

		if ($this->request->getGetPost()) {
			$validation = Services::validation();
			if ( ! $validation->run($this->request->getGetPost(), 'post_add')) {
				return redirect()->back()->withInput();
			}
			$postEntity = new \App\Entities\Post;
			$postInput = esc($this->request->getRawInput());
			$postEntity->fill($postInput);
			$this->postModel->save($postEntity);
			session()->setFlashdata( 'message', 'Post creado correctamente');
			return redirect('/posts');
		}
		return $this->view('posts/form', 'Alta de posts', $data);
	}

	public function edit (int $id) {
		$post = $this->postModel->asObject()->find($id);

		if ( ! $post) {
			return redirect('/posts');
		}

		$data = [
			'post' => $post,
			'route' => route_to( 'posts_edit', $post->id),
			'actionBtn' => 'Actualizar post'
		];

		if ($this->request->getGetPost()) {
			$unique_title = sprintf('required|is_unique[posts.title,title,%s]', $post->title);
			$validation = $this->validate(
				[
					'title' => $unique_title,
					'content' => 'required'
				],
				[
					'title' => [
						'required' => 'El campo título es requerido',
						'is_unique' => 'El título ya existe en base de datos'
					],
					'content' => [
						'required' => 'El campo content es requerido',
					]
				]
			);

			if ( ! $validation) {
				return redirect()->back()->withInput();
			}

			$postInput = esc($this->request->getRawInput());
			$post->title = $postInput['title'];
			$post->content = $postInput['content'];
			$this->postModel->update($id, $post);
			session()->setFlashdata( 'message', 'Post actualizado correctamente');
			return redirect('/posts');
		}

		return $this->view('posts/form', 'Actualizar posts', $data);
	}

	public function destroy (int $id) {
		$post = $this->postModel->find($id);
		if ($post) {
			$this->postModel->delete($id);
			session()->setFlashdata( 'message', 'Post eliminado correctamente');
		}
		return redirect('/posts');
	}
}
