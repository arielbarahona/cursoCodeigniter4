<?php defined('BASEPATH') || exit('No direct script access allowed'); ?>

CRITICAL - 2018-10-22 17:27:26 --> Migrations have been loaded but are disabled or setup incorrectly.
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Database\MigrationRunner.php(192): CodeIgniter\Exceptions\ConfigException::forDisabledMigrations()
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Database\MigrateRollback.php(120): CodeIgniter\Database\MigrationRunner->version('0', NULL)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(120): CodeIgniter\Commands\Database\MigrateRollback->run(Array)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(93): CodeIgniter\CLI\CommandRunner->runCommand('migrate:rollbac...', Array)
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\BaseCommand.php(143): CodeIgniter\CLI\CommandRunner->index(Array)
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Database\MigrateRefresh.php(104): CodeIgniter\CLI\BaseCommand->call('migrate:rollbac...')
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(120): CodeIgniter\Commands\Database\MigrateRefresh->run(Array)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(93): CodeIgniter\CLI\CommandRunner->runCommand('migrate:refresh', Array)
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(71): CodeIgniter\CLI\CommandRunner->index(Array)
#9 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(805): CodeIgniter\CLI\CommandRunner->_remap('index', 'migrate:refresh')
#10 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(CodeIgniter\CLI\CommandRunner))
#11 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#12 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\Console.php(79): CodeIgniter\CodeIgniter->run()
#13 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\spark(58): CodeIgniter\CLI\Console->run()
#14 {main}
CRITICAL - 2018-10-22 17:36:54 --> Migrations have been loaded but are disabled or setup incorrectly.
#0 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Database\MigrationRunner.php(192): CodeIgniter\Exceptions\ConfigException::forDisabledMigrations()
#1 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Database\MigrateRollback.php(120): CodeIgniter\Database\MigrationRunner->version('0', NULL)
#2 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(120): CodeIgniter\Commands\Database\MigrateRollback->run(Array)
#3 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(93): CodeIgniter\CLI\CommandRunner->runCommand('migrate:rollbac...', Array)
#4 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\BaseCommand.php(143): CodeIgniter\CLI\CommandRunner->index(Array)
#5 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\Commands\Database\MigrateRefresh.php(104): CodeIgniter\CLI\BaseCommand->call('migrate:rollbac...')
#6 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(120): CodeIgniter\Commands\Database\MigrateRefresh->run(Array)
#7 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(93): CodeIgniter\CLI\CommandRunner->runCommand('migrate:refresh', Array)
#8 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\CommandRunner.php(71): CodeIgniter\CLI\CommandRunner->index(Array)
#9 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(805): CodeIgniter\CLI\CommandRunner->_remap('index', 'migrate:refresh')
#10 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(306): CodeIgniter\CodeIgniter->runController(Object(CodeIgniter\CLI\CommandRunner))
#11 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CodeIgniter.php(221): CodeIgniter\CodeIgniter->handleRequest(NULL, Object(Config\Cache), false)
#12 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\system\CLI\Console.php(79): CodeIgniter\CodeIgniter->run()
#13 C:\xampp\htdocs\cursoCodeigniter4\codeigniter-blog\spark(58): CodeIgniter\CLI\Console->run()
#14 {main}
