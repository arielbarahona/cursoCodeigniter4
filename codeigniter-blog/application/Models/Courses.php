<?php namespace App\Models;

use CodeIgniter\Model;

class Courses extends Model
{
    protected $table = 'courses';

    protected $allowedFields=['name','author','price','description'];
}
