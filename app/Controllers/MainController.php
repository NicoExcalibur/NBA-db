<?php

// namespace app\Controllers;

// use app\Models\Player;

class MainController {

    //afficher la home
    public function home() {

        //récup les équipes en page d'accueil
        $teamModel = new Team();
        $teamList = $teamModel->findAllForHomepage(); // on récupère un array d'objets Team

        $playerModel = new Player();
        $playerList = $playerModel->findAllPlayers();

        // dump($playerList); die;

        // afficher la vue (dernière ligne droite !
        $this->show('home', [
            'teamList'   => $teamList,
            'playerList' => $playerList 
        ]);
    }

    //affiche la vue
    private function show($viewName, $viewData = []) {

        require __DIR__ . '/../Views/header.tpl.php';
        require __DIR__ . "/../Views/{$viewName}.tpl.php";
        require __DIR__ . '/../Views/footer.tpl.php';

    }

}