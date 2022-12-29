<?php 

  // Nos conectamos a la Base de Datos MySQL
  $con = mysqli_connect("localhost", "renesan1_fact", "renesan020491", "renesan1_fact");
 
  // Verificamos la conexión a la Base de Datos MySQL 
  if (mysqli_connect_errno()) {
      echo "Error al Conectar a la base de Datos: " . mysqli_connect_error();
  }

?>
