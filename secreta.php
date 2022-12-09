<?php
# Si no entiendes el código, primero mira a login.php

# Iniciar sesión para usar $_SESSION
session_start();

# Y ahora leer si NO hay algo llamado correo en la sesión,
# usando empty (vacío, ¿está vacío?)
# Recomiendo: https://parzibyte.me/blog/2018/08/09/isset-vs-empty-en-php/
if (empty($_SESSION["correo"])) {
    # Lo redireccionamos al formulario de inicio de sesión
    header("Location: login.html");
    # Y salimos del script
    exit();
}

echo "<center><h1>Vista de Crud tras el login</h1></center>";
# Podemos recuperar datos de la sesión
echo "<p align='left'><br>El usuario registrado es : <strong>" . $_SESSION["correo"] . "</strong>";
?>

<a href="logout.php">Cerrar sesión</a>
</p>
<?php
require_once "config/config.php";
require_once "core/routes.php";
require_once "config/database.php";
require_once "controllers/Vehiculos.php";

if(isset($_GET['c'])){
    
    $controlador = cargarControlador($_GET['c']);
    
    if(isset($_GET['a'])){
        if(isset($_GET['id'])){
            cargarAccion($controlador, $_GET['a'], $_GET['id']);
            } else {
            cargarAccion($controlador, $_GET['a']);
        }
        } else {
        cargarAccion($controlador, ACCION_PRINCIPAL);
    }
    
    } else {
    
    $controlador = cargarControlador(CONTROLADOR_PRINCIPAL);
    $accionTmp = ACCION_PRINCIPAL;
    $controlador->$accionTmp();
}
?>
