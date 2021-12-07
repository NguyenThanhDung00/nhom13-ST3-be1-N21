<?php 
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/manufacture.php";
require "models/protype.php";
$product = new Product;
$manu = new Manufacture;
$type = new Protype;
if (isset($_POST['submit'])){
  $name=$_POST['name'];
  $manu_id=$_POST['manu'];
  $type_id=$_POST['type'];
  $price=$_POST['price'];
  $image=$_FILES['image']['name'];  
  $desc=$_POST['desc'];
  $feature=$_POST['feat'];  
  $product->addProduct($name, $manu_id, $type_id, $price, $image, $desc,$feature);
}
//header('location:products.php');
