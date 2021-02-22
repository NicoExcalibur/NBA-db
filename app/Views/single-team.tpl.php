<div class="team-header">
    <div>
        <img src="<?= $viewData['myTeam']->getLogo(); ?>" alt="">
    </div>
    <h1><?= $viewData['myTeam']->getName(); ?></h1>
</div>

<p></p>
<div class="players">
    <?php foreach ($viewData['playerList'] as $player) : ?>
    <div class="player-card">
        <p><a href="<?= $router->generate('single-player', ['id' => $player->getId()]); ?>"><?= $player->getName(); ?></a></p>
        <div><img src="<?= $player->getPhoto(); ?>" alt="Portrait de <?= $player->getName(); ?>"></div>
    </div>
    <?php endforeach; ?>    
</div>