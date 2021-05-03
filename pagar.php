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


  echo "<h3>".$Total. "</h3>";
   
    }
     }

?>

<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<style>
    
    /* Media query for mobile viewport */
    @media screen and (max-width: 400px) {
        #paypal-button-container {
            width: 100%;
        }
    }
    
    /* Media query for desktop viewport */
    @media screen and (min-width: 400px) {
        #paypal-button-container {
            width: 250px;
            display: inline-block;
        }
    }
    
</style>

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
    paypal.Button.render({
        env: 'sandbox', // sandbox | production
        style: {
            label: 'checkout',  // checkout | credit | pay | buynow | generic
            size:  'responsive', // small | medium | large | responsive
            shape: 'pill',   // pill | rect
            color: 'gold'   // gold | blue | silver | black
        },
 
        // PayPal Client IDs - replace with your own
        // Create a PayPal app: https://developer.paypal.com/developer/applications/create
 
        client: {
            sandbox:    '',
            production: ''
        },
 
        // Wait for the PayPal button to be clicked
 
        payment: function(data, actions) {
            return actions.payment.create({
                payment: {
                    transactions: [
                        {
                            amount: { total: '<?php echo $Total;?>', currency: 'MXN' }, 
                            description:"Compra de productos a Develoteca:$0.01",
                            custom:"Codigo"
                        }
                    ]
                }
            });
        },
 
        // Wait for the payment to be authorized by the customer
 
        onAuthorize: function(data, actions) {
            return actions.payment.execute().then(function() {
                console.log(data);
                window.location="verificador.php?paymentToken="+data.paymentToken+"&paymentID="+data.paymentID;
            });
        }
    
    }, '#paypal-button-container');
 
</script>

<?php
include 'templates/pie.php';
?>
