<a href="<?= $router->generate('player-add') ?>"><button>Ajouter un joueur</button></a>
<table>
    <thead>
        <tr>
            <th colspan="2">Liste des Joueurs :</th>
        </tr>
    </thead>
    <tbody>
        <tr class="table-first-row">
            <td>Portrait</td>
            <td>Nom</td>
            <td>Equipe</td>
        </tr>
        
        <?php foreach ($viewData['playerList'] as $player) : ?>
        <tr>
            <td><img src="<?= $player->getPhoto(); ?>" alt="Portrait de <?= $player->getName(); ?>"></td>
            <td><a href="<?= $router->generate('single-player', ['id' => $player->getId()]); ?>"><?= $player->getName(); ?></a></td>
            <td><?= $player->getTeamId(); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>