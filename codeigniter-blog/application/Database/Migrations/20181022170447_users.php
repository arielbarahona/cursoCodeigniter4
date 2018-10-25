<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Migration_users extends Migration
{
	//este metodo crea
	public function up(){
		$this->forge->addField([
			'id'          => [
				'type'           => 'INT',
				'constraint'     => 5,
				'unsigned'       => true,
				'auto_increment' => true
			],
			'name'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'email' => [
				'type'           => 'VARCHAR',
				'constraint'     => '150',
				'null'           => false,
				'unique'         => true
			],
			'password' => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'null'           => false,
			],
			'picture'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '150',
				'null'           => true
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
				'type'           => 'DATETIME',
				'null'           => true,
			],
		]);
		$this->forge->addKey('id', TRUE);
		$this->forge->createTable('users');
	}
	//--------------------------------------------------------------------

	//este metodo elimina 
	public function down()
	{
		$this->forge->dropTable('users');
	}
}
