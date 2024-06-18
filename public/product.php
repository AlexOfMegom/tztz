<?php
require '../config/config.php';
require '../classes/Database.php';
require '../classes/Product.php';

$config = require('../config/config.php');
$db = new Database($config);
$product = new Product($db);

$url = $_GET['url'];
$productDetails = $product->getByUrl($url);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= $productDetails['product_name'] ?></title>
</head>
<body>
    <h1><?= $productDetails['product_name'] ?></h1>
    <p>Price: <?= $productDetails['price'] ?></p>
    <p>Old Price: <?= $productDetails['price_old'] ?></p>
    <p><?= $productDetails['product_notice'] ?></p>
    <p><?= $productDetails['product_content'] ?></p>
    <p>Section: <?= $productDetails['section_name'] ?></p>
    <p>Type: <?= $productDetails['type_name'] ?></p>
</body>
</html>
