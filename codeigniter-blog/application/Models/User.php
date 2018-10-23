<?php

//defino el namespace
namespace App\Models;
//la clase
use CodeIgniter\Model;
//que exienda del modelo de codeigniter
class User extends Model{
    //tabal de la DB
    protected $table = 'users'; //tabla a utilizar
    protected $allowedFields = ['name','email','password','picture'];//atributos
    protected $returnType='App\Entities\User'; //retornara entitites
    protected $useTimestamps=true;

    //meotdo
    public function withPosts(): array{
        //post que tendran los usuarios
    }
}




