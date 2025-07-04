<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Home::index', ['filter' => 'auth']); 
$routes->get('login', 'AuthController::login'); 
$routes->post('login', 'AuthController::login', ['filter' => 'RedirectFilter']); 
$routes->get('logout', 'AuthController::logout');

$routes->group('produk', ['filter' => 'auth'], function ($routes) { 
    $routes->get('', 'ProdukController::index');
    $routes->post('', 'ProdukController::create');
    $routes->post('edit/(:any)', 'ProdukController::edit/$1');
    $routes->get('delete/(:any)', 'ProdukController::delete/$1');
});

$routes->group('produkkategori', ['filter' => 'auth'], function ($routes) {
    $routes->get('', 'produkkategori::index');
    $routes->post('', 'produkkategori::store');
    $routes->get('edit/(:num)', 'produkkategori::edit/$1');
    $routes->post('edit/(:num)', 'produkkategori::update/$1');
    $routes->get('delete/(:num)', 'produkkategori::delete/$1');
});


$routes->get('keranjang', 'TransaksiController::index', ['filter' => 'auth']); 

$routes->get('contact', 'Home::contact');
