<?php
define('DB_HOST', '172.31.22.43');
define('DB_USER', 'Peetambar200518291');
define('DB_PASS', 'CJ8dJkiNDI');
define('DB_NAME', 'Peetambar200518291');

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if($conn→connect_errno ) {
    printf("Connect failed: %s<br />", $conn→connect_error);
    exit();
}

$sql = "CREATE TABLE profile ( id int(100) NOT NULL, name varchar(255) NOT NULL, email varchar(255) NOT NULL, bio varchar(255) NOT NULL);";

$conn->query($sql);
