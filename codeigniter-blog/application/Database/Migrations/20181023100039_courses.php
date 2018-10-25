<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Migration_courses extends Migration
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
			'price'          => [
				'type'           => 'FLOAT',
				'null'           => false
			],
			'author'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'name'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'description' => [
				'type'           => 'TEXT',
				'null'           => false,
			]
		]);
		$this->forge->addKey('id', TRUE);
		$this->forge->createTable('courses');
	}

	//--------------------------------------------------------------------

	public function down()
	{
		//elimina
		$this->forge->dropTable( 'courses');
	}
}
