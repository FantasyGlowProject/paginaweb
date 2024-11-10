<?php
session_start();
require 'config/configu.php';
require 'config/database.php';

$db = new Database();
$con = $db->conectar();

// Inicializar el total del carrito
$total = 0;
?>

<!DOCTYPE html>
<html lang="es">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles de Pago - Tienda Online</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        /* Estilos generales */
        .navbar {
            background-color: #333333;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: #ffffff;
        }
        .navbar-nav .nav-link.active {
            font-weight: bold;
        }
        /* Botón de PayPal */
        .btn-primary {
            background-color: #0070BA;
            border-color: #0070BA;
            font-size: 1.2rem;
            width: 100%;
            padding: 10px;
        }
        .btn-primary:hover {
            background-color: #005C9E;
            border-color: #005C9E;
        }
        /* Texto del footer */
        .footer-text {
            color: #808080;
            font-size: 0.9rem;
            text-align: center;
            margin-top: 20px;
        }
        /* Estilo de la tabla */
        table.table th, table.table td {
            text-align: right;
        }
        table.table th:first-child, table.table td:first-child {
            text-align: left;
        }
        .table tfoot th {
            font-size: 1.2rem;
            font-weight: bold;
            border-top: 2px solid #333333;
        }
        /* Estilo personalizado para el botón del carrito */
.btn-carrito-estilo {
    background-color: #1E88E5; /* Color azul */
    color: white;
    padding: 5px 15px; /* Ajusta el tamaño del botón */
    font-size: 1rem; /* Ajusta el tamaño de la fuente */
    border-radius: 5px; /* Bordes redondeados */
    display: flex;
    align-items: center;
}
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
                <a href="checkout.php" class="btn btn-carrito-estilo">
                    Carrito <span class="badge bg-secondary"><?php echo isset($_SESSION['carrito']) ? array_sum($_SESSION['carrito']) : 0; ?></span>
                </a>
            </div>
        </div>
    </div>
</header>
            </div>
        </div>
    </div>
</header>

<main class="container mt-4">
    <h2>Detalles de pago</h2>
    <div class="row">
        <div class="col-md-8">
            <table class="table">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if (isset($_SESSION['carrito']) && !empty($_SESSION['carrito'])) {
                        foreach ($_SESSION['carrito'] as $idProducto => $cantidad) {
                            // Consulta a la base de datos para obtener los detalles del producto
                            $sql = $con->prepare("SELECT Nombre_Producto, Precio_Venta FROM productos WHERE ID_Producto = ?");
                            $sql->execute([$idProducto]);
                            $producto = $sql->fetch(PDO::FETCH_ASSOC);

                            if ($producto) {
                                $nombre = $producto['Nombre_Producto'];
                                $precio = $producto['Precio_Venta'];
                                $subtotal = $precio * $cantidad;
                                $total += $subtotal;
                                ?>
                                <tr>
                                    <td><?php echo htmlspecialchars($nombre); ?></td>
                                    <td>$<?php echo number_format($subtotal, 2); ?></td>
                                </tr>
                                <?php
                            }
                        }
                    } else {
                        echo "<tr><td colspan='2' class='text-center'>No hay productos en el carrito</td></tr>";
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>Total</th>
                        <th>$<?php echo number_format($total, 2); ?></th>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="col-md-4">
            <h3>Método de Pago</h3>
            <div id="paypal-button-container"></div>
        </div>
    </div>
</main>

<!-- PayPal SDK -->
<script src="https://www.paypal.com/sdk/js?client-id=AdMbTeTdqHst_q2HQMM1El2fM5zNiFtJwJvUxY1ZLLnkdBRsW2VHZZmz7jFGUrlPfsBVo0PFWg-5Xjv5&currency=MXN"></script>

<script>
    // Renderiza el botón de PayPal
    paypal.Buttons({
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: '<?php echo number_format($total, 2, '.', ''); ?>'
                    }
                }]
            });
        },
        onApprove: function(data, actions) {
            return actions.order.capture().then(function(details) {
                alert('Pago completado por ' + details.payer.name.given_name);
            });
        }
    }).render('#paypal-button-container');
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>