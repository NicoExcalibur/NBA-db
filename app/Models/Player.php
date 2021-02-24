<?php

class Player extends CoreModel{
    
    private $position;
    private $points_avg;
    private $assists_avg;
    private $rebounds_avg;
    private $blocks_avg;
    private $photo;
    private $team_id;


    

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
        $sql = "SELECT * FROM `player` ORDER BY `name`";
        // query() pour une sélection
        $pdoStatement = $pdo->query($sql);

        // récupérer les résultats et les renvoyer
        $players = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Player');

        return $players;
    }

    static function find($id)
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

    public function insert() {

        // Appel de notre interprète SQL : PDO
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // On définit notre requête avec des tokens/mots remplaçant nos valeurs. On indique ainsi à MySQL à quoi doit ressembler la requête, peu importe nos valeurs.
        $sql = "INSERT INTO `player` (`position`,`name`,`points_avg`, `assists_avg`, `rebounds_avg`, `blocks_avg`, `photo`, `team_id` ) 
                VALUES (:position, :name, :points_avg, :assists_avg, :rebounds_avg, :blocks_avg, :photo, :team_id)";

        // On prépare la requête

        $pdoStatement = $pdo->prepare($sql);

        // On remplace les tokens par leur vraie valeur. Et en plus, on peut ajouter une seconde sécurité pour forcer le type de la donnée
        // On utilise pour ça, la méthode bindValue : https://www.php.net/manual/fr/pdostatement.bindvalue.php

        $pdoStatement->bindValue(':position', $this->position, PDO::PARAM_STR);
        $pdoStatement->bindValue(':name', $this->name, PDO::PARAM_STR);
        $pdoStatement->bindValue(':points_avg', $this->points_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':assists_avg', $this->assists_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':rebounds_avg', $this->rebounds_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':blocks_avg', $this->blocks_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':photo', $this->photo, PDO::PARAM_STR);
        $pdoStatement->bindValue(':team_id', $this->team_id, PDO::PARAM_INT);

        // Execution de la requête ! Execute renvoie true si la requête fonctionne
        $result = $pdoStatement->execute();

        // Si ma requête fonctionne
        if($result) {
            // Je mets à jour l'ID de mon objet avec le dernier ID inséré en BDD.
            $this->id = $pdo->lastInsertId();
            // On retourne pour indiquer que la requête s'est bien passée
            return true;
        }

        // Si le code arrive jusqu'ici, c'est que la requête ne s'est pas bien passée. On renvoie false.
        return false;
    }

        /**
     * Méthode qui permet de enregistrer mon instance en tant que nouvelle entrée dans ma table
     *
     * @return bool
     */
    public function update()
    {
        // Appel de notre interprète SQL : PDO
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // Ecriture de la requête UPDATE
        $sql = 'UPDATE `player`
                SET
                    position = :position,
                    name = :name,
                    points_avg = :points_avg,
                    assists_avg = :assists_avg,
                    rebounds_avg = :rebounds_avg,
                    blocks_avg = :blocks_avg,
                    photo = :photo,
                    team_id = :team_id
                WHERE
                    id = :id';

        // Préparation de la requete SQL
        $pdoStatement = $pdo->prepare($sql);

        // J'indique à pdoStatement la correspondance entre mes :truc et la bonne valeur
        $pdoStatement->bindValue(':position', $this->position, PDO::PARAM_STR);
        $pdoStatement->bindValue(':name', $this->name, PDO::PARAM_STR);
        $pdoStatement->bindValue(':points_avg', $this->points_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':assists_avg', $this->assists_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':rebounds_avg', $this->rebounds_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':blocks_avg', $this->blocks_avg, PDO::PARAM_STR);
        $pdoStatement->bindValue(':photo', $this->photo, PDO::PARAM_STR);
        $pdoStatement->bindValue(':team_id', $this->team_id, PDO::PARAM_INT);
        $pdoStatement->bindValue(':id', $this->id, PDO::PARAM_INT);


        // Est ce que ma requete c'est bien executée
        $executed = $pdoStatement->execute();
        
        // Combien de lignes à elle modifié ?
        $updatedRows = $pdoStatement->rowCount();
        
        // Si mon produit à bien été modifié en base
        if ($executed && $updatedRows === 1) {

            // On retourne VRAI car l'ajout a parfaitement fonctionné
            return true;
            // => l'interpréteur PHP sort de cette fonction car on a retourné une donnée
        }

        // Si on arrive ici, c'est que quelque chose n'a pas bien fonctionné => FAUX
        return false;
    }

    // TODO
    public function delete()
    {
        // Appel de notre interprète SQL : PDO
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');

        // Ecriture de la requête DELETE
        $sql = 'DELETE FROM `player` WHERE `id` = :id';

        // Préparation de la requete SQL
        $pdoStatement = $pdo->prepare($sql);

        // J'indique à pdoStatement la correspondance entre mes :truc et la bonne valeur
        $pdoStatement->bindValue(':id', $this->id, PDO::PARAM_INT);

        // Est ce que ma requete c'est bien executée
        return $pdoStatement->execute();
    }

    public function findPlayersByTeamId($id)
    {
        // connecter la BDD
        $pdo = new PDO('mysql:host=localhost;dbname=nba', 'Nico', 'Ereul9Aeng');
        
        $sql = "SELECT * FROM player WHERE player.team_id = {$id};";
        
        // Je donne à PDO ma requete SQL
        // PDO me répond sous la forme d'un "jeu de résultat"
        $pdoStatement = $pdo->query($sql);

        // SI je souhaite récuperer un seul produit sous la forme d'un tableau assoc
        // je fait un fetch....
        // Si je souhaite récuperer un seul produit sous la forme d'une instance
        // je fait un fetchObject
        $playersByTeamId = $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Player');

        return $playersByTeamId;
    }
}