 <?php
    $dsn = 'mysql:host=localhost; dbname=attendance';
    $user = 'root';
    $password = '';

    try {
        $pdo = new PDO($dsn, $user, $password);
        //echo '<script>alert("Database Connection Successful");</script>';
    } catch(PDOException $e) {
        echo 'Connection Error :' . $e->getMessage();
        echo '<script>alert("Database Error Connection");</script>';
    }


?>
