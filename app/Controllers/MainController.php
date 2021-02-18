<?php

class MainController {

    //afficher la home
    public function home() {

        //récup les équipes en page d'accueil
        $teamModel = new Team();
        $teamList = $teamModel->findAllForHomepage(); // on récupère un array d'objets Team

        // afficher la vue (dernière ligne droite !
        $this->show('home', [
            'teamList' => $teamList
        ]);
    }

    //affiche la vue
    private function show($viewName, $viewData = []) {

        require __DIR__ . '/../Views/header.tpl.php';
        require __DIR__ . "/../Views/{$viewName}.tpl.php";
        require __DIR__ . '/../Views/footer.tpl.php';

    }

}