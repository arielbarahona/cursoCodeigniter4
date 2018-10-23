<?php

namespace App\Controllers;
use CodeIgniter\Controller;

class BaseController extends Controller{
    protected $helpers = ['html','form','nav'];

    public function view (String $view, string $title, array $data = []){
        echo view('partials/header', compact('title'));
        echo view($view, $data);
        echo view('partials/footer');

    }
}