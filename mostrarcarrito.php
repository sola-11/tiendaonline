<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>

<br>
<h3>Mi compra</h3>
<?php if(!empty ($_SESSION['CARRITO'])) { ?>

  
<table class="table table-light table-bordered">
    <tbody>
        <tr>
            <th width="40%">Producto</th>
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
        <tr>
        <td colspan="5">
<form action="pagar.php" method="post">
<div class="alert alert-dark">
<div class="form-group">
        <label for="my-input">Correo electronico:</label>
        <input id="email" name="email"
        class="form-control"
        type="email"
        placeholder="Inserta tu correo"
        required>
        
        </div>

<small id="emailHelp"
class="form-text text-muted">
Los productos serán enviados este correo.
</small>

</div>
<button class="btn btn-success btn-lg btn-block" type="submit"
name="btnAccion"
value="proceder">
<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
Proceder a pagar >>
</button>
</form>

    
        </td>
        </tr>

    </tbody>
</table>

 <div class="foto">
 <img src="img/24horasdedescu.gif" class="d-block w-100" alt="">
 </div>

<?php }else {?>
<div class="alert alert-success " >
Tu carrito de Onfash esta vacio.
</div>
<?php } ?>
<?php include 'templates/pie.php'; ?>