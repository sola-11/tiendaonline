<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<br>
<h4>Mi compra</h4>
<?php if(!empty ($_SESSION['CARRITO'])) { ?>


<table class="table table-light table-bordered">
    <tbody>
        <tr>
            <th width="40%">Description</th>
            <th width="150%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="20%" class="text-center">Total</th>
            <th width="5%">--</th>
        </tr>
        <?php $total=0; ?>
   <?php foreach($_SESSION['CARRITO'] as $indice=>$producto){ ?>

        <tr>
            <td width="40%"><?php echo $producto['NOMBRE'] ?></td>
            <td width="150%" class="text-center"><?php echo $producto['CANTIDAD'] ?></td>
            <td width="20%" class="text-center">$<?php echo $producto['PRECIO'] ?></td>
            <td width="20%" class="text-center">$<?php echo number_format( $producto['PRECIO']*$producto['CANTIDAD'],2); ?></td>
            <td width="5%">
            
            <form action="" method="post">
            <input type="hidden"
             name="id"
             value="<?php echo openssl_encrypt ($producto['ID'],COD,KEY); ?>">

           <button 
           class="btn btn-danger"
           type="submit"
           name="btnAccion"
           value="Eliminar" 
            >Eliminar</button>
            
           </form>
            </td>
        </tr>
        <?php $total=$total+($producto['PRECIO']*$producto['CANTIDAD']); ?>
        <?php  } ?>
       
       
        <tr>
            <td colspan="3" alig="right"><h3>Total</h3></td>
            <td alig="right"><h3>$<?php echo number_format($total, 2); ?></h3></td>
            <td></td>
        </tr>
    </tbody>
</table>
<?php }else {?>
<div class="alert alert-danger " >
No hay productos en tu lista de compra...
</div>
<?php } ?>
<?php include 'templates/pie.php'; ?>