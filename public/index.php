<?php

// inclure les dépendances composer
require __DIR__ . '/../vendor/autoload.php';

require __DIR__ . '/../app/Controllers/MainController.php';
require __DIR__ . '/../app/Models/Team.php';

// récupérer la route qui a été demandée par l'utilisateur
$router = new AltoRouter;
$router->setBasePath('/htdocs/NBAdb');

// déclarer les routes
$router->map(
    'GET',
    '/',
    [
        'method' => 'home',
        'controller' => 'MainController'
    ],
    'homepage'
);

// comparer cette route aux routes qui correspondent aux pages existantes
$match = $router->match();

if ($match === false) {
    exit ('erreur 404');
}

// déclencher la méthode de contrôleur qui correspond <= objectif du frontcontroller
// Récupérer le nom de la méthode et le nom de la classe de controller à utiliser
$methodName = $match['target']['method'];
$controllerName = $match['target']['controller'];

$controller = new $controllerName();
$controller->$methodName();