<?php
// "Mother class" for all Models
// We put here toutes all attributes (or properties) and methods used by ALL Models
/**
 * This class, CoreModel, doesn't "represents" a table in DB
 * It only purpose is to be extended (extends...)
 */
abstract class CoreModel {
    
    /**
     * @var int
     */
    protected $id;

    /**
     * @var string
     */
    protected $name;

    /**
     * Get the value of id
     *
     * @return  int
     */
    protected function getId() : int
    {
        return $this->id;
    }

    /**
     * Get the value of name
     */ 
    protected function getName()
    {
        return $this->name;
    }

    /**
     * Set the value of name
     *
     * @return  self
     */ 
    protected function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Checks if the current object exists already in DB
     * if no -> insert a new row
     * else -> update the row
     *
     * @return  bool
     */ 
    protected function save()
    {
        // if the id property of my object is empty :
        if (empty($this->id)) {           
            // It's not from my DB so...
            return $this->insert();

        } else {
            // It's already in my DB so...
            return $this->update();
        }
    }
}