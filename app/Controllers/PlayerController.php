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
    
    public function player($id) {
        // dd('Je vais aller chercher en base de donnée le produit dont l id est: '. $urlParams['product_id']);

        // Je créé une instance vide de la classe Product afin de pouvoir utiliser la méthode find
        $emptyPlayer = new Player();

        $myPlayer = $emptyPlayer->find($id['id']);
        
        // Si le produit demandé n'existe pas...
        if ($myPlayer === false) {

            // J'affiche la 404 et je return de manière à stoper mon code là
            exit ('erreur 404');
        }

        $this->show('single-player', [
            'myPlayer' => $myPlayer
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