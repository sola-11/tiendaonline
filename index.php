<?php
include "global/config.php";
include "global/conexion.php";
include 'carrito.php'
?>
<!DOCTYPE html>
<html lang="en">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <head>
   <title>Tienda JYKYLS</title>
    
    <link rel="stylesheet"   href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
  </head> 	  
	      <body>          
        <nav>  
           <div class="logo">
             <a href="index.php">Onfash</a>
           </div>   
                                                    
                    <ul>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="2.php">Lo que todos compran</a></li>
                        <li><a href="3.php">Cosmeticos</a></li>
                        <li><a href="4.php">Productos</a></li>
                        <li><a href="5.php">Carrito(0)</a></li> 
                </div>
                </ul> 
                </div>      
                </nav>
                <div class="banner-area">
                  <h2></h2>
                </div>
                                
          

               <br/>
               

                <div class="container">
    
                <br/>
                <div class="alert alert-success">
                <?php echo $mensaje; ?>    
                <a class="badge badge-success" href="#">Ver mi compra</a>
                   </div>
                   

    <br/>
   	<div class="row">
     <?php
      $setencia=$pdo->prepare("SELECT * FROM `tblproductos`");
      $sentencia->execute();
      $listaProductos=$sentencia_fetAll(PDO::FETH_ASSOC);
      print_($listaProductos); 
    ?>


       <div class="col-3">
      <div class="card">
        <img 

        title="Vestido"
        alt="Título"
        class="card-img-top" 
        src="img/1.jpg">

        <div class="card-body">
        <span>Vestido</span> 
        <h5 class="card-title">$350.00</h5>
          <p class="card-text">Amarillo, Azul, Rosa 
          </p>
         
         <form action="" method="post">

         <input type="text" name="id" id="id" value="1">
         <input type="text" name="nombre" id="nombre" value="Vestido">
         <input type="text" name="precio" id="precio" value="$350.00">
         <input type="text" name="cantidad" id="cantidad" value="1">

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
      </div>

     
      <div class="col-3">
      <div class="card">
        <img 
        title="TT-SHIRT"
        alt="Título"
        class="card-img-top" 
        src="img/3.jpg">

        <div class="card-body">
        <span>T-shirt</span> 
        <h5 class="card-title">$250.00</h5>
          <p class="card-text">Amarillo, Negro, Rosa, Blanco</p>
          <button 
          class="btn btn-primary"
           name="btnAccion" 
           value="Agregar" 
           type="submit">
            Agregar al carrito
              </button>
      </div>
      </div>
      </div>
      <div class="col-3">
      <div class="card">
        <img 
        title="CINTILLO"
        alt="Título"
        class="card-img-top" 
        src="img/6.JPG">

        <div class="card-body">
        <span>Cintillo decorado</span> 
        <h5 class="card-title">$185.00</h5>
          <p class="card-text">Azul, Amarillo, Negro, Rosa pastel</p>
          <button 
          class="btn btn-primary"
           name="btnAccion" 
           value="Agregar" 
           type="submit">
            Agregar al carrito
              </button>
     </div>
      </div>
      </div>    

      <div class="col-3">
      <div class="card">
        <img 
        title="LENTES"
        alt="Título"
        class="card-img-top" 
        src="img/2.PNG">

        <div class="card-body">
        <span>Lentillas de lujo</span> 
        <h5 class="card-title">$125.00</h5>
          <p class="card-text">Disponible en Negro, Gris, Rosa, Naranja, Verde, Violeta, Azul</p>
          <button 
          class="btn btn-primary"
           name="btnAccion" 
           value="Agregar" 
           type="submit">
            Agregar al carrito
              </button>
      </div>
      </div>
      </div>
</body>
</html>
