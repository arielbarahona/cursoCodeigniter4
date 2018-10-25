<?php namespace Config;

      use CodeIgniter\Router\RouteCollection;


/**
 * --------------------------------------------------------------------
 * URI Routing
 * --------------------------------------------------------------------
 * This file lets you re-map URI requests to specific controller functions.
 *
 * Typically there is a one-to-one relationship between a URL string
 * and its corresponding controller class/method. The segments in a
 * URL normally follow this pattern:
 *
 *    example.com/class/method/id
 *
 * In some instances, however, you may want to remap this relationship
 * so that a different class/function is called than the one
 * corresponding to the URL.
 *
 */

// Create a new instance of our RouteCollection class.
$routes = Services::routes(true);

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(BASEPATH.'Config/Routes.php'))
{
	require BASEPATH.'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 * The RouteCollection object allows you to modify the way that the
 * Router works, by acting as a holder for it's configuration settings.
 * The following methods can be called on the object to modify
 * the default operations.
 *
 *    $routes->defaultNamespace()
 *
 * Modifies the namespace that is added to a controller if it doesn't
 * already have one. By default this is the global namespace (\).
 *
 *    $routes->defaultController()
 *
 * Changes the name of the class used as a controller when the route
 * points to a folder instead of a class.
 *
 *    $routes->defaultMethod()
 *
 * Assigns the method inside the controller that is ran when the
 * Router is unable to determine the appropriate method to run.
 *
 *    $routes->setAutoRoute()
 *
 * Determines whether the Router will attempt to match URIs to
 * Controllers when no specific route has been defined. If false,
 * only routes that have been defined here will be available.
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/**
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->add('/', 'Home::index');
//agregando la ruta
//$routes->get('/flash', 'Home::flash');
//$routes->get('/register', 'AuthController::registerForm');//GET->para mostrsr el formulario
//$routes->post('/register', 'AuthController::registerForm');//POST->para procesar el form

//se pueden agregar ambas funcionalidades: con MATCH
$routes->match(['GET','POST'], '/register','AuthController::register');//RUTA DE REGISTRO
//     /register-> es la ruta
//		register--> metodo
//      AuthController----> controlador

$routes->match(['GET','POST'], '/login','AuthController::login');//RUTA DE LOGIN


//RUTAS DEL DASHBOARD
$routes->get('/dashboard', 'DashboardController::index');
$routes->get('/logout', 'DashboardController::logout');

//RUTAS POST DEL DASHBOARD
$routes->get('/posts','PostController::index');
$routes->match(['GET','POST'],'/posts/create' ,'PostController::create',['as'=>'posts_create']);
$routes->match(['GET','POST'], '/posts/edit/(:num)','PostController::edit/$1',['as'=>'posts_edit']);
$routes->get('/posts/destroy/(:num)', 'PostController::destroy/$1',['as'=>'posts_destroy']);

// $routes->group( 'posts', [], function (RouteCollection $routes) {
// 	$routes->get( '/', 'PostController::index');
// 	$routes->match(['GET', 'POST'], 'create', 'PostController::create', ['as' => 'posts_create']);
// 	$routes->match(['GET', 'POST'],'edit/(:num)', 'PostController::edit/$1', ['as' => 'posts_edit']);
// 	$routes->get( 'destroy/(:num)', 'PostController::destroy/$1', ['as' => 'posts_destroy']);
// });


//RUTAS DE PERFIL---profile
$routes->get('/profile', 'ProfileController::index');
$routes->post('/profile', 'ProfileController::updateProfile');

//relations
$routes->get('/relations','RelationController::index');

//Ajax Routes
$routes->get('/ajax', 'AjaxController::index');
$routes->post('/ajax/load', 'AjaxController::loadPosts' , ['as'=> 'load_posts_with_ajax']);

//API routes
$routes->group(
	'api',
	[
		'namespace' => 'App\Controllers\Api',
	],
	function (RouteCollection $routes) {
		$routes->resource('courses', [
			'controller' => 'CourseController'
		]);
	}
);





/**
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need to it be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH.'Config/'.ENVIRONMENT.'/Routes.php'))
{
	require APPPATH.'Config/'.ENVIRONMENT.'/Routes.php';
}
