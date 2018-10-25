<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//convertir los controladores a servicios 
//se agrega estas dos lineas de codigo y se agrega otro codigo en libraries/REST_Controller.php
//agrego-------> require APPPATH . 'libraries/Format.php';
use Restserver\Libraries\REST_Controller;
require(APPPATH . 'libraries/REST_Controller.php');



class Clientes extends REST_Controller {
    
    public function __construct(){
        //LIBRERIAS
        //Constructor
        parent:: __construct();

        //inicializar BD
        $this->load->database();

        //cargar modelo
        $this->load->model('Cliente_model');
        

    }

    //paginar las paginas en GET
    public function paginar_get(){
        //cargar helper
        $this->load->helper('paginacion');
        $pagina = $this->uri->segment(3);
        $por_pagina = $this->uri->segment(4);

        $campos = array('id','nombre', 'telefono1');
        
        $respuesta = paginar_todo('clientes', $pagina, $por_pagina, $campos);

        $this->response ($respuesta);
    }

    //funcion DELETE

    public function cliente_delete(){
       //segmentos de la URL
        $cliente_id = $this->uri->segment(3);
        $respuesta = $this->Cliente_model->delete($cliente_id);
        $this->response($respuesta);
    }

    //funcion PUT
    public function cliente_put(){
        $data = $this-> put(); //regresa un arreglo
        
        
        $this->load->library('form_validation');
        $this->form_validation->set_data($data);
        //$this->form_validation-> set_rules('correo','correo electronico','required|valid_email');
        //$this->form_validation-> set_rules('nombre','nombre','required|min_length[2]');

        // TRUE :: Todo bien  FALSE :: falla una regla
        if($this->form_validation->run('cliente_put') ) {
            //todo bien
            //$this->response('Todo bien');
            $cliente =$this->Cliente_model->set_datos($data);
            $respuesta = $cliente->insert();

            if($respuesta['err']){
                $this->response($respuesta, REST_Controller::HTTP_BAD_REQUEST);
            }else{

                $this->response ($respuesta);
            }

        }else{
            //algo mal
            //$this->response('Todo mal');

            $respuesta =array(
                'err' =>TRUE,
                'mensaje' => 'Hay errores en el envio de informacion',
                'errores' => $this->form_validation->get_errores_arreglo()
            );
            $this->response($respuesta, REST_Controller::HTTP_BAD_REQUEST);
        }  
        $this->response ($data);

    }

    //cliente POST
    public function cliente_post(){
        $cliente_id = $this->uri->segment(3);
        $data = $this-> post(); //regresa un arreglo
       
        $data['id'] = $cliente_id;
        $this->load->library('form_validation');
        $this->form_validation->set_data($data);
       

        
        //$this->form_validation-> set_rules('correo','correo electronico','required|valid_email');
        //$this->form_validation-> set_rules('nombre','nombre','required|min_length[2]');

        // TRUE :: Todo bien  FALSE :: falla una regla
        if($this->form_validation->run('cliente_post') ) {
            //todo bien
            //$this->response('Todo bien');
            $cliente =$this->Cliente_model->set_datos($data);
            $respuesta = $cliente->update();

            if($respuesta['err']){
                $this->response($respuesta, REST_Controller::HTTP_BAD_REQUEST);
            }else{

                $this->response ($respuesta);
            }

        }else{
            //algo mal
            //$this->response('Todo mal');

            $respuesta =array(
                'err' =>TRUE,
                'mensaje' => 'Hay errores en el envio de informacion',
                'errores' => $this->form_validation->get_errores_arreglo()
            );
            $this->response($respuesta, REST_Controller::HTTP_BAD_REQUEST);
        }  
        $this->response ($data);

    }


    //funcion GET
    public function cliente_get(){

        $cliente_id = $this->uri->segment(3);

        //validar el cliente id
        if(!isset($cliente_id)){
            $respuesta = array(
                'err' => TRUE,
                'mensaje' => 'Es necesario el ID del cliente'
            );
            
            $this->response($respuesta, REST_Controller::HTTP_BAD_REQUEST );
            return;
        }

        $cliente = $this->Cliente_model->get_cliente($cliente_id );

        if(isset($cliente)){
            unset($cliente->telefono1);
            unset($cliente->telefono2);
            $respuesta = array(
                'err'=>FALSE,
                'mensaje'=>'Registro cargado correctamente',
                'cliente'=>$cliente
            );
            $this->response($respuesta);
        }else{
            $respuesta = array(
                'err'=>TRUE,
                'mensaje' => 'El registro con el id '. $cliente_id . ',no existe.',
                'cliente' => null
            );
        }
        
        $this->response($respuesta, REST_Controller::HTTP_NOT_FOUND);
    
    }





    //utilizando POSTMAN
    /*public function index_post(){

        //cargo el helper
        $this->load->helper('utilidades');

        $data = array(
            'nombre' => 'Cristhian Barahona',
            'contacto' => 'Ariel Salgado',
            'direccion' => 'Residencial villa de las hadas'
        );

        //$data['nombre'] = strtoupper( $data['nombre'] );
        //$data['contacto'] = strtoupper($data['contacto']);

        //capitalizo el arreglo
        $campos_capitalizar = array('nombre','contacto');
        $data = capitalizar_arreglo($data, $campos_capitalizar);

        //imprimo array
        echo json_encode ($data);

    }*/

    //creo una funcion opara poder utilizar el cliente_model.php
    public function cliente($id){
        $this->load->model('Cliente_model');
        $cliente = $this->Cliente_model->get_cliente($id);

        echo json_encode($cliente);
    }
}