<?php
namespace App\Controllers\Api;

use App\Controllers\BaseController;
use App\Models\Course;

class CourseController extends BaseController {
	public function index () {
		$courseModel = new Course;
		$courses = $courseModel->findAll();
		$data = [
			'courses' => $courses
		];
		return $this->response->setJSON($data);
	}

	public function show (int $id) {
		$courseModel = new Course;
		$course = $courseModel->find($id);
		$data = [
			'course' => $course
		];
		return $this->response->setJSON($data);
	}
    //metodo crear //POST
	public function create () {
		$courseInput = esc($this->request->getRawInput());
		$id = (new Course)->insert($courseInput);
		$data = [
			'res' => 'curso insertado',
			'id' => $id
		];
		return $this->response->setStatusCode(200)->setJSON($data);
    }
    //metodo actualizar //PUT
    public function update (int $id) {
		$courseModel = new Course;
		$course = $courseModel->find($id);
		$courseInput = esc($this->request->getRawInput());
		if ($course) {
			$courseModel->update($id, $courseInput);
			$data = [
				'res' => 'curso actualizado'
			];
			return $this->response->setStatusCode(200)->setJSON($data);
		}
		$data = [
			'res' => 'curso no encontrado'
		];
		return $this->response->setStatusCode(404)->setJSON($data);
	}

	/**
	 * @param int $id
	 *
	 * @return $this
	 * @throws \CodeIgniter\Database\Exceptions\DatabaseException
	 */

    //metodo delete --DELETE
	public function delete (int $id) {
		$courseModel = new Course;
		$course = $courseModel->find($id);
		if ($course) {
			$courseModel->delete($id);
			$data = [
				'res' => 'curso eliminado'
			];
			return $this->response->setStatusCode(200)->setJSON($data);
		}
		$data = [
			'res' => 'curso no encontrado'
		];
		return $this->response->setStatusCode(404)->setJSON($data);
	}
}

	