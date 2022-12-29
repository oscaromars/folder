<?php
	/*-------------------------
	Autor: VELOSAN
	Web: velosan.org
	Mail: info@velosan.org
	---------------------------*/
//include("../pdf/db.php");
include("../pdf/conexion.php");

?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Sistema de Facturaci&oacute;n Electr&oacute;nica</title>



<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Bootstrap core CSS -->
        <link href="../recursos/framework/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../recursos/framework/jquery-ui/jquery-ui.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../recursos/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">


        <!-- Morris Charts CSS -->
        <link href="../recursos/bower_components/morrisjs/morris.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="../recursos/framework/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- Style CSS -->
        <link href="../recursos/css/timeline.css" rel="stylesheet">
        <link href="../recursos/css/sb-admin-2.css" rel="stylesheet">
        <link href="../recursos/css/custom.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    </head>

  </head>
  <body>

    <div class="container" >
<br>
      <table border="0" class="table" style="width: 100%; text-align: center;">
        <tr>
          <td colspan="2" >
            <div class="panel panel-info">
        		    <div class="btn-group pull-right info">
                  <!--bottom-->
        				</div>
        			<h4><i class='glyphicon glyphicon-search'></i> Factura del Cliente</h4>
        		</div></td>
        </tr>
        <tr>
          <td style="width: 30%; text-align: left;"><?php
          if (isset($_GET['form_sent']) && $_GET['form_sent'] == "true") {
           $SDATE = $_GET['Cedula'];
         require_once('../pdf/conexion.php');


          $qsl1 = "SELECT * FROM cliente WHERE identificacion = '$SDATE'";
          $cliented = $con->query($qsl1);
          while ( $row2 = $cliented->fetch_array() )
          {

          $nombrecliente=$row2['nombre'];
          $correocliente=$row2['correoElectronico'];
          $idcliente=$row2['id'];

          if ($nombrecliente == "") {
            echo "<h5>El cliente no existe:".$SDATE."</h5>";
          }
          else {
          echo "<h5>Resultado para: ".$SDATE."</h5>";
           echo $nombrecliente. "<br>";
           echo $correocliente;
          }

          }


        }
    else {
    echo "  Escribe el Ruc o Cedula del Cliente";
    }
          ?></td>
          <td style="width: 70%; text-align: center;">
            <form >
  				<div class="table-responsive">
  					<div style="float: left; width: 70%">
  						<div class="form-group">
  						<label for="Cedula" class="col-sm-3 control-label">Cedula / RUC:</label>
  					     <div class="col-sm-8">
  					    <input type="text" id="Cedula" name="Cedula" class="form-control" placeholder="12345689789" required>
  						</div>
  					</div>
  					</div>
  <div style="float: right; width: 30%">
  					<div class="form-group">
  						 <div class="col-sm-8">
  					    <input type="hidden" id="form_sent" name="form_sent" value="true">
  					    <input type="submit" id="btn_submit" class="btn btn-primary" value="Consultar">
  						</div>
  						</div>
  							</div>

  					</p>
  </div>
  					</form>
          </td>
        </tr>
<tr>
  <td colspan="2"  style="width: 100%; text-align: center;">

    <div class="panel panel-info">

      <div class="panel-body">

            <div class="form-group row">
               <div class="col-md-3">
              </div>
            </div>
    <div class='outer_div'>

    <?php

    if (isset($_GET['form_sent']) && $_GET['form_sent'] == "true") {

    ?>


    <table class="table" border="2">

      <tr class="info">
        <th>ID</th>
        <th>N. Factura</th>
         <th>Fecha</th>
        <th>Estado</th>
        <th>F. Autorizacion</th>
        <th>V. Total</th>
        <th >occiones</th>
      </tr>

    <?php
    $i = 1;

                //SELECT * FROM test WHERE course_date BETWEEN '2015-01-09' AND '2015-10-01'

              $strsql = "SELECT * FROM factura WHERE cliente_id = '$idcliente'";

            $rs = $con->query($strsql);

            while ( $row = $rs->fetch_array() )
            {

              $id_factura=$row['id'];
              $secuencial=$row['secuencial'];
              $archivo=$row['nombreArchivo'];
              $emisor=$row['emisor_id'];
              $fecha=date("d/m/Y", strtotime($row['fechaEmision']));
              $estado_factura=$row['estado'];
              if ($estado_factura=="AUTORIZADO"){$text_estado="AUTORIZADO";$label_class='label-success';}
              elseif ($estado_factura=="CREADA"){$text_estado="CREADA";$label_class='label-warning';}
              elseif ($estado_factura=="NO AUTORIZADO"){$text_estado="NO AUTORIZADO";$label_class='label-default';}
              else{$text_estado="ERROR";$label_class='label-danger';}
              $total_venta=$row['valorTotal'];

              if ($id_factura == "") {
                echo "<h5>El cliente no existe:".$SDATE."</h5>";
              }
              else {

            $strsqlemi = "SELECT * FROM emisor WHERE id = '$emisor'";

          $rsemi = $con->query($strsqlemi);

          while ( $rowemi = $rsemi->fetch_array() )
          {
              $archivofac=$rowemi['dirDocAutorizados'];

    $uriData=explode("/",$archivofac );//SEPARAR URL POR /
    $conexplo =count($uriData);//CONTAR ARAY DE URL
    $c= $conexplo-1 ;//MISTRAR EL ULTIMO ARRAY
    $archi= $uriData[$c];//MOSTRAR EL ULTIMO ARRAY EN LETRAS
    $ride = $archi."/".$SDATE."/".$archivo.".pdf";//CONBINAR ARRAY Y URL DE ARCHIVO
    $ridexml = $archi."/".$SDATE."/".$archivo.".xml";


          }
    ?>
                <tr>
                  <td><?php echo $i++; ?></td>
                  <td><?php echo $secuencial; ?></td>
                  <td><?php echo $fecha; ?></td>
                  <td><?php echo $text_estado; ?></td>
                  <td><?php echo $fecha; ?></td>
                  <td><?php echo $total_venta; ?></td>
                <?php  if ($text_estado =="AUTORIZADO") {?>
                  <td><a href="<?php echo "../".$ridexml; ?>"><i class="fa fa-file-xml-o"></i> XML</a> -- <a href="<?php echo "../".$ride; ?>"><i class="fa fa-file-pdf-o"></i> PDF</a></td>


              <?php  }
              else {
              echo "<td>No hay Documento</td>";
              }

                    ?>



                </tr>
            <?php

                }
           }
         } else {
             echo "  Nada que mostrar";
         } ?>
          </div>
          </div></div>

  </td>
</tr>

      </table>

      </div>
