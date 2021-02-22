<?php dump($viewData); ?>

<h1><?= $viewData['myTeam']->getName(); ?></h1>

<div class="players">
    <?php foreach ($viewData['playerList'] as $player) : ?>
    <div class="player-card">
        <p><a href="<?= $router->generate('single-player', ['id' => $player->getId()]); ?>"><?= $player->getName(); ?></a></p>
        <div><img src="<?= $player->getPhoto(); ?>" alt="Portrait de <?= $player->getName(); ?>"></div>
    </div>
    <?php endforeach; ?>    
</div>