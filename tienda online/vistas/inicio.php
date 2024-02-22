<?php
require_once '../modelo/database.php';
require_once '../modelo/clientes.php';

session_start();

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>VoleySport</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/style_Inicio.css" rel="stylesheet">
    <link href="../imagenes/favicon.jpg" sizes="32x32" type="image/x-icon" rel="icon" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>

    <header>
        <h1>VoleySport</h1>
    </header>
    

    <nav>
        <a href="inicio.php"> <i class="bi bi-house" title="Productos"></i></a>
        <a href="../vistas/carrito.php"> <i class="bi bi-cart4" title="Carrito"></i></a>
        <a href="../vistas/conexion_api.php?id"><i class="bi bi-cloud-arrow-down" title="Cargar productos"></i></a>
        <a href="../vistas/crud.php"> <i class="bi bi-joystick" title="Crud productos"></i></a>
    </nav>


    <header>
        <nav class="inicio-sesion">
            <?php
            // Verifica si el cliente ha iniciado sesión antes de mostrar el enlace de cerrar sesión
            if (isset($_SESSION['cli_id'])) {
                $nombreCliente = Clientes::obtenerNombreCliente($_SESSION['cli_id']);

                echo '<p>Bienvenido, ' . $nombreCliente . '!</p>';
                echo '<form method="post" action="../vistas/carrito.php">';
                echo '<button type="submit" name="cerrar_sesion">Cerrar Sesión</button>';
                echo '</form>';
            } else {
                echo '<a href="../vistas/login.php">Iniciar Sesión</a>';
            }
            ?>
        </nav>
    </header>

    <?php
    // Mostrar la alerta si se ha agregado un artículo
    if (isset($_SESSION['producto_agregado']) && $_SESSION['producto_agregado']) {
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Producto añadido al carrito. ¡Listo para comprar!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>';
        // Reinicia la variable de sesión después de mostrar la alerta
        $_SESSION['producto_agregado'] = false;
    }
    ?>

    <div class="product-container">
        <?php
        $conexion = Conexion::obtenerConexion();
        $sql = "SELECT * FROM productos";
        $resultado = $conexion->query($sql);
        if ($resultado->num_rows > 0) {
            while ($fila = $resultado->fetch_assoc()) {

                echo '<article class="product-item">';
                echo '<a href="../vistas/detalle_producto1.php?id=' . $fila['id'] . '" >';
                echo '<img src="' . $fila['thumbnail'] . '" alt="">';
                echo '</a>';
                echo '<h4>' . $fila['title'] . '</h4>';
                echo '<p>Precio: $' . $fila['price'] . '</p>';
                echo "<form method='post' action='../vistas/inicio.php'>";
                echo "<input type='hidden' name='producto_id' value='{$fila['id']}'>";
                echo "<button type='submit' name='agregar_carrito'>Agregar al Carrito</button>";
                echo "</form>";
                echo '</article>';
            }
        } else {
            echo 'No se encontraron productos.';
        }
        $conexion->close();
        ?>
    </div>

    <br>
    <footer>
        VoleySport © 2024. autor:Carlos Daniel Alvarez causil
    </footer>
    <!-- Scripts de Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>