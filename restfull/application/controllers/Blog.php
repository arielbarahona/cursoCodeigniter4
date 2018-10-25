<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

        public function index()
        {
                echo 'Hello World!';
        }

        public function comments($id)
        {
                if(!is_numeric($id) ){
                        $respuesta = array('err'=> true, 'mensaje'=>'el id tiene que ser numerico');
                        echo json_encode($respuesta);

                        return;
                }

                $comentarios= array(
                     array('id'=>1, 'mensaje' => 'lorem ipsum'),
                     array('id'=>2, 'mensaje' => 'lorem ipsum dolor sir amet'),
                     array('id'=>3, 'mensaje' => 'lorem ipsum dolor')   

                );

                if( $id>= count ($comentarios) OR $id<0 ){
                        $respuesta = array('err' =>true, 'mensaje'=> 'el ID no existe');
                        echo json_encode($respuesta);
                        return;
                }

                echo json_encode($comentarios[$id]);
        }
}
