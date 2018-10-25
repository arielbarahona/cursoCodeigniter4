<?php 
if( ! defined('BASEPATH') ) exit('No direct script access allowed');


$config = array(
	//aqui se ponen todas las reglas que necesitare

	'cliente_put' => array
	(
		array( 'field'=>'correo', 'label'=>'correo electronico','rules'=>'trim|required|valid_email' ),
		array( 'field'=>'nombre', 'label'=>'nombre','rules'=>'trim|required|min_length[2]|max_length[255]' ),
		array( 'field'=>'zip', 'label'=>'zip','rules'=>'trim|required|min_length[2]|max_length[5]' )
	),

	'cliente_post' => array
	(
		array( 'field'=>'id', 'label'=>'cliente_id','rules'=>'trim|required|integer' ),
		array( 'field'=>'nombre', 'label'=>'nombre','rules'=>'trim|required|min_length[2]|max_length[255]' ),
		array( 'field'=>'zip', 'label'=>'zip','rules'=>'trim|required|min_length[2]|max_length[5]' ),
		array( 'field'=>'telefono1', 'label'=>'telefono1','rules'=>'trim|required|min_length[8]|max_length[8]' )
	)

	


);




?>