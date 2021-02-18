<?php

class Article {
    private $id;
    private $name;
    private $logo;
    private $champ_nbr;
    private $victories;
    private $defeats;
    private $conference;

    public function findAllForHomepage()
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // exécuter la requête
        $sql = "SELECT * FROM `team`";
        // query() pour une sélection
        $pdoStatement = $pdo->query($sql);

        // récupérer les résultats et les renvoyer
        $teams = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Team');

        return $teams;
    }
}