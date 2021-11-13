<?php
  $db_dsn = array(
        'host' => 'localhost',
        'dbname' => 'db_car',
        'charset' => 'utf8'
  );

  $dsn = 'mysql:'.http_build_query($db_dsn, '', ';');
  $user = 'root';
  $pass = 'root'; 

  try {
        $pdo = new PDO($dsn, $user, $pass);
    } catch (PDOException $ex) {
        echo 'Connection Error:'.$ex->getMessage();
        exit();
    }
?>