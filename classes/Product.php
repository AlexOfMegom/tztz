<?php
class Product {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function getAll() {
        $sql = "SELECT p.id, p.url AS product_url, p.name AS product_name, p.articul, p.price, p.price_old, p.notice AS product_notice, p.content AS product_content, ps.name AS section_name, pt.name AS type_name
                FROM product p
                JOIN product_assignment pa ON p.id = pa.product_id
                JOIN product_section ps ON pa.section_id = ps.id
                JOIN product_type pt ON pa.type_id = pt.id
                WHERE p.visible = 1 AND pa.visible = 1";
        return $this->db->query($sql);
    }

    public function getByUrl($url) {
        $sql = "SELECT p.id, p.url AS product_url, p.name AS product_name, p.articul, p.price, p.price_old, p.notice AS product_notice, p.content AS product_content, ps.name AS section_name, pt.name AS type_name
                FROM product p
                JOIN product_assignment pa ON p.id = pa.product_id
                JOIN product_section ps ON pa.section_id = ps.id
                JOIN product_type pt ON pa.type_id = pt.id
                WHERE p.url = ? AND p.visible = 1 AND pa.visible = 1";
        $result = $this->db->query($sql, [$url]);
        return $result ? $result[0] : null;
    }
}
