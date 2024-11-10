<?php
session_start();

// Inicializar el carrito si no existe
if (!isset($_SESSION['carrito'])) {
    $_SESSION['carrito'] = array();
}

// Verificar si se recibió un ID de producto
if (isset($_GET['id'])) {
    $idProducto = $_GET['id'];

    // Verificar si el producto ya está en el carrito
    if (isset($_SESSION['carrito'][$idProducto])) {
        // Si el producto ya está, incrementar la cantidad
        $_SESSION['carrito'][$idProducto]++;
    } else {
        // Si el producto no está, agregarlo con cantidad 1
        $_SESSION['carrito'][$idProducto] = 1;
    }
}

// Redirigir de vuelta a la página anterior
header("Location: " . $_SERVER['HTTP_REFERER']);
exit;
?>