<?php

// inclure les dépendances composer
require __DIR__ . '/../vendor/autoload.php';

// Mes controllers
require __DIR__ . '/../app/Controllers/CoreController.php';
require __DIR__ . '/../app/Controllers/MainController.php';
require __DIR__ . '/../app/Controllers/PlayerController.php';
require __DIR__ . '/../app/Controllers/TeamController.php';

// Mes classes
require __DIR__ . '/../app/Models/CoreModel.php';
require __DIR__ . '/../app/Models/Team.php';
require __DIR__ . '/../app/Models/Player.php';

// récupérer la route qui a été demandée par l'utilisateur
$router = new AltoRouter;
$router->setBasePath('/NBAdb/public');

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

$router->map(
    'GET',
    '/players',
    [
        'method' => 'playerListPage',
        'controller' => 'PlayerController'
    ],
    'player-list'
);

$router->map(
    'GET',
    '/players/[i:id]',
    [
        'method' => 'player',
        'controller' => 'PlayerController'
    ],
    'single-player'
);

$router->map(
    'GET',
    '/players/add',
    [
        'method' => 'add',
        'controller' => 'PlayerController'
    ],
    'player-add'
);

$router->map(
    'POST',
    '/players/add',
    [
        'method' => 'create',
        'controller' => 'PlayerController'
    ],
    'player-create'
);

$router->map(
    'GET',
    '/teams/[i:id]',
    [
        'method' => 'team',
        'controller' => 'TeamController'
    ],
    'single-team'
);

$router->map(
    'GET',
    '/ranks',
    [
        'method' => 'rankings',
        'controller' => 'TeamController'   
    ],
    'ranking'
);

$router->map(
    'GET',
    '/players/update/[i:id]',
    [
        'controller' => 'PlayerController',
        'method' => 'showUpdate',
    ],
    'player-update'
);

$router->map(
    'POST',
    '/players/update/[i:id]',
    [
        'controller' => 'PlayerController',
        'method' => 'edit',
    ],
    'player-update-post'
);

$router->map(
    'GET',
    '/players/delete/[i:id]',
    [
        'controller' => 'PlayerController',
        'method' => 'delete',
    ],
    'player-delete'
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
$arguments = $match['params'];

// dump($match); die;

$controller = new $controllerName();
$controller->$methodName($arguments);