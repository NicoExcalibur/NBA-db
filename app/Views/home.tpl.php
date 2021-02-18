<div>
    <h1>Liste des équipes :</h1>
    <?php foreach ($viewData['teamList'] as $team) : ?>
    <ul>
        <li><?= $team->getId(); ?></li>
        <li><?= $team->getName(); ?></li>
    </ul>
    <?php endforeach; ?>
</div>