<?php
include "global/config.php";
include "global/conexion.php";
include 'carrito.php';
include 'templates/cabecera.php';
?>

<?php 
if($_POST){

    $Total=0;
    $SID=session_id();
    $Correo="batistasolanny026@gmail.com";
    
    foreach($_SESSION['CARRITO'] as $indice=>$producto){  
   $Total=$Total+($producto['PRECIO']*$producto['CANTIDAD']);
   } 

   $sentencia=$pdo->prepare("INSERT INTO `tblventas`
    (`ID`, `ClaveTransacción`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `Status`) 
    VALUES (NULL, :ClaveTransaccion, '', NOW(), :Correo, :Total, 'pendiente');");
    
    $sentencia->bindParam(":ClaveTransacción", $SID);
    $sentencia->bindParam(":Correo", $Correo);
    $sentencia->bindParam(":Total", $Total);
    
    $sentencia->execute();
  
  echo "<h3>".$Total. "</h3>";
    }

?>



<?php
include 'templates/pie.php';
?>
