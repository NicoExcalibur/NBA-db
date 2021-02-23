<?php
// Classe mère de tous les Models
// On centralise ici toutes les propriétés et méthodes utiles pour TOUS les Models
/**
 * Cette classe, CoreModel, n'est pas là pour "représenter" une table
 * en base de donnée.
 * Son seul et unique but est bien d'être étendue (extends...)
 * Il est donc "acté" que cette classe ne sera jamais instanciée
 * Nous n'aurons jamais besoin de faire un new CoreModel.
 * C'est ainsi et PHP accepte bien cette idée là !
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
    public function getId() : int
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

    public function save()
    {
        // Si la propriété id de mon objet est vide
        if (empty($this->id)) {
            // C'est que objet ne provient pas de la BDD

            // il est donc à inserer en base.
            return $this->insert();

        // sinon, comme la propriété id de mon objet n'est pas vide
        } else {

            // c'est que mon objet provient de la BDD

            // il faut donc réaliser une mise à jour de la ligne
            return $this->update();
        }

        // A chaque appel de la méthode save(), celle-ci va "choisir" quel méthode
        // insert ou update elle doit executer sur la classe enfant.
    }

    // Puisque CoreModel est une classe abstraite, elle à la possiblité
    // d'obliger ces enfants à avoir des méthodes...
}