<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
.midnight-blue{
	background:#2c3e50;
	padding: 4px 4px 4px;
	color:white;
	font-weight:bold;
	font-size:12px;
}
.silver{
	background:white;
	padding: 3px 4px 3px;
}
.clouds{
	background:#ecf0f1;
	padding: 3px 4px 3px;
}
.border-top{
	border-top: solid 1px #bdc3c7;

}
.border-left{
	border-left: solid 1px #bdc3c7;
}
.border-right{
	border-right: solid 1px #bdc3c7;
}
.border-bottom{
	border-bottom: solid 1px #bdc3c7;
}
table.page_footer {width: 100%; border: none; background-color: white; padding: 12mm;border-collapse:collapse; border: none;}
}
-->
</style>
<style>
    .clase_table {
        border-collapse: separate;
        border-spacing: 10;
        border: 1px solid black;
        border-radius: 15px;
        -moz-border-radius: 20px;
        padding: 4px;
    }

    </style>
<page backtop="10mm" backbottom="15mm" backleft="15mm" backright="15mm" style="font-size: 12pt; font-family: arial" >
	<?php
							$sql_emisor=mysqli_query($con,"select * from Emisor where id='$id_emisor'");
							$rw_emisor=mysqli_fetch_array($sql_emisor);
							$sql_pemisor=mysqli_query($con,"select * from PtoEmision where id='$pemisor'");
							$rw_pemisor=mysqli_fetch_array($sql_pemisor);
							$sql_estable=mysqli_query($con,"select * from Establecimiento where id='$id_establecimiento'");
							$rw_estable=mysqli_fetch_array($sql_estable);
							 ?>
	<table cellspacing="0" style="width: 100%; text-align: left;">
			<tr>
					<td style="width: 45%;text-align:center" >
					<img style="width: 80%;" src="<?php echo $rw_emisor['dirLogo'];?>" alt="Logo"><br>
					<table class="clase_table" cellspacing="0"  style="width: 100%; text-align: left; font-size: 10pt;">
								<tr>
										<td style="width: 100%; text-align: left; font-size: 7pt;" >
										<p style="font-size:13px; text-align: center;"><b>
<?php echo $rw_emisor['razonSocial'];?>
<BR><BR>
	<?php echo $rw_emisor['nombreComercial'];?></b>
	</p>
	<b>	DIRECCIÓN MATRIZ:</b> <?php echo $rw_emisor['direccionMatriz'];?>
		<BR><BR>
		<b>	DIRECCIÓN ESTABLECIMMIENTO:</b> <?php echo $rw_estable['direccion'];?>
		<BR><BR>
		<b> <?php $regimenr=$rw_emisor['regimenRimpe'];
$regimenr1=$rw_emisor['regimenRimpe1'];

		if ($regimenr==1) {
			echo "CONTRIBUYENTE RÉGIMEN RIMPE";
		}
else {

if ($regimenr1==1) {
          echo "CONTRIBUYENTE Negocio Popular - Régimen RIMPE";
		}
  else { echo "";
}
		}
		?></b><?php	if ($rw_emisor['resolucionAgenteRetencion']=="") {
					echo "";
		}
		else { echo "<BR><BR><b>AGENTE RETENCION Nº:</b>" .$rw_emisor['resolucionAgenteRetencion'];
		}
		if ($rw_emisor['contribuyenteEspecial']=="") {
					echo "";
		}
		else { echo "<BR><BR><b>CONTRIBUYENTE ESPECIAL Nº:</b>" .$rw_emisor['contribuyenteEspecial'];
		}
			if ($rw_emisor['obligadoContabilidad']=="") {
						echo "";
			}
			else { echo "<BR><BR><b>OBLIGADO A LLEVAR CONTABILIDAD:</b>" .$rw_emisor['obligadoContabilidad'];
			}
			?>

</td>


								</tr>


						</table>	</td>
					<td style="width: 55%" >

							<table class="clase_table" cellspacing="0" style="width: 100%; text-align: left; font-size: 9pt;">
								<tr>

										<td style="width: 100%" >
												<p style="font-size:18px; text-align: center;"><b>R.U.C.: <?php echo $rw_emisor['ruc'];?></b>

