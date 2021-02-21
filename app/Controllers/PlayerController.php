<?php 

class PlayerController {

     //afficher la home
     public function playerListPage() {

        $playerModel = new Player();
        $playerList = $playerModel->findAllPlayers();

        // dump($playerList); die;

        // afficher la vue (dernière ligne droite !
        $this->show('players', [
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