<?php

// namespace app\Controllers;

// use app\Models\Player;

class MainController {

    //afficher la home
    public function home() {

        //récup les équipes en page d'accueil
        $eastTeamModel = new Team();
        $eastTeamList = $eastTeamModel->findAllEast(); // on récupère un array d'objets Team

        $westTeamModel = new Team();
        $westTeamList = $westTeamModel->findAllWest(); // on récupère un array d'objets Team

        // afficher la vue (dernière ligne droite !
        $this->show('home', [
            'eastTeamList'   => $eastTeamList,
            'westTeamList'   => $westTeamList
        ]);
    }

    //affiche la vue
    private function show($viewName, $viewData = []) {

        global $router;

        require __DIR__ . '/../Views/header.tpl.php';
        require __DIR__ . "/../Views/{$viewName}.tpl.php";
        require __DIR__ . '/../Views/footer.tpl.php';

    }

}