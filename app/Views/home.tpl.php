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
            <td><?= $team->getName(); ?></td>
            <td><img src="<?= $team->getLogo(); ?>" alt="Logo de <?= $team->getName(); ?>"></td>
            <td><?= $team->getChampNbr(); ?></td>
            <td><?= $team->getVictories(); ?></td>
            <td><?= $team->getDefeats(); ?></td>
            <td><?= $team->getConference(); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>