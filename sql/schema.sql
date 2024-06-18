CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `articul` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `price_old` decimal(10,2) NOT NULL,
  `notice` text,
  `content` text,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_assignment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `section_id` (`section_id`),
  KEY `type_id` (`type_id`),
  KEY `visible` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_param_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT '0',
  `visible` tinyint(1) NOT NULL,
  `name` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_param_variant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `param_id` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  `position` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`param_id`,`name`(64)),
  KEY `param_id` (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notice` text,
  `visible` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notice` text,
  `visible` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `product_section` (`position`, `url`, `name`, `notice`, `visible`)
VALUES 
(1, 'electronics', 'Electronics', 'Various electronic products', 1),
(2, 'clothing', 'Clothing', 'Fashion and clothing products', 1);

INSERT INTO `product_type` (`position`, `url`, `name`, `notice`, `visible`)
VALUES 
(1, 'smartphones', 'Smartphones', 'Various smartphones', 1),
(2, 'laptops', 'Laptops', 'Various laptops', 1),
(3, 'men-clothing', 'Men Clothing', 'Clothing for men', 1),
(4, 'women-clothing', 'Women Clothing', 'Clothing for women', 1);

INSERT INTO `product` (`position`, `url`, `name`, `articul`, `price`, `currency_id`, `price_old`, `notice`, `content`, `visible`)
VALUES 
(1, 'product-1', 'Product 1', 'ART001', 100.00, 1, 120.00, 'Short description of product 1', 'Detailed description of product 1', 1),
(2, 'product-2', 'Product 2', 'ART002', 150.00, 1, 170.00, 'Short description of product 2', 'Detailed description of product 2', 1),
(3, 'product-3', 'Product 3', 'ART003', 200.00, 1, 220.00, 'Short description of product 3', 'Detailed description of product 3', 1),
(4, 'product-4', 'Product 4', 'ART004', 250.00, 1, 270.00, 'Short description of product 4', 'Detailed description of product 4', 1),
(5, 'product-5', 'Product 5', 'ART005', 300.00, 1, 320.00, 'Short description of product 5', 'Detailed description of product 5', 1);

INSERT INTO `product_assignment` (`product_id`, `section_id`, `type_id`, `visible`)
VALUES 
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 2, 3, 1),
(5, 2, 4, 1);



INSERT INTO `product_section` (`position`, `url`, `name`, `notice`, `visible`)
VALUES 
(3, 'appliances', 'Appliances', 'Household appliances', 1),
(4, 'books', 'Books', 'Various books', 1),
(5, 'toys', 'Toys', 'Children toys', 1),
(6, 'sports', 'Sports', 'Sports equipment', 1),
(7, 'jewelry', 'Jewelry', 'Fashion jewelry', 1),
(8, 'furniture', 'Furniture', 'Home furniture', 1),
(9, 'tools', 'Tools', 'Various tools', 1),
(10, 'beauty', 'Beauty', 'Beauty products', 1);



INSERT INTO `product_type` (`position`, `url`, `name`, `notice`, `visible`)
VALUES 
(5, 'home-appliances', 'Home Appliances', 'Various home appliances', 1),
(6, 'novels', 'Novels', 'Fiction novels', 1),
(7, 'educational-toys', 'Educational Toys', 'Toys for educational purposes', 1),
(8, 'fitness', 'Fitness', 'Fitness equipment', 1),
(9, 'fine-jewelry', 'Fine Jewelry', 'High-quality jewelry', 1),
(10, 'bedroom-furniture', 'Bedroom Furniture', 'Furniture for bedroom', 1);


INSERT INTO `product` (`position`, `url`, `name`, `articul`, `price`, `currency_id`, `price_old`, `notice`, `content`, `visible`)
VALUES 
(6, 'product-6', 'Product 6', 'ART006', 350.00, 1, 370.00, 'Short description of product 6', 'Detailed description of product 6', 1),
(7, 'product-7', 'Product 7', 'ART007', 400.00, 1, 420.00, 'Short description of product 7', 'Detailed description of product 7', 1),
(8, 'product-8', 'Product 8', 'ART008', 450.00, 1, 470.00, 'Short description of product 8', 'Detailed description of product 8', 1),
(9, 'product-9', 'Product 9', 'ART009', 500.00, 1, 520.00, 'Short description of product 9', 'Detailed description of product 9', 1),
(10, 'product-10', 'Product 10', 'ART010', 550.00, 1, 570.00, 'Short description of product 10', 'Detailed description of product 10', 1);


INSERT INTO `product_assignment` (`product_id`, `section_id`, `type_id`, `visible`)
VALUES 
(6, 3, 5, 1),
(7, 4, 6, 1),
(8, 5, 7, 1),
(9, 6, 8, 1),
(10, 7, 9, 1);



