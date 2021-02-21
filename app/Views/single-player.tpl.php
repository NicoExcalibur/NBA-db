<?php dump($viewData);?> 
<div>
    <table>
        <thead>
            <tr>
                <th colspan="2"><?= $viewData['myPlayer']->getName(); ?> :</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Portrait</td>
                <td>Poste</td>
                <td>Points (moy)</td>
                <td>Passes décisives (moy)</td>
                <td>Rebonds (moy)</td>
                <td>Contres (moy)</td>
                <td>Equipe</td>
            </tr>
            
            <tr>
                <td><img src="<?= $viewData['myPlayer']->getPhoto(); ?>" alt="Portrait de <?= $viewData['myPlayer']->getName(); ?>"></td>
                <td><?= $viewData['myPlayer']->getPosition(); ?></td>
                <td><?= $viewData['myPlayer']->getPointsAvg(); ?></td>
                <td><?= $viewData['myPlayer']->getAssistsAvg(); ?></td>
                <td><?= $viewData['myPlayer']->getReboundsAvg(); ?></td>
                <td><?= $viewData['myPlayer']->getBlocksAvg(); ?></td>
                <td><?= $viewData['myPlayer']->getTeamId(); ?></td>
            </tr>
        </tbody>
    </table>
</div>