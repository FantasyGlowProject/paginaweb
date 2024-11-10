<?php
session_start();
require 'config/configu.php';
require 'config/database.php';

$db = new Database();
$con = $db->conectar();

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    // Aquí puedes agregar la lógica de compra, como verificar el producto y procesar el pedido
    echo "Producto con ID $id agregado a la compra.";
} else {
    echo "No se ha especificado ningún producto para comprar.";
}
?>