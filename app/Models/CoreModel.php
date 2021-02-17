<?php

namespace App\Models;


abstract class CoreModel {
    
    /**
     * @var int
     */
    protected $id;


    /**
     * Get the value of id
     *
     * @return  int
     */ 
    public function getId() : int
    {
        return $this->id;
    }
}