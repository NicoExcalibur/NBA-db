<h2>Liste des équipes</h2>

<table class="table table-hover mt-4">
        <thead> <!-- copyright @Raphael -->
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nom</th>
                <th scope="col">Description</th>
                <th scope="col">Image</th>
                <th scope="col">Prix</th>
                <th scope="col">Avis</th>
                <th scope="col">Statut</th>
                <th></th>
            </tr>
        </thead>

    <tbody>
        <?php foreach($products as $product): ?>
        <tr>
            <th scope="row"><?= $product->getId() ?></th>
            <td><?= $product->getName() ?></td>
            <td><?= $product->getDescription() ?></td>
            <td>
                <img class="thumbnail"
                    src="<?= $product->getPicture() ?>">
            </td>
            <td><?= $product->getPrice() ?></td>
            <td><?= $product->getRate() ?></td>
            <!-- On affiche la disponibilité grâce à une condition ternaire -->
            <td><?= ($product->getStatus() == 1)? 'Disponible' : 'Indisponible'  ?></td>
            <td class="text-right">
                <a href="<?= $router->generate('product-edit', ['id' => $product->getId()]) ?>" class="btn btn-sm btn-warning">
                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                </a>
                <!-- Example single danger button -->
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-danger dropdown-toggle"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Oui, je veux supprimer</a>
                        <a class="dropdown-item" href="#" data-toggle="dropdown">Oups !</a>
                    </div>
                </div>
            </td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>