<?php


namespace App\Models;
use CodeIgniter\Model;

class Post extends Model{
    protected $table='posts';
    protected $allowedFields = ['title', 'body'];
    protected $useTimestamps = false;

}