<?php
session_start();

$mensaje="";

if(isset($_POST['btnAccion'])){

   switch($_POST['btnAccion']){

    case 'Agregar';

       if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY))){
          $ID=openssl_decrypt($_POST['id'], COD,KEY);
          $mensaje.="Ok ID correcto" .$ID ."</br>";


       }else{
              $mensaje.="Upps... ID incorrecto" .$ID."</br>";

       }
       if (is_string(openssl_decrypt($_POST['nombre'], COD,KEY ))){
          $NOMBRE=openssl_decrypt($_POST['nombre'], COD,KEY);
          $mensaje.="Ok NOMBRE" .$NOMBRE."</br>";
       }else{  $mensaje.="Upps... error con el nombre"."</br>";  break;}

       if(is_numeric(openssl_decrypt($_POST['cantidad'], COD,KEY))){
          $CANTIDAD=openssl_decrypt($_POST['cantidad'],COD,KEY);
          $mensaje.="Ok CANTIDAD" .$CANTIDAD."</br>";
       }else{  $mensaje.="Upps... error con cantidad"."</br>";  break;}

       if(is_numeric(openssl_decrypt($_POST['precio'], COD,KEY))){
          $PRECIO=openssl_decrypt($_POST['precio'],COD,KEY);  
          $mensaje.="Ok PRECIO" .$PRECIO."</br>";
         }else{  $mensaje.="Upps... error con precio"."</br>";  break;}
          
    if(!isset($_SESSION['CARRITO'])){
        $producto=array(
        'ID' =>$ID,
        'NOMBRE' =>$NOMBRE,
        'CANTIDAD' =>$CANTIDAD,
       'PRECIO' =>$PRECIO
         );
      $_SESSION['CARRITO'][0]=$producto;
      $mensaje= "Producto agregado";

   }else{
      $idProductos=array_column($_SESSION['CARRITO'], "ID");

       if(in_array($ID, $idProductos)){
          echo "<script>alert('El producto ya fue seleccionado');</script>";
          $mensaje="";

       }else {

   $NumeroProductos=count($_SESSION['CARRITO']);
   $producto=array(
      'ID' =>$ID,
      'NOMBRE' =>$NOMBRE,
      'CANTIDAD' =>$CANTIDAD,
      'PRECIO' =>$PRECIO
      );

      $_SESSION['CARRITO'][$NumeroProductos]=$producto;
      $mensaje= "Producto agregado";
}

 }
 //$mensaje= print_r( $_SESSION, true);


       break;
       case "Eliminar";
       if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY))){
         $ID=openssl_decrypt($_POST['id'], COD,KEY);
         
         foreach($_SESSION['CARRITO'] as $indice=>$producto){
          if($producto['ID']==$ID){
             unset($_SESSION['CARRITO'] [$indice]);
             ECHO "<script>alert(Elemento borrado...);</script>";

          }

         }


      }else{
             $mensaje.="Upps... ID incorrecto" .$ID."</br>";

       }
       break;
   }

}


?>