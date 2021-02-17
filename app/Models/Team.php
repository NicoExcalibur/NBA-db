<?php

namespace App\Models;

use App\Utils\Database;
use PDO;

class Team extends CoreModel {

    /**
    * @var string
    */ 
    private $name;

    /**
    * @var int
    */ 
    private $champ_nbr;

    /**
    * @var string
    */ 
    private $logo;
    
    /**
    * @var int
    */ 
    private $victories;

    /**
    * @var int
    */ 
    private $defeats;

    /**
    * @var bool
    */ 
    private $conference;


     /**
     * Méthode permettant de récupérer un enregistrement de la table Product en fonction d'un id donné
     * 
     * @param int $productId ID du produit
     * @return Team
     */
    public static function find($teamId)
    {
        // récupérer un objet PDO = connexion à la BDD
        $pdo = Database::getPDO();

        // on écrit la requête SQL pour récupérer le produit
        $sql = '
            SELECT *
            FROM team
            WHERE id = ' . $teamId;

        // query ? exec ?
        // On fait de la LECTURE = une récupration => query()
        // si on avait fait une modification, suppression, ou un ajout => exec
        $pdoStatement = $pdo->query($sql);

        // fetchObject() pour récupérer un seul résultat
        // si j'en avais eu plusieurs => fetchAll
        $result = $pdoStatement->fetchObject('App\Models\Team');
        
        return $result;
    }

    /**
     * Méthode permettant de récupérer tous les enregistrements de la table team
     * 
     * @return Team[]
     */
    public static function findAll()
    {
        $pdo = Database::getPDO();
        $sql = 'SELECT * FROM `team`';
        $pdoStatement = $pdo->query($sql);
        $results = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'App\Models\Team');
        
        return $results;
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
     * Get the value of champ_nbr
     */ 
    public function getChamp_nbr()
    {
        return $this->champ_nbr;
    }

    /**
     * Set the value of champ_nbr
     *
     * @return  self
     */ 
    public function setChamp_nbr($champ_nbr)
    {
        $this->champ_nbr = $champ_nbr;

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
     * Set the value of conference
     *
     * @return  self
     */ 
    public function setConference($conference)
    {
        $this->conference = $conference;

        return $this;
    }
}