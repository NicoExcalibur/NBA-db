<?php

class MainController extends CoreController{

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
}