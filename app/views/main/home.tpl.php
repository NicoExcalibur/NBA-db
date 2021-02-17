<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nom</th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($teams as $team): ?>
            <tr>
                <th scope="row"><?= $team->getId() ?></th>
                <td><?= $team->getName() ?></td>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>