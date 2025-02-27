<?php
// Datos de conexión a la base de datos
$servername = "localhost";  // O la IP de tu servidor
$username = "root";         // Tu usuario de MySQL
$password = "";             // Tu contraseña de MySQL
$dbname = "contacto_db";    // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("La conexión falló: " . $conn->connect_error);
}

// Verificar si se recibió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre = $_POST['name'];
    $correo = $_POST['email'];
    $mensaje = $_POST['message'];

    // Validar que los datos no estén vacíos
    if (empty($nombre) || empty($correo) || empty($mensaje)) {
        echo "Todos los campos son obligatorios.";
    } else {
        // Preparar la consulta SQL
        $sql = "INSERT INTO contactos (nombre, correo, mensaje) VALUES (?, ?, ?)";

        // Preparar la sentencia
        if ($stmt = $conn->prepare($sql)) {
            // Vincular los parámetros
            $stmt->bind_param("sss", $nombre, $correo, $mensaje);
            
            // Ejecutar la consulta
            if ($stmt->execute()) {
                header("Location:/Portada/index.html?mensaje=success");

            } else {
                echo "Error al enviar el mensaje: " . $stmt->error;
            }

            // Cerrar la declaración
            $stmt->close();
        }
    }
}

// Cerrar la conexión
$conn->close();
?>


// Cerrar la conexión
$conn->close();
?>
