<?php

$servidor = "localhost";
$username = "root";
$passwold = "";
$dbname = "bayern";

$conm = mysqli_connect($servidor,$username,$passwold) or die ("Não foi possivel conectar");
mysqli_select_db($conm, $dbname);

?>