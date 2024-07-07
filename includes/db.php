
<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "preguntame";
$port = 3307;

// se crea la conexion
$conn = new mysqli($servername, $username, $password, $dbname, $port);

// manejo de error de conexion
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
