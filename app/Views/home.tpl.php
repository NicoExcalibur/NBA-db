<?php dump($router); ?>

<table>
    <thead>
        <tr>
            <th colspan="2">Conférence Est :</th>
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
        </tr>
        <?php foreach ($viewData['eastTeamList'] as $team) : ?>
        <tr>
            <td><?= $team->getId(); ?></td>
            <td><a href="#"><?= $team->getName(); ?></a></td>
            <td><img src="<?= $team->getLogo(); ?>" alt="Logo de <?= $team->getName(); ?>"></td>
            <td><?= $team->getChampNbr(); ?></td>
            <td><?= $team->getVictories(); ?></td>
            <td><?= $team->getDefeats(); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<table>
    <thead>
        <tr>
            <th colspan="2">Conférence Ouest :</th>
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
        </tr>
        <?php foreach ($viewData['westTeamList'] as $team) : ?>
        <tr>
            <td><?= $team->getId(); ?></td>
            <td><a href="#"><?= $team->getName(); ?></a></td>
            <td><img src="<?= $team->getLogo(); ?>" alt="Logo de <?= $team->getName(); ?>"></td>
            <td><?= $team->getChampNbr(); ?></td>
            <td><?= $team->getVictories(); ?></td>
            <td><?= $team->getDefeats(); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>