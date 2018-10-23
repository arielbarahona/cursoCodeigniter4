<?php
namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class AppSeeder extends Seeder {
	public function run () {
		$data = [
			[
				'name' => 'admin',
				'email'    => 'admin@mail.com',
				'password' => password_hash('secret', PASSWORD_BCRYPT)
			],
			[
				'name' => 'admin2',
				'email'    => 'admin2@mail.com',
				'password' => password_hash('secret', PASSWORD_BCRYPT)
			]
		];

		$this->db->table('users')->insertBatch($data);
	}
}