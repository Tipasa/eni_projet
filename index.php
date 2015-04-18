<?php

////////////////////require
////Injection des classes suplémentaires
require 'class/test.php';

require 'vendor/autoload.php';

///////////////////// Chargement du framework

$app = new \Slim\Slim(['templates.path' => 'templates']);

///utilisation de classes injection

$app->test = function(){
	return new Test;
};


///////////////////////route

 $app->get('/hello/:name', function ($name) {
 
 // integration !!! $test = $app->test;
 
 echo "Hello, $name";
});

$app-> get('/', function() use ($app){
$app->render('homepage.php',compact(app));
});

// $app-> get('/contact/:name',function($name)use ($app){
// $app-> render('contact.php', compact(name));
// });


$app-> get('/statistiques',function()use ($app){
$app-> render('statistiques.php', compact(app));
})->name('statistiques');

/////////////////////////// Execution

$app->render('header.php',compact('app'));
$app->render('logo.php',compact('app'));
$app->render('menu.php',compact('app'));
$app->render('authentification.php',compact('app'));
$app->render('menu_gauche_accueil.php',compact('app'));
$app->render('body.php',compact('app'));

$app->run();
$app->render('footer.php',compact('app'));



