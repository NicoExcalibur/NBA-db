<?php dump($viewData); ?>
<table>
    <thead>
        <tr>
            <th colspan="2">Liste des équipes NBA :</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>#</td>
            <td>Nom</td>
            <td>Logo</td>
            <td>Titres NBA</td>
            <td>Victoires</td>
            <td>Défaites</td>
            <td>Conférence</td>
        </tr>
        <?php foreach ($viewData['teamList'] as $team) : ?>
        <tr>
            <td><?= $team->getId(); ?></td>
            <td><a href="#"><?= $team->getName(); ?></a></td>
            <td><img src="<?= $team->getLogo(); ?>" alt="Logo de <?= $team->getName(); ?>"></td>
            <td><?= $team->getChampNbr(); ?></td>
            <td><?= $team->getVictories(); ?></td>
            <td><?= $team->getDefeats(); ?></td>
            <td><?php if ($team->getConference() == 1) {
                echo 'Ouest';
            } else {
                echo 'Est';
            }; ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<table>
    <thead>
        <tr>
            <th colspan="2">Liste des Joueurs :</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Portrait</td>
            <td>Nom</td>
            <td>Poste</td>
            <td>Points (moy)</td>
            <td>Passes décisives (moy)</td>
            <td>Rebonds (moy)</td>
            <td>Contres (moy)</td>
            <td>Equipe</td>
        </tr>
        
        <?php foreach ($viewData['playerList'] as $player) : ?>
        <tr>
            <td><img src="<?= $player->getPhoto(); ?>" alt="Portrait de <?= $player->getName(); ?>"></td>
            <td><?= $player->getName(); ?></td>
            <td><?= $player->getPosition(); ?></td>
            <td><?= $player->getPointsAvg(); ?></td>
            <td><?= $player->getAssistsAvg(); ?></td>
            <td><?= $player->getReboundsAvg(); ?></td>
            <td><?= $player->getBlocksAvg(); ?></td>
            <td><?= $player->getTeamId(); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>