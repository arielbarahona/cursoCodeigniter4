<?php
namespace App\Controllers;

use CodeIgniter\Controller;

class HolaMundoController extends Controller{
    public function index(string $name){
        $name = 'Israel';
        return view( 'hola_mundo', compact('name'));

    }
}