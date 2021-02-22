<?php 

class TeamController {

    public function team($id) {
        // dd('Je vais aller chercher en base de donnée le produit dont l id est: '. $id['id']);

        // Je créé une instance vide de la classe Product afin de pouvoir utiliser la méthode find
        $emptyTeam = new Team();
        $myTeam = $emptyTeam->find($id['id']);

        $playerModel = new Player();
        $playerList = $playerModel->findPlayersByTeamId($id['id']);
        
        // Si le produit demandé n'existe pas...
        if ($myTeam === false) {

            // J'affiche la 404 et je return de manière à stoper mon code là
            exit ('erreur 404');
        }

        $this->show('single-team', [
            'myTeam' => $myTeam,
            'playerList' => $playerList
        ]);
    }

    //affiche la vue
    private function show($viewName, $viewData = []) {

        global $router;

        // définir l'url absolue pour nos assets
        $viewData['assetsBaseUri'] = $_SERVER['BASE_URI'] . '/assets/';

        require __DIR__ . '/../Views/header.tpl.php';
        require __DIR__ . "/../Views/{$viewName}.tpl.php";
        require __DIR__ . '/../Views/footer.tpl.php';

    }

}