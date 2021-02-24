<?php 

class PlayerController extends CoreController {

    public function playerListPage() {

        $playerModel = new Player();
        $playerList = $playerModel->findAllPlayers();
        
        // TODO
        // $teamModel = new Team();
        // $teamList = $teamModel->getTeamById();

        // dump($teamList); die;

        // afficher la vue (dernière ligne droite !
        $this->show('players', [
            'playerList' => $playerList
            // 'teamList' => $teamList 
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

    /**
     * Affiche la page d'ajout d'un joueur
     */
    public function add()
    {
        // On commence par récupérer tous les Models Student
        // pour transmettre ensuite à la view
        $emptyPlayer = new Player();
        $players = $emptyPlayer->findAllPlayers();
       
        $this->show('add', [
            'players' => $players
        ]);

    }

    /**
     * Méthode permettant d'insérer un nouvel étudiant en BDD
     */
    public function create()
    {
        
        // Filter input permet de récupérer les valeurs depuis $_POST (ou $_GET, ou $_COOKIE...) puis de leur appliquer un filtre.
        // On peut trouver ces filtres sur la page  https://www.php.net/manual/fr/filter.filters.php
        $position = filter_input(INPUT_POST, 'position', FILTER_SANITIZE_STRING);
        $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING);
        $points_avg = filter_input(INPUT_POST, 'points_avg', FILTER_SANITIZE_STRING);
        $assists_avg = filter_input(INPUT_POST, 'assists_avg', FILTER_SANITIZE_STRING);
        $rebounds_avg = filter_input(INPUT_POST, 'rebounds_avg', FILTER_SANITIZE_STRING);
        $blocks_avg = filter_input(INPUT_POST, 'blocks_avg', FILTER_SANITIZE_STRING);
        $photo = filter_input(INPUT_POST, 'photo', FILTER_SANITIZE_URL);
        $team_id = filter_input(INPUT_POST, 'team_id', FILTER_SANITIZE_NUMBER_INT);
        
        // dump($photo);
        // On crée un nouveau Model
        $player = new Player();

        // On renseigne les propriétés
        $player->setPosition($position);
        $player->setName($name);
        $player->setPointsAvg($points_avg);
        $player->setAssistsAvg($assists_avg);
        $player->setReboundsAvg($rebounds_avg);
        $player->setBlocksAvg($blocks_avg);
        $player->setPhoto($photo);
        $player->setTeamId($team_id);
        
        // dump($player);

        // On sauvergarde en DB
        if ($player->save()) {
    
            // @copyright Quentin Brh.
            $this->redirect('player-list');
        }
    }

     /**
     * Méthode s'occupant d'afficher le formulaire de modification d'un produit
     *
     * @return void
     */
    public function showUpdate($id)
    {
        // Je récupere le player dont l'id est passé dans l'url
        $emptyPlayer = new Player();
        $myPlayer = $emptyPlayer->find($id['id']);
        
        // Si le produit demandé n'existe pas...
        if ($myPlayer === false) {

        // J'affiche la 404 et je return de manière à stoper mon code là
        exit ('erreur 404');
        }

        $this->show('update', [
            'myPlayer' => $myPlayer
        ]);
    }

    public function edit($id)
    {
        // Je récupere le player dont l'id est passé dans l'url

        $emptyPlayer = new Player();
        $player = $emptyPlayer->find($id['id']);
        
        // Si le produit demandé n'existe pas...
        if ($player === false) {

        // J'affiche la 404 et je return de manière à stoper mon code là
        exit ('erreur 404');
        } 

        $position = filter_input(INPUT_POST, 'position', FILTER_SANITIZE_STRING);
        $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING);
        $points_avg = filter_input(INPUT_POST, 'points_avg', FILTER_SANITIZE_STRING);
        $assists_avg = filter_input(INPUT_POST, 'assists_avg', FILTER_SANITIZE_STRING);
        $rebounds_avg = filter_input(INPUT_POST, 'rebounds_avg', FILTER_SANITIZE_STRING);
        $blocks_avg = filter_input(INPUT_POST, 'blocks_avg', FILTER_SANITIZE_STRING);
        $photo = filter_input(INPUT_POST, 'photo', FILTER_SANITIZE_URL);
        $team_id = filter_input(INPUT_POST, 'team_id', FILTER_SANITIZE_NUMBER_INT);

        // On renseigne les propriétés
        $player->setPosition($position);
        $player->setName($name);
        $player->setPointsAvg($points_avg);
        $player->setAssistsAvg($assists_avg);
        $player->setReboundsAvg($rebounds_avg);
        $player->setBlocksAvg($blocks_avg);
        $player->setPhoto($photo);
        $player->setTeamId($team_id);
        
        if ($player->save()) {
            
            // @copyright Quentin Brh.
            $this->redirect('player-list');
        }else{
            echo ('Erreur');
        }
    }

    public function delete($id)
    {
        $emptyPlayer = new Player();
        $player = $emptyPlayer->find($id['id']);

        // En premier lieu, je vérifie si elle existe bien !
        if (empty($player)) {

            exit ('erreur 404');
        }

        $player->delete();

        // A partir là je vais indiquer à mon navigateur d'aller sur cette URL là
        header('Location: '.$router->generate('player-list'));
    }
}
