<?php defined('BASEPATH') || exit('No direct script access allowed'); ?>

CRITICAL - 2018-10-22 11:59:07 --> Class 'App\Controllers\Controller' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 12:00:48 --> Class 'App\Controllers\Controller' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 12:02:08 --> Class 'Codeigniter\Controller' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 12:09:31 --> Use of undefined constant name - assumed 'name' (this will throw an Error in a future version of PHP)
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\application\Controllers\HolaMundoController.php(9): CodeIgniter\Debug\Exceptions->errorHandler(2, 'Use of undefine...', 'C:\\xampp\\htdocs...', 9, Array)
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(809): App\Controllers\HolaMundoController->index()
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\HolaMundoController))
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\public\index.php(45): CodeIgniter\CodeIgniter->run()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#6 {main}
CRITICAL - 2018-10-22 13:28:42 --> Class 'App\Controllers\Post' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(809): App\Controllers\PostController->index()
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\PostController))
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\public\index.php(45): CodeIgniter\CodeIgniter->run()
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#5 {main}
CRITICAL - 2018-10-22 13:29:39 --> Class 'App\Controllers\Post' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(809): App\Controllers\PostController->index()
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\PostController))
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\public\index.php(45): CodeIgniter\CodeIgniter->run()
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#5 {main}
CRITICAL - 2018-10-22 13:32:28 --> Class 'App\Models\Model' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 13:32:47 --> Class 'App\Models\Model' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 13:32:48 --> Class 'App\Models\Model' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 13:37:19 --> Class 'App\Models\Model' not found
#0 [internal function]: CodeIgniter\Debug\Exceptions->shutdownHandler()
#1 {main}
CRITICAL - 2018-10-22 13:51:48 --> Trying to get property 'title' of non-object
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\application\Views\Posts.php(3): CodeIgniter\Debug\Exceptions->errorHandler(8, 'Trying to get p...', 'C:\\xampp\\htdocs...', 3, Array)
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\View\View.php(209): include('C:\\xampp\\htdocs...')
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\Common.php(139): CodeIgniter\View\View->render('posts', Array, NULL)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\application\Controllers\PostController.php(13): view('posts', Array)
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(809): App\Controllers\PostController->index()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\PostController))
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\public\index.php(45): CodeIgniter\CodeIgniter->run()
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#9 {main}
CRITICAL - 2018-10-22 13:59:35 --> Call to a member function findAll() on null
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(809): App\Controllers\PostController->index()
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\PostController))
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\public\index.php(45): CodeIgniter\CodeIgniter->run()
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-intro\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#5 {main}
