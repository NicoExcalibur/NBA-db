<?php 

class PlayerController {

     //afficher la home
     public function playerListPage() {

        $playerModel = new Player();
        $playerList = $playerModel->findAllPlayers();

        // dump($playerList); die;

        // afficher la vue (dernière ligne droite !
        $this->show('player-list', [
            'playerList' => $playerList 
        ]);
    }

}