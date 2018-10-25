<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pruebasdb extends CI_Controller {
    //llamado del constructor del padre
    public function __construct(){
        //Constructor
        parent:: __construct();

        //inicializar BD
        $this->load->database();
        //llamado al helper
        $this->load->helper('utilidades');

    }

    //-------------Documentacion--Consultas de bd-----------https://codeigniter.com/user_guide/database/index.html--------------------------------------------------------
    public function tabla(){
        //$this->load->database();
        
        /*(x,y)---> x registros apartir de y 
        $query= $this->db->get('clientes',10,20);
        echo json_encode($query->result());*/

        /*$query = $this->db->get('clientes',10,0);
        foreach ($query->result() as $fila){
            echo $fila->nombre . '<br/>';
        }*/

        /*$this->db->select('id, nombre, correo');
        //$this->db->select('id, nombre, correo, (select count(*) from clientes) as conteo');
        $query = $this->db->get_where('clientes', array('id' => 1) );
        echo json_encode ($query->row() );*/


        /*$this->db->select_max('id','Id_max_Alias');
        $query = $this->db->get('clientes');
        echo json_encode($query->row());*/

        /*$this->db->select_min('id','Id_max_Alias');
        $query = $this->db->get('clientes');
        echo json_encode($query->row());*/

        /*$this->db->select_avg('id','Id_promedio');
        $query = $this->db->get('clientes');
        echo json_encode($query->row());

        $this->db->select_sum('id','Id_sumatoria');
        $query = $this->db->get('clientes');
        echo json_encode($query->row());*/

        /*$this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $query = $this->db->get();
        echo json_encode($query->result());*/

        /*Clausulas where se pueden mandar arreglos o linea especificadas*/
        
        /*$this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $this->db->where('id', 1);
        $this->db->where('activo',1);
        $query  = $this->db->get();
        //echo json_encode( $query->result());
        echo json_encode( $query->row());

        $this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $this->db->where('id!=', 1);
        //$this->db->where('activo',1);
        $query  = $this->db->get();
        //echo json_encode( $query->result());
        echo json_encode( $query->result());*/

        /*$this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $this->db->where('id <', 10);
        //$this->db->where('id!=', 1);
        //$this->db->where('activo',1);
        $query  = $this->db->get();
        //echo json_encode( $query->result());
        echo json_encode( $query->result());*/

        /*$this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $this->db->where('id ', 1);
        $this->db->or_where('id ', 2);
        //$this->db->where('id!=', 1);
        //$this->db->where('activo',1);
        $query  = $this->db->get();
        echo json_encode( $query->result());*/

        /*$this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $ids = array(1,2,3,4,5);
        $this->db->where_in('id', $ids);
        $query = $this->db->get();
        echo json_encode($query->result());*/

        //%match%--> quiero que me busques la palabra match sin importar que esta antes y despues

        /*$this->db->select('id, nombre, correo');
        $this->db->from('clientes');
        $this->db->like('nombre', 'COLTON');
        $query = $this->db->get();
        echo json_encode($query->result());

        /* group */
        /*$this->db->select('pais, count(*)');
        $this->db->from('clientes');
        $this->db->group_by('pais');
        $query = $this->db->get();
        echo json_encode($query->result());*/
        
        /*distinct */
        /*$this->db->distinct();
        $this->db->select('pais');
        $this->db->from('clientes');
        $this->db->order_by('pais', 'ASC');
        $this->db->limit(10,40);
        $query = $this->db->get();
        
        //echo json_encode($query->result());

        foreach($query->result() as $fila){
            echo $fila->pais .'<br/>';
        }*/

        /*distinct and limit */
        $this->db->distinct();
        $this->db->select('pais');
        $this->db->from('clientes');
        $this->db->order_by('pais', 'ASC');
        $this->db->limit(20,40);
        echo $this->db->count_all_results();

        echo '<br/>';

        echo $this->db->count_all('clientes'); 

    }
    

    //-----Insertar data---------https://codeigniter.com/user_guide/database/query_builder.html--------------------------------------------------------------------
    
    public function insertar(){
        
        
        /*==================================  
        INSERTAR UN REGISTRO A LA VEZ
        ====================================*/
        
        /*$data = array(
            'nombre' => 'cristhian',
            'apellido' => 'barahona',
            
        );
        //utilizo el helper
        $data = capitalizar_todo($data);
        
        //inserta data a bd
        $this->db->insert('test', $data);

        //capturar id
        $respuesta= array(
            'err' => FALSE,
            'id_insertado' => $this->db->insert_id()
        );
        echo json_encode ($respuesta);*/

        /*========================================
        INSERTAR MAS DE UN REGISTRO A LA VEZ
        ==========================================*/

        $data = array(
            array(
                'nombre' => 'juan',
                'apellido' => 'perez',  
            ),

            array(
                'nombre' => 'maria',
                'apellido' => 'herrera',
                
            )
        );
    
        $this->db->insert_batch('test', $data);
        echo $this->db->affected_rows();

    }

    /*==================================  
        ACTUALIZAR REGISTROS
    ====================================*/

    public function actualizar(){
        $data = array(
            'nombre' => 'Victor',
            'apellido'  => 'martinez'  
        );
        //capitaliza todo el nombre y aoellido
        $data = capitalizar_todo($data);
    
        $this->db->where('id', 1);
        $this->db->update('test', $data);

        echo "se actualizo la data";
        
    }

    /*==================================  
        BORRAR REGISTRO A LA VEZ
    ====================================*/
    public function eliminar(){
        $this->db->where('id', 1);
        $this->db->delete('test');

        echo "Resgistro eliminado";
    }




    //----------------------------------------------------------------------------------
    //fx_clientes_beta
    public function clientes_beta(){
        //inicializar la base
        //$this->load->database();

        //entorno de consultas
        $query = $this->db->query('SELECT id,nombre, correo FROM clientes limit 10');

        // foreach ($query->result() as $row)
        // {
        //     echo $row->id;
        //     echo $row->nombre;
        //     echo $row->correo;
        // }

        // echo 'Total Registros: ' . $query->num_rows();
        $respuesta = array(
            'err'=>FALSE,
            'mensaje'=>'Registros cargados correctamente',
            'total_registros' =>$query->num_rows(),
            'clientes'=> $query-> result()
        );
        //genero la respuesta
        echo json_encode($respuesta);
    }

    //----------------------------------------------------------------------------------
    public function cliente($id){
        //$this->load->database();
        $query = $this->db->query('SELECT * FROM clientes where id = ' .$id);
        $fila = $query->row();

        if(isset($fila)){
            //fila existe
            $respuesta = array(
                'err'=>FALSE,
                'mensaje'=>'Registro cargado correctamente',
                'total_registros' =>1,
                'cliente'=> $fila
            );
        }else{
            //fila no existe
            $respuesta = array(
                'err'=>TRUE,
                'mensaje'=>'El registro con el id'.$id.', no existe',
                'total_registros' =>0,
                'cliente'=> null
            );    
        }
        echo json_encode($respuesta);
        //SELECT id,nombre, correo FROM `clientes` where id = 3
    }
}