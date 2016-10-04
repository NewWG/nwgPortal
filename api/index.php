<?php

require_once __DIR__.'/vendor/autoload.php';

ini_set('memory_limit', '-1');
date_default_timezone_set('America/Sao_Paulo');

$app = new Silex\Application();

$app['debug'] = true;
$path_api = 'api';

$config_database = [
	'driver' => 'pdo_mysql',
	'host' 	=> 'localhost',
	'dbname' => 'vagrant',
    'user' => 'root',
    'password' => 'vagrant',
    'charset' => 'utf8mb4'
];

if(!$app['debug']){
	$path_api = '';
	$config_database = [
		'driver' => 'pdo_mysql',
		'host' 	=> 'mysql.santamotion.com',
		'dbname' => 'sitesanta2016',
	    'user' => 'sitesanta2016',
	    'password' => 'sitesanta',
	    'charset' => 'utf8mb4'
	];
}

$app->register(new Silex\Provider\DoctrineServiceProvider(),
	[
		'db.options' => $config_database
	]
);

$app->get($path_api.'/filmes', function() use ($app){
	$sql = "SELECT * FROM filmes WHERE op=1 AND name <> '' ORDER BY ord ASC";
	$filmes = $app['db']->fetchAll($sql);

	return $app->json($filmes);
});

$app->get($path_api.'/filmes/{diretor}', function($diretor) use ($app){
	$sql = "SELECT * FROM filmes WHERE diretor like '%$diretor%' AND op=1 AND name <> '' ORDER BY ord ASC";
	$filmes = $app['db']->fetchAll($sql);
	return $app->json($filmes);
});

$app->run();