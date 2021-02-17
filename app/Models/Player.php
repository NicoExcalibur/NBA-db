<?php

namespace App\Models;

class Team {

    /**
    * @var string
    */ 
    private $name;

    /**
    * @var float
    */ 
    private $points_avg;

    /**
    * @var float
    */ 
    private $assists_avg;

    /**
    * @var float
    */ 
    private $rebounds_avg;

    /**
    * @var float
    */ 
    private $blocks_avg;

    /**
    * @var string
    */ 
    private $photo;

    /**
    * @var int
    */ 
    private $team;
    

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
     * Get the value of points_avg
     */ 
    public function getPoints_avg()
    {
        return $this->points_avg;
    }

    /**
     * Set the value of points_avg
     *
     * @return  self
     */ 
    public function setPoints_avg($points_avg)
    {
        $this->points_avg = $points_avg;

        return $this;
    }

    /**
     * Get the value of assists_avg
     */ 
    public function getAssists_avg()
    {
        return $this->assists_avg;
    }

    /**
     * Set the value of assists_avg
     *
     * @return  self
     */ 
    public function setAssists_avg($assists_avg)
    {
        $this->assists_avg = $assists_avg;

        return $this;
    }

    /**
     * Get the value of rebounds_avg
     */ 
    public function getRebounds_avg()
    {
        return $this->rebounds_avg;
    }

    /**
     * Set the value of rebounds_avg
     *
     * @return  self
     */ 
    public function setRebounds_avg($rebounds_avg)
    {
        $this->rebounds_avg = $rebounds_avg;

        return $this;
    }

    /**
     * Get the value of blocks_avg
     */ 
    public function getBlocks_avg()
    {
        return $this->blocks_avg;
    }

    /**
     * Set the value of blocks_avg
     *
     * @return  self
     */ 
    public function setBlocks_avg($blocks_avg)
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
     * Get the value of team
     */ 
    public function getTeam()
    {
        return $this->team;
    }

    /**
     * Set the value of team
     *
     * @return  self
     */ 
    public function setTeam($team)
    {
        $this->team = $team;

        return $this;
    }
}