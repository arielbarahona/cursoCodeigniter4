<?php
namespace App\Entities;

use CodeIgniter\Entity;

class Post extends Entity {
	/**
	 * @var
	 */
	protected $id;

	/**
	 * @var
	 */
	protected $user_id;

	/**
	 * @var
	 */
	protected $title;

	/**
	 * @var
	 */
	protected $content;

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

	public function createdOn ($format = 'Y-m-d') {
		$date = new \DateTime($this->created_at);
		return $date->format($format);
	}
}