</p><p style="font-size:12px;"><b>
COMPROBANTE DE RETENCIÓN <BR>No.</b>
<b>
<?php echo $rw_estable['codigo']."-".$rw_pemisor['codigo']."-".$numero_retencion;?></b>
<BR><BR>
FECHA Y HORA DE AUTORIZACIÓN:<b> <?php echo $Autorizacion;
?></b><BR><BR>
NÚMERO DE AUTORIZACIÓN<b><BR>
<?php echo $nAutorizacion;
?></b>
<BR><BR>
AMBIENTE: <?php
if ($ambiente==1) {
	echo "PRUEBA";
} else {
	echo "PRODUCCIÓN";
}
?>
<BR><BR>
EMISION: <?php
$temisor=$rw_emisor['tipoEmision'];
if ($temisor==1) {
	echo "NORMAL";
} else {
	echo "iNDISPONIBILIDAD SRI";
}
?>
</p>
<p style="text-align:center"><b>
CLAVE DE ACCESO</b>
<BR>
<?php  	barcode('barra/'.$acceso.'.png', $acceso, 35, 'horizontal', 'code128', true);
?>
<img  style="width: 95%;" src="<?php echo 'barra/'.$acceso.'.png';?>">
</p>
</td>

								</tr>


						</table></td>

			</tr>


	</table>


	  <table class="clase_table"style="width: 100%; text-align: left; font-size: 10pt;">


       <!--- <tr>
           <td style="width:25%;" class='midnight-blue'>FACTURAR A</td>
        </tr> --->
		<tr>
           <td style="width:100%;" colspan="2" >
			<?php
				$sql_cliente=mysqli_query($con,"select * from Cliente where id='$id_cliente'");
				$rw_cliente=mysqli_fetch_array($sql_cliente);
				echo "<b>Razón Social / Nombre y Apellido:</b> ".$rw_cliente['nombre'];
				//echo "<p  style=' font-size: 9pt;'> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;";
				echo "<br><b>Dirección:</b> " .$rw_cliente['direccion'];
			//	echo " </p>";
			?>
		   </td>
        </tr>
        <tr>
           <td style="width:55%;">
			<?php
						echo "<b>Identificación:</b> " .$rw_cliente['identificacion'];
				echo "<br>";

			?>
			<b>Fecha Emisión:</b>
			<?php echo date("d-m-Y", strtotime($fecha_retencion));?>

		   </td>
		   <td style="width:45%; text-align: right;" >
	<b>	Teléfono:</b>	<?php
				echo $rw_cliente['celular'];
			?><br>
		<b>	Email:</b>	<?php
					echo $rw_cliente['correoElectronico'];
				?>

		   </td>
        </tr>

    </table>
	<br>

    <table cellspacing="0" border="1"style="width: 100%; text-align: left;font-size: 11px;">
        <tr style="	background:black;
					color:white;text-align: center;font-size: 11px;
					">
            <th style="width: 20%;text-align:center" >Número Factura</th>
						<th style="width: 15%;text-align:center" >Ejercicio Fiscal</th>
            <th style="width: 15%" >Base Imponible para
la Retención</th>
            <th style="width: 15%;text-align:center" >Impuesto</th>
            <th style="width: 10%;text-align: center" >Cod Retención</th>
            <th style="width: 10%;text-align:center" >Porcentaje
Retención</th>
						<th style="width: 15%;text-align:center" >Valor Retenido</th>

        </tr>

				<?php

				$sql=mysqli_query($con, "select * from impuestocomprobanteretencion where  retencion_id='".$id_retencion."'");

				while ($row=mysqli_fetch_array($sql))
					{
					$nfactura=$row['numDocSustento'];
					$baseimponible=$row['baseImponible'];
					$impuesto=$row['codigo'];
					$cretencion=$row['codigoRetencion'];
					$pretencion=$row['porcentajeRetener'];
					$vretenido=$row['valorRetenido'];
					$sum += $row['valorRetenido'];

					}

				?>

        <tr>
					<td class='<?php echo $clase;?>' style="width: 20%; text-align: left"><?php echo $nfactura; ?></td>
            <td class='<?php echo $clase;?>' style="width: 15%; text-align: left"><?php echo $pfiscal; ?></td>
            <td class='<?php echo $clase;?>' style="width: 15%; text-align: left"><?php echo $baseimponible;?></td>
            <td class='<?php echo $clase;?>' style="width: 15%; text-align: left"><?php 	if ($impuesto==1) {
								echo "Renta";
							} elseif ($impuesto==2){
								echo "IVA";
							}
							else {
								echo "ISD";
							}?></td>
            <td class='<?php echo $clase;?>' style="width: 10%; text-align: center"><?php echo $cretencion;?></td>
            <td class='<?php echo $clase;?>' style="width: 10%; text-align: center"><?php echo $pretencion;?></td>
            <td class='<?php echo $clase;?>' style="width: 15%; text-align: right"><?php echo $vretenido;?></td>

        </tr>



        <tr>
            <td  colspan="4" style="width: 40%; text-align: left;font-size: 10px;">


							<br>




						</td>


													       		            <td colspan="2" style="widtd: 26%; text-align: right;font-size:12px;"><b> TOTAL A RETENER</b></td>
																							  <td style="widtd: 13%; text-align: right;font-size:12px;"><b><?php echo number_format($sum,2); ?></b> </td>
																	        </tr>
    </table>

	  <page_footer>



    </page_footer>

</page>
