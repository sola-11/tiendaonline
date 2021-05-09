<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>
 <br/>
 <?php if($mensaje!=""){?>
                <div class="alert alert-primary">
                <?php echo $mensaje; ?> 

                <a href="mostrarcarrito.php" class="badge bg-secondary">Ver mi compra</a>
                   </div>
                   <?php  }?>
                   
<?php 

$busqueda= strtolower($_REQUEST['busqueda']);
 if(empty($busqueda)) 
{
  header("localhost: 2.php");
}

?>
                   <form action="buscar_2.php" method="get" class="form_search">
                             <input type="text" name="busqueda" id="busqueda" placeholder="Buscar" value="<?php echo $busqueda;?>">
                             <input type="submit" value="Buscar" class="btn_search">
                             </form>
                             <?php 
                             if($busqueda == '$producto') {
                                 echo $producto;
                                 }else if($busqueda == 'listaProductos')  {
                                     echo $listaProductos;
                                 }     
                                                      ?>
    <br/> <br/> <br/> 
   	<div class="row">
     <?php
     //paginador
     $Precio= '';
      if($busqueda == '250')
      {
          $Precio="OR Precio LIKE '%0%'";
      }else if($busqueda == '300')
      {
          $Precio= "OR Precio LIKE '%1%'";
      }else if($busqueda == '300')
      {
          $Precio= "OR Precio LIKE '%5%'";
      }

       
      $sentencia=$pdo->prepare("SELECT COUNT(*) total_productos FROM tblproductos WHERE 
      ( ID LIKE '%$busqueda%' OR 
      Nombre LIKE '%$busqueda%' OR
      Descripción LIKE '%$busqueda%' OR
      Imagen LIKE '%$busqueda%' OR
      Precio LIKE '%$busqueda%' )");    
      $sentencia->execute();
      $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
      //print_r($listaProductos);   
    ?>
    <?php foreach($listaProductos as $producto){ ?>

    
      <div class="col-3">
      <div class="card">
      
        <img         
        alt="Card image cap"
        title="<?php echo $producto['Nombre'];?>"
        alt="<?php echo $producto['Nombre'];?>"
        class="card-img-top" 
        src="<?php echo $producto['Imagen'];?>"
         data-toggle="popover"
         data-trigger="hover"
         data-content="<?php echo $producto['Descripción'];?>"
        heigth="317px" >
      
        <div class="card-body" style="heigth: 40%;">
        <span>$<?php echo $producto['Nombre'];?></span> 
        <h5 class="card-title">$<?php echo $producto['Precio'];?></h5>
          <p class="card-text">Disponible
          </p>
         
         <form action="" method="post">

         <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt ($producto['ID'],COD,KEY);?>">
         <input type="hidden" name="Nombre" id="Nombre" value="<?php echo openssl_encrypt ($producto['Nombre'],COD,KEY);?>">
         <input type="hidden" name="Precio" id="Precio" value="<?php echo openssl_encrypt ($producto['Precio'],COD,KEY);?>">
         <input type="hidden" name="Cantidad" id="Cantidad" value="<?php echo openssl_encrypt (1,COD,KEY);?>">
 
         <button 
          class="btn btn-primary"
           name="btnAccion" 
           value="Agregar" 
           type="submit">
            Agregar al carrito
              </button>
         </form>
      
          </div>
   </div>
   <br>
      </div>
      
      <?php } ?>
      </div>

<script>
$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>

<?php
include 'templates/pie.php';
?>