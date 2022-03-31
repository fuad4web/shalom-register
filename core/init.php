<?php 
    include 'database/dbpdo.php';
    include 'class/Projects.php';

    global $pdo;

    session_start();

    $getFromP = new Projects($pdo);

    define("BASE_URL", "http://localhost/shalom/");

    //echo "<script>alert('Jo');</script>";
?>
