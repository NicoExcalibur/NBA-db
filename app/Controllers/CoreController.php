<?php 

class CoreController {

    //affiche la vue (protected pour qu'elle soit dispo dans toutres les autres vues)
    protected function show($viewName, $viewData = []) {

        global $router;

         // définir l'url absolue pour nos assets
         $viewData['assetsBaseUri'] = $_SERVER['BASE_URI'] . '/assets/';

        require __DIR__ . '/../Views/header.tpl.php';
        require __DIR__ . "/../Views/{$viewName}.tpl.php";
        require __DIR__ . '/../Views/footer.tpl.php';
    }
}