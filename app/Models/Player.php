<?php

class Player {
    
    private $id;
    private $position;
    private $name;
    private $points_avg;
    private $assists_avg;
    private $rebounds_avg;
    private $blocks_avg;
    private $photo;
    private $team_id;

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
     * Get the value of position
     */ 
    public function getPosition()
    {
        return $this->position;
    }

    /**
     * Set the value of position
     *
     * @return  self
     */ 
    public function setPosition($position)
    {
        $this->position = $position;

        return $this;
    }

     /**
     * Get the value of points_avg
     */ 
    public function getPointsAvg()
    {
        return $this->points_avg;
    }

    /**
     * Set the value of points_avg
     *
     * @return  self
     */ 
    public function setPointsAvg($points_avg)
    {
        $this->points_avg = $points_avg;

        return $this;
    }

     /**
     * Get the value of assists_avg
     */ 
    public function getAssistsAvg()
    {
        return $this->assists_avg;
    }

    /**
     * Set the value of assists_avg
     *
     * @return  self
     */ 
    public function setAssistsAvg($assists_avg)
    {
        $this->assists_avg = $assists_avg;

        return $this;
    }

     /**
     * Get the value of rebounds_avg
     */ 
    public function getReboundsAvg()
    {
        return $this->rebounds_avg;
    }

    /**
     * Set the value of assists_avg
     *
     * @return  self
     */ 
    public function setReboundsAvg($rebounds_avg)
    {
        $this->rebounds_avg = $rebounds_avg;

        return $this;
    }
    
    /**
     * Get the value of blocks_avg
     */ 
    public function getBlocksAvg()
    {
        return $this->blocks_avg;
    }

    /**
     * Set the value of blocks_avg
     *
     * @return  self
     */ 
    public function setBlocksAvg($blocks_avg)
    {
        $this->blocks_avg = $blocks_avg;

        return $this;
    }

    /**
     * Get the value of photo
     */ 
    public function getPhoto()
    {
        return $this->photo;
    }

    /**
     * Set the value of photo
     *
     * @return  self
     */ 
    public function setPhoto($photo)
    {
        $this->photo = $photo;

        return $this;
    }

    /**
     * Get the value of team_id
     */ 
    public function getTeamId()
    {
        return $this->team_id;
    }

    /**
     * Set the value of photo
     *
     * @return  self
     */ 
    public function setTeamId($team_id)
    {
        $this->team_id = $team_id;

        return $this;
    }

    public function findAllPlayers()
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // exécuter la requête
        $sql = "SELECT * FROM `player`";
        // query() pour une sélection
        $pdoStatement = $pdo->query($sql);

        // récupérer les résultats et les renvoyer
        $players = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Player');

        return $players;
    }

    public function find($id)
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');
        
        $sql = "SELECT * FROM player WHERE id = {$id};";
        
        // Je donne à PDO ma requete SQL
        // PDO me répond sous la forme d'un "jeu de résultat"
        $pdoStatement = $pdo->query($sql);

        // SI je souhaite récuperer un seul produit sous la forme d'un tableau assoc
        // je fait un fetch....
        // Si je souhaite récuperer un seul produit sous la forme d'une instance
        // je fait un fetchObject
        $onePlayer = $pdoStatement->fetchObject('Player');

        return $onePlayer;
    }
}