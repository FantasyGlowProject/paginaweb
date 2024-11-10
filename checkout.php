<?php
session_start();
require 'config/configu.php';
require 'config/database.php';
$db = new Database();
$con = $db->conectar();

$productos = array();

if (isset($_SESSION['carrito']) && !empty($_SESSION['carrito'])) {
    foreach ($_SESSION['carrito'] as $id => $cantidad) {
        $sql = $con->prepare("SELECT ID_Producto, Nombre_Producto, Precio_Venta FROM productos WHERE ID_Producto = ?");
        $sql->execute([$id]);
        $producto = $sql->fetch(PDO::FETCH_ASSOC);

        if ($producto) {
            $producto['cantidad'] = $cantidad;
            $producto['subtotal'] = $producto['Precio_Venta'] * $cantidad;
            $productos[] = $producto;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout - Fantasy Glow</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        .navbar {
            background-color: #a64ca6; 
        }
    </style>
</head>
<body>

<header>
    <div class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a href="index.php" class="navbar-brand">Fantasy Glow</a>
            <div class="collapse navbar-collapse" id="navbarHeader">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a href="index.php" class="nav-link active">Catálogo</a>
                    </li>
                    <li class="nav-item">
                        <a href="contacto.php" class="nav-link">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<main class="container mt-5">
    <h1 class="text-center mb-4">Checkout</h1>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Subtotal</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $total = 0;
            foreach ($productos as $producto) {
                $total += $producto['subtotal'];
                ?>
                <tr>
                    <td><?php echo $producto['Nombre_Producto']; ?></td>
                    <td>$<?php echo number_format($producto['Precio_Venta'], 2); ?></td>
                    <td>
                        <form action="actualizar_cantidad.php" method="post">
                            <input type="hidden" name="id" value="<?php echo $producto['ID_Producto']; ?>">
                            <input type="number" name="cantidad" class="form-control" value="<?php echo $producto['cantidad']; ?>" min="1" onchange="this.form.submit()">
                        </form>
                    </td>
                    <td>$<?php echo number_format($producto['subtotal'], 2); ?></td>
                    <td>
    <a href="eliminar_producto.php?id=<?php echo $producto['ID_Producto']; ?>" class="btn btn-sm" style="background-color: #EF9A9A; border-color: #EF9A9A; color: white;">
        Eliminar
    </a>
</td>
                </tr>
                <?php
            }
            ?>
            <tr>
                <td colspan="3" class="text-end"><strong>Total:</strong></td>
                <td><strong>$<?php echo number_format($total, 2); ?></strong></td>
                <td></td>
            </tr>
        </tbody>
    </table>
    <div class="text-center">
    <a href="pago.php" class="btn btn-success" style="background-color: #42A5F5; border-color: #42A5F5; color: white;">Realizar Pago</a>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>