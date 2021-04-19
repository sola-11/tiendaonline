<?php
include("configuracion.php");
$conexion = new mysgli($server,$username,$bd);
if (mysqli_connect_errno()){
	echo "No conectado", mysqli_connect_error();
	exit();
}elsel{
	echo 'conectado';
}
?>
	