<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//convertir los controladores a servicios 
//se agrega estas dos lineas de codigo y se agrega otro codigo en libraries/REST_Controller.php
//agrego-------> require APPPATH . 'libraries/Format.php';
use Restserver\Libraries\REST_Controller;
require(APPPATH . 'libraries/REST_Controller.php');

class Facturacion extends REST_Controller {

    public function factura_get(){
        //se lee el URL
        $factura_id=$this->uri->segment(3);
        //cargo base de datos
        $this->load->database();
        //ejecuto SQL
        $this->db->where('factura_id', $factura_id);
        $query=$this->db->get('facturacion');
        //se carga query
        $factura=$query->row();

        //trucazo, resear query para mostrar otro
        $this->db->reset_query();

        $this->db->where('factura_id', $factura_id);
        $query=$this->db->get('facturacion_detalle');

        $detalle = $query->result();

        $respuesta = array(
            'err'=>FALSE,
            'mensaje'=> 'factura cargada correctamente',
            //'factura' => $query->row() // viene en arreglo
            'factura'=>$factura,
            'detalle' => $detalle // va en un arreglo
        );

        $this->response($respuesta);


    }

}