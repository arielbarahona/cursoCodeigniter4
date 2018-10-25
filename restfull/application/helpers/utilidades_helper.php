<?php
//helper ayudan a la reutilizacion de codigo

function capitalizar_todo($data_cruda){
    return capitalizar_arreglo($data_cruda, array(), TRUE);
}

function capitalizar_arreglo( $data_cruda, $campos_capitalizar = array(), $todos=FALSE){
    $data_lista = $data_cruda;

    foreach ($data_cruda as $nombre_campo => $valor_campo) {

        if(in_array($nombre_campo, array_values($campos_capitalizar) ) OR $todos){
            $data_lista[$nombre_campo]= strtoupper($valor_campo);
        }
    }
    return $data_lista;
}


//Clientes
function capitalizar_arreglo1( $data_cruda, $campos_capitalizar){
    $data_lista = $data_cruda;

    foreach ($data_cruda as $nombre_campo => $valor_campo) {
        if(in_array($nombre_campo, array_values($campos_capitalizar) ) ){
            $data_lista[$nombre_campo]= strtoupper($valor_campo);

        }
    }
    return $data_lista;
}


//meses
function obtener_mes($mes){
    $mes -=1;

    $meses = array(
        'enero',
        'febrero',
        'marzo',
        'abril',
        'mayo',
        'junio',
        'julio',
        'agosto',
        'septiembre',
        'octubre',
        'noviembre',
        'diciembre'
    );
    return $meses [ $mes ];

}







?>