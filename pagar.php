<?php
include "global/config.php";
include "global/conexion.php";
include 'carrito.php';
include 'templates/cabecera.php';
?>
<script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>
<?php 
if($_POST){

    $Total=0;
    $SID=session_id();
    $Correo=$_POST['email']; 
    
    foreach($_SESSION['CARRITO'] as $indice=>$producto){  
   $Total=$Total+($producto['PRECIO']*$producto['CANTIDAD']);
   } 

   $sentencia=$pdo->prepare("INSERT INTO `tblventas`
    (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `Status`) 
    VALUES (NULL, :ClaveTransaccion, '', NOW(), :Correo, :Total, 'pendiente');");
    
    $sentencia->bindParam(":ClaveTransaccion", $SID);
    $sentencia->bindParam(":Correo", $Correo);
    $sentencia->bindParam(":Total", $Total);
    $sentencia->execute();
    $idVenta=$pdo->lastInsertId();

    foreach($_SESSION['CARRITO'] as $indice=>$producto){ 
   
    $sentencia=$pdo->prepare("INSERT INTO `tbldetalleventa`
     (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) 
     VALUES (NULL, :IDVENTA, :IDPRODUCTO, :PRECIOUNITARIO, :CANTIDAD, '0');");
     
     $sentencia->bindParam(":IDVENTA", $idVenta);
     $sentencia->bindParam(":IDPRODUCTO",$producto['ID']);
     $sentencia->bindParam(":PRECIOUNITARIO",$producto['PRECIO']);
     $sentencia->bindParam(":CANTIDAD",$producto['CANTIDAD']);
     $sentencia->execute();


    }
     }

?>
 <div class="img">
 <img src="img/compra.gif" class="d-block w-100" alt="">
 </div>
 
 <br><br><br>

<div class="jumbotron text-center">
  <h1 class="display-4">Paso Final</h1>
  <hr class="my-4">
  <p class="lead"> Estas apunto de pagar con paypal la cantidad de:
  <h3>$<?php echo number_format($Total,2); ?> </h3>
    <div id="paypal-button-container" ></div>
    </p>
  
  <p>Los productos podrán ser descargados una vez que se procese el pago <br/>
    <strong>(Para más información contactanos en Onfash2021@gmail.com)</strong>
  </p>
</div>

<script>
        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({
            style: {
                layout: 'horizontal'
            }
        }).render('#paypal-button-container');
    </script>
 

<?php
include 'templates/pie.php';?>
