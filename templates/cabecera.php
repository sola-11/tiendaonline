<!DOCTYPE html>
<html lang="en">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <head>
   <title>ONFASH</title>
    
    <link rel="stylesheet"   href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  </head> 	  
	      <body>          
        <nav>  
           <div class="logo">
             <a href="index.php"><h3>Onfash</h3></a>
           </div>   
                                                    
                    <ul>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="2.php">Lo que todos compran</a></li>
                        <li><a href="3.php">Cosmeticos</a></li>
                        <li><a href="">Productos</a>
                     <ul>
                     <li><a href="4.php">Sala</a></li>
                     <li><a href="5.php">Cocina</a></li>
                     <li><a href="6.php">Habitaciones</a></li>
                     <li><a href="7.php">Belleza</a></li>
                     <li><a href="8.php">Viaje</a></li>
                     </ul>
                      </li>                       

                        <li><a href="mostrarcarrito.php">Carrito(<?php 
                        echo (empty($_SESSION['CARRITO']))?0:count($_SESSION['CARRITO']); 
                        ?>)</a></li> 
                </div>
                </ul> 
                </div>      
                </nav>
                <div class="banner-area">
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <h2>Especial en Home y desuentos toda la semana</h2>
                </div>
                                
          

               <br/>
               

                <div class="container">