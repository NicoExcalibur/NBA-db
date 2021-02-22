<?php

// namespace app\Models;

class Team {
    
    private $id;
    private $name;
    private $logo;
    private $champ_nbr;
    private $victories;
    private $defeats;
    private $conference;

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Get the value of name
     */ 
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set the value of name
     *
     * @return  self
     */ 
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

     /**
     * Get the value of logo
     */ 
    public function getLogo()
    {
        return $this->logo;
    }

    /**
     * Set the value of logo
     *
     * @return  self
     */ 
    public function setLogo($logo)
    {
        $this->logo = $logo;

        return $this;
    }

      /**
     * Get the value of champ_nbr
     */ 
    public function getChampNbr()
    {
        return $this->champ_nbr;
    }

    /**
     * Set the value of champ_nbr
     *
     * @return  self
     */ 
    public function setChampNbr($champ_nbr)
    {
        $this->champ_nbr = $champ_nbr;

        return $this;
    }

    /**
     * Get the value of victories
     */ 
    public function getVictories()
    {
        return $this->victories;
    }

    /**
     * Set the value of victories
     *
     * @return  self
     */ 
    public function setVictories($victories)
    {
        $this->victories = $victories;

        return $this;
    }

    /**
     * Get the value of defeats
     */ 
    public function getDefeats()
    {
        return $this->defeats;
    }

    /**
     * Set the value of defeats
     *
     * @return  self
     */ 
    public function setDefeats($defeats)
    {
        $this->defeats = $defeats;

        return $this;
    }

    /**
     * Get the value of conference
     */ 
    public function getConference()
    {
        return $this->conference;
    }

    /**
     * Set the value of defeats
     *
     * @return  self
     */ 
    public function setConference($conference)
    {
        $this->conference = $conference;

        return $this;
    }


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

    public function findAllEast()
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // exécuter la requête
        $sql = "SELECT * FROM `team` WHERE `conference` = 0";
        // query() pour une sélection
        $pdoStatement = $pdo->query($sql);

        // récupérer les résultats et les renvoyer
        $Easternteams = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Team');

        return $Easternteams;
    }

    public function findAllWest()
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // exécuter la requête
        $sql = "SELECT * FROM `team` WHERE `conference` = 1";
        // query() pour une sélection
        $pdoStatement = $pdo->query($sql);

        // récupérer les résultats et les renvoyer
        $Westernteams = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Team');

        return $Westernteams;
    }

    public function find($id)
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');
        
        $sql = "SELECT * FROM team WHERE id = {$id};";
        
        // Je donne à PDO ma requete SQL
        // PDO me répond sous la forme d'un "jeu de résultat"
        $pdoStatement = $pdo->query($sql);

        // SI je souhaite récuperer un seul produit sous la forme d'un tableau assoc
        // je fait un fetch....
        // Si je souhaite récuperer un seul produit sous la forme d'une instance
        // je fait un fetchObject
        $oneTeam = $pdoStatement->fetchObject('Team');

        return $oneTeam;
    }
}