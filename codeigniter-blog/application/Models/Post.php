<?php namespace App\Models;

use CodeIgniter\Model;

class Post extends Model
{
	protected $table = 'posts';

	protected $allowedFields = ['user_id', 'title', 'content'];

	protected $useTimestamps = true;

	protected $returnType = \App\Entities\Post::class;

	protected $beforeInsert = ['setOwner'];

	/**
	 * @param array $data
	 *
	 * @return array
	 */
	protected function setOwner (array $data): array {
		$data['data']['user_id'] = session('id');
		return $data;
	}
}
