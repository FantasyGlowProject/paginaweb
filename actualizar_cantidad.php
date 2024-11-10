<?php
session_start();

if (isset($_POST['id']) && isset($_POST['cantidad'])) {
    $idProducto = $_POST['id'];
    $cantidad = (int)$_POST['cantidad'];

    // Asegurarse de que la cantidad sea al menos 1
    if ($cantidad < 1) {
        $cantidad = 1;
    }

    // Actualizar la cantidad en la sesión
    if (isset($_SESSION['carrito'][$idProducto])) {
        $_SESSION['carrito'][$idProducto] = $cantidad;
    }
}

// Redirigir de vuelta a la página de checkout
header("Location: checkout.php");
exit;
?>