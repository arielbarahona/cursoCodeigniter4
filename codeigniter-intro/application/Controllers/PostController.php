<?php
namespace App\Controllers;

use App\Models\Post;
use CodeIgniter\Controller;

class PostController extends Controller{

   public function index(){
        $model = new Post;
        $posts = $model->asObject()->findAll();
       // \Kint::dump($posts); die(); //para sacar informacion
       
       return view('posts', compact('posts'));


   }

   public function show (int $id){
       // \Kint::dump($id);
       $model = new Post;
       $post = $model->asObject()->find($id);
       return view('posts', compact('posts'));
   }
}