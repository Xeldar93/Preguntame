
<?php
include('includes/db.php');

header('Content-Type: application/json'); //se especifica que devuelva json

function getQuestions($limit = 10) {
    global $conn;
    $sql = "SELECT * FROM preguntas ORDER BY RAND() LIMIT ?";
    
    if ($stmt = $conn->prepare($sql)) {
        $stmt->bind_param("i", $limit);
        $stmt->execute();
        $result = $stmt->get_result();
        
        $preguntas = [];
        while ($row = $result->fetch_assoc()) {
            $respuestas = [$row['respuesta1'], $row['respuesta2'], $row['respuesta3'], $row['respuesta_correcta']];
            shuffle($respuestas); // Mezclar respuestas
            $preguntas[] = [
                'pregunta' => $row['pregunta'],
                'respuestas' => $respuestas,
                'respuesta_correcta' => $row['respuesta_correcta']
            ];
        }
        $stmt->close();
        return $preguntas;
    } else {
        //manejamos errores
        http_response_code(500);
        echo json_encode(['error' => "Error en la preparación de la consulta: " . $conn->error]);
        exit();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' || $_SERVER['REQUEST_METHOD'] === 'POST') {
    $preguntas = getQuestions();
    if ($preguntas === false) {
        exit();
    }
    
    echo json_encode($preguntas);
} else {
    http_response_code(405); // Metodo no permitido, error resuelto eliminando comentarios en db.php api.php
    echo json_encode(['error' => 'Metodo no permitido']);
}
?>
