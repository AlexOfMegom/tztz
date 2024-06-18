<?php
require '../config/config.php';
require '../classes/Database.php';
require '../classes/Product.php';

$config = require('../config/config.php');
$db = new Database($config);
$product = new Product($db);

$products = $product->getAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Catalog</title>
</head>
<body>
    <h1>Product Catalog</h1>
    <ul>
        <?php foreach ($products as $prod): ?>
            <li>
                <a href="product.php?url=<?= $prod['product_url'] ?>">
                    <?= $prod['product_name'] ?> - <?= $prod['price'] ?>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>
