<?php defined('BASEPATH') || exit('No direct script access allowed'); ?>

CRITICAL - 2018-10-25 09:03:23 --> Undefined index: C:\xampp\tmp\php561B.tmp
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Entity.php(151): CodeIgniter\Debug\Exceptions->errorHandler(8, 'Undefined index...', 'C:\\xampp\\htdocs...', 151, Array)
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(491): CodeIgniter\Entity->toArray(true)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(689): CodeIgniter\Model::classToArray(Object(App\Entities\User), 'datetime')
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Controllers\ProfileController.php(60): CodeIgniter\Model->update(Array, Object(App\Entities\User))
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(809): App\Controllers\ProfileController->updateProfile()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\ProfileController))
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#9 {main}
CRITICAL - 2018-10-25 09:06:47 --> Undefined index: C:\xampp\tmp\php76C5.tmp
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Entity.php(151): CodeIgniter\Debug\Exceptions->errorHandler(8, 'Undefined index...', 'C:\\xampp\\htdocs...', 151, Array)
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(491): CodeIgniter\Entity->toArray(true)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(689): CodeIgniter\Model::classToArray(Object(App\Entities\User), 'datetime')
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Controllers\ProfileController.php(60): CodeIgniter\Model->update(Array, Object(App\Entities\User))
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(809): App\Controllers\ProfileController->updateProfile()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\ProfileController))
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#9 {main}
CRITICAL - 2018-10-25 09:12:38 --> Undefined index: C:\xampp\tmp\phpCFAD.tmp
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Entity.php(151): CodeIgniter\Debug\Exceptions->errorHandler(8, 'Undefined index...', 'C:\\xampp\\htdocs...', 151, Array)
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(491): CodeIgniter\Entity->toArray(true)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(689): CodeIgniter\Model::classToArray(Object(App\Entities\User), 'datetime')
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Controllers\ProfileController.php(60): CodeIgniter\Model->update(Array, Object(App\Entities\User))
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(809): App\Controllers\ProfileController->updateProfile()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\ProfileController))
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#9 {main}
CRITICAL - 2018-10-25 10:32:57 --> Invalid file: ajax/index.php
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\View\View.php(197): CodeIgniter\Exceptions\FrameworkException::forInvalidFile('ajax/index.php')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Common.php(139): CodeIgniter\View\View->render('ajax/index', Array, NULL)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Controllers\BaseController.php(11): view('ajax/index', Array)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Controllers\AjaxController.php(11): App\Controllers\BaseController->view('ajax/index', 'Cargar datos co...')
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(809): App\Controllers\AjaxController->index()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\AjaxController))
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#9 {main}
CRITICAL - 2018-10-25 11:42:41 --> Class 'Config\ApiAuth' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(285): CodeIgniter\Filters\Filters->run('api/courses', 'before')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#4 {main}
CRITICAL - 2018-10-25 11:45:27 --> Class 'Config\ApiAuth' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(285): CodeIgniter\Filters\Filters->run('api/courses', 'before')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#4 {main}
CRITICAL - 2018-10-25 11:49:06 --> Class 'App\Models\Course' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(809): App\Controllers\Api\CourseController->create()
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\Api\CourseController))
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#5 {main}
CRITICAL - 2018-10-25 12:00:36 --> You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE `users`.`id` IS NULL' at line 4
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Database\MySQLi\Connection.php(312): mysqli->query('SELECT *\nFROM `...')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Database\BaseConnection.php(704): CodeIgniter\Database\MySQLi\Connection->execute('SELECT *\nFROM `...')
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Database\BaseConnection.php(626): CodeIgniter\Database\BaseConnection->simpleQuery('SELECT *\nFROM `...')
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Database\BaseBuilder.php(1400): CodeIgniter\Database\BaseConnection->query('SELECT *\nFROM `...', Array)
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Model.php(1433): CodeIgniter\Database\BaseBuilder->get()
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Models\User.php(21): CodeIgniter\Model->__call('get', Array)
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\application\Controllers\RelationController.php(8): App\Models\User->withPosts()
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(809): App\Controllers\RelationController->index()
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(App\Controllers\RelationController))
#9 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#10 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#11 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#12 {main}
CRITICAL - 2018-10-25 12:03:31 --> Class 'Config\ApiAuth' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(285): CodeIgniter\Filters\Filters->run('api/courses', 'before')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#4 {main}
CRITICAL - 2018-10-25 12:03:32 --> Class 'Config\ApiAuth' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(285): CodeIgniter\Filters\Filters->run('api/courses', 'before')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#4 {main}
CRITICAL - 2018-10-25 12:03:33 --> Class 'Config\ApiAuth' not found
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(285): CodeIgniter\Filters\Filters->run('api/courses', 'before')
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\public\index.php(45): CodeIgniter\CodeIgniter->run()
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Server\rewrite.php(39): require_once('C:\\xampp\\htdocs...')
#4 {main}
