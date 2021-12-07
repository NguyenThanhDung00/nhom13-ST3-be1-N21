<?php
class Product extends Db
{
    public function getAllProducts()
    {
        $sql = self::$connection->prepare("SELECT * 
        FROM products, manufactures,protypes 
        WHERE products.manu_id = manufactures.manu_id
        AND products.type_id = protypes.type_id
        ORDER BY id DESC");                      
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function addProduct ($name, $manu_id, $type_id, $price, $image, $desc,$feature){
        $sql = self::$connection->prepare("
        INSERT INTO `products`(`name`, `manu`, `type`, `price`, `image`, `description`,`feat`) 
        VALUES (?,?,?,?,?,?,?)");
        //var_dump("INSERT INTO `products`(`name`, `manu`, `type`, `price`, `image`, `description`,`feat`)
        //VALUES ('$name', $manu_id, $type_id, '$price', '$image', '$desc','$feature')");
        $sql->bind_param("siiissi", $name, $manu_id, $type_id, $price, $image, $desc, $feature);      
        return $sql->execute(); 
       /* chạy được
        INSERT INTO `products`(`name`, `manu_id`, `type_id`, `price`, `image`, `description`,`feature`) 
         VALUES ('Laptop Apple MacBook Air M1 2020 16GB', 1, 102, '35510000', 
       'apple-macbook-air-m1-2020-z12a00050-1-org.jpg', 'a', '1')*/       
    }
    
}