<?php
namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class Guest implements FilterInterface{
    
    public function before( RequestInterface $request ) {
		if ( session('id') && ! $request->isCLI()) {
			session()->setFlashdata('message', 'Acceso denegado');
			return redirect('/dashboard');
		}
	}

	/**
	 * Allows After filters to inspect and modify the response
	 * object as needed. This method does not allow any way
	 * to stop execution of other after filters, short of
	 * throwing an Exception or Error.
	 *
	 * @param \CodeIgniter\HTTP\RequestInterface $request
	 * @param \CodeIgniter\HTTP\ResponseInterface $response
	 *
	 * @return mixed
	 */
	public function after( RequestInterface $request, ResponseInterface $response ) {
		// TODO: Implement after() method.
	}
    
}