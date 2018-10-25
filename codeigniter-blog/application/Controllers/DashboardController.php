<?php


namespace App\Controllers;

class DashboardController extends BaseController{
    //metodo de dashboard
    public function index(){
        return $this->view('dashboard/index', 'pagina de dashboard');
    }
    //metodo de cerrar sesion
    public function logout(){
        session()->destroy();
        session()->start();
        session()->regenerate();
        session()->setFlashdata('message','has cerrado sesion');
        return redirect('/login');

    }
    
}