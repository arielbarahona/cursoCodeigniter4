<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tareas extends CI_Controller {

    //i. Servicio “alumnos_conteo”. Este servicio debe de retornar 
    //únicamente el total de alumnos de la tabla mediante algún 
    //tipo de contador.
    public function alumnos_conteo(){
        //inicializar base 
        $this->load->database();

        //Consulta a la BD
        $query=$this->db->query("SELECT * FROM alumnos");

        //imprimo
        echo json_encode($query->num_rows() );
    }


    //ii. Servicio “alumnos_listado”. Debe de regresar un arreglo de 
    //objetos en formato JSON con todos los alumnos de la tabla, 
    //incluyendo el promedio.

    public function alumnos_listado(){
        //inicializar base 
        $this->load->database();

        //Consulta a la BD
        $query=$this->db->query("SELECT a.*, (parcial1+ parcial2 + parcial3 )/3 as promedio FROM alumnos a");

        //imprimo
        echo json_encode($query->result() );
    }





	
}