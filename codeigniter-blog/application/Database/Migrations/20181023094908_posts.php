<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Migration_posts extends Migration
{
	public function up()
	{
		//crea
		$this->forge->addField([
			'id'          => [
				'type'           => 'INT',
				'constraint'     => 5,
				'unsigned'       => true,
				'auto_increment' => true
			],
			'user_id'          => [
				'type'           => 'INT',
				'constraint'     => 5,
				'unsigned'       => true,
				'null'           => false
			],
			'title'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'content' => [
				'type'           => 'TEXT',
				'null'           => false,
			],
			'created_at'    => [
				'type'           => 'DATETIME',
				'null'           => true,
			],
			'updated_at'    => [
				'type'           => 'DATETIME',
				'null'           => true,
			],
			'deleted_at'    => [
				'type'           => 'INT',
				'default'        => 0,
			],
		]);
		$this->forge->addForeignKey('user_id', 'users', 'id');
		$this->forge->addKey('id', TRUE);
		$this->forge->createTable('posts');

	}

	//--------------------------------------------------------------------

	public function down()
	{
		//elimina
		$this->forge->dropForeignKey('posts', 'posts_user_id_foreign');
		$this->forge->dropTable('posts');
	}
}
