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
<page backtop="0mm" backbottom="0mm" backleft="0mm" backright="0mm" style="font-size: 12pt; font-family: arial" >
	<?php
							$sql_emisor=mysqli_query($con,"select * from Emisor where id='$id_emisor'");
							$rw_emisor=mysqli_fetch_array($sql_emisor);
							$sql_pemisor=mysqli_query($con,"select * from PtoEmision where id='$pemisor'");
							$rw_pemisor=mysqli_fetch_array($sql_pemisor);
							$sql_estable=mysqli_query($con,"select * from Establecimiento where id='$id_establecimiento'");
							$rw_estable=mysqli_fetch_array($sql_estable);
							 ?>
        <!--
        <table class="clase_table" cellspacing="0"  border="0" style="width: 88%; text-align: left; font-size: 9pt;">
        -->
        <table cellspacing="0"  border="0" style="width: 88%; text-align: left; font-size: 9pt;">
               <tr>
                   <td style="width: 100%; text-align: left; font-size: 7pt;" >
                       <p style="font-size:18px; text-align: center;">
                          <b>
							<?php echo $rw_emisor['nombreComercial'];?>
                          </b>
                          <BR>
						  <span style="font-size:10px; text-align: center;">
                                <b><?php echo $rw_emisor['razonSocial'];?></b>
                          </span>

                          <BR>

						  <span style="font-size:18px; text-align: center;">
                                <b>R.U.C.: <?php echo $rw_emisor['ruc'];?></b>
                          </span>
                          <span style=" text-align:left; font-size:10px;">
							<hr>
							<!--
							<b>DIRECCIÓN MATRIZ:</b> <?php //echo $rw_emisor['direccionMatriz'];?>
							<BR>
							-->
							<b>DIRECCIÓN ESTABLECIMIENTO:</b> <?php echo $rw_estable['direccion'];?>
							<BR>
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
							?></b>

							<?php	if ($rw_emisor['resolucionAgenteRetencion']=="") {
										echo "";
							}
							else { echo "<BR><b>AGENTE RETENCION Nº:</b>" .$rw_emisor['resolucionAgenteRetencion'];
							}
							if ($rw_emisor['contribuyenteEspecial']=="") {
										echo "";
							}
							else { echo "<BR><b>CONTRIBUYENTE ESPECIAL Nº:</b>" .$rw_emisor['contribuyenteEspecial'];
							}
								if ($rw_emisor['obligadoContabilidad']=="") {
											echo "";
								}
								else { echo "<BR><b>OBLIGADO A LLEVAR CONTABILIDAD:</b>" .$rw_emisor['obligadoContabilidad'];
								}
								?>
								</span>
								</p>
							</td>

													</tr>
								<tr>

										<td style="width: 100%" >

<p style="font-size:10px; text-align: center;">
	<hr>
	<b>
	***CLAVE DE ACCESO***</b>
	<br><?php	echo $acceso;?>
	<hr>
	<span style="font-size:14px;">
	<b>
FACTURA No.
<?php echo $rw_estable['codigo']."-".$rw_pemisor['codigo']."-".$numero_factura;?></b>
</span>

<!--
<span style="font-size:10px; text-align: left;">
	<br>
AMBIENTE: <?php
//if ($ambiente==1) {
//	echo "PRUEBA";
//} else {
//	echo "PRODUCCIÓN";
//}
?>
<BR>
EMISION: <?php
//$temisor=$rw_emisor['tipoEmision'];
//if ($temisor==1) {
//	echo "NORMAL";
//} else {
//	echo "iNDISPONIBILIDAD SRI";
//}
?>
</span>
-->

</p>
<hr>
</td>
								</tr>
								<tr>
											 <td style="width:100%;"  >
									<?php
										$sql_cliente=mysqli_query($con,"select * from Cliente where id='$id_cliente'");
										$rw_cliente=mysqli_fetch_array($sql_cliente);
										echo "<b>Razón Social / Nombre y Apellido:</b> ".$rw_cliente['nombre'];
										//echo "<p  style=' font-size: 9pt;'> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;";
										echo "<br><b>Dirección:</b> " .$rw_cliente['direccion'];
									//	echo " </p>";

												echo "<br><b>Identificación:</b> " .$rw_cliente['identificacion'];
										echo "<br>";

									?>
									<b>Fecha Emisión:</b>
									<?php echo date("d-m-Y", strtotime($fecha_factura));?>
									<!--
									<br><?php	//echo "<b>Fecha de vencimiento: </b>".date("d-m-Y", strtotime($fecha_factura)); ?>
                                    -->
							<br>
								<b>Teléfono:</b>	<?php
										echo $rw_cliente['celular'];
									?><br>
								<b>Email:</b>	<?php
											echo $rw_cliente['correoElectronico'];
										?>

									 </td>

			</tr>
				<tr>
		<td>
			<table cellspacing="0" border="0"style="width: 100%; text-align: left;font-size: 10px;">
					<tr>
						<th colspan="6" >	<hr></th>
					</tr>
					<tr>
							<th style="width: 14%;text-align:center;" >COD.</th>
							<th style="width: 12%;text-align:center;" >CANT.</th>
							<th style="width: 34%;text-align:center;" >DETALLE</th>
							<th style="width: 13%;text-align:center;" >V.UNI</th>
							<th style="width: 13%;text-align:center;" >DSCT%</th>
							<th style="width: 14%;text-align:center;" >TOTAL</th>
					</tr>
					<tr>
						<th colspan="6" >	<hr></th>
					</tr>

			<?php
			$nums=1;
			$sumador_total=0;
			$sql=mysqli_query($con, "select * from Producto, FacturaHasProducto, Factura where Producto.id=FacturaHasProducto.producto_id and FacturaHasProducto.factura_id=Factura.id and Factura.id='".$id_ticket."'");

			while ($row=mysqli_fetch_array($sql))
			{
			$id_producto=$row["id"];
			$codigo_producto=$row['codigoPrincipal'];
			$cantidad=$row['cantidad'];
			$nombre_producto=$row['nombre'];
			$codigo=$row['codigoPrincipal'];
			$descuento=$row['descuento'];

			$precio_venta=$row['precioUnitario'];
			$precio_venta_f=number_format($precio_venta,2);//Formateo variables
			$precio_venta_r=str_replace(",","",$precio_venta_f);//Reemplazo las comas
			$precio_total=$precio_venta_r*$cantidad;
			$precio_total_f=number_format($precio_total,2);//Precio total formateado
			$precio_total_r=str_replace(",","",$precio_total_f);//Reemplazo las comas
			$sumador_total+=$precio_total_r;//Sumador
			if ($nums%2==0){
			$clase="clouds";
			} else {
			$clase="silver";
			}
			?>

					<tr>
						<td class='<?php echo $clase;?>' style="width: 10%; text-align: left"><?php echo $codigo; ?></td>
							<td class='<?php echo $clase;?>' style="width: 10%; text-align: right"><?php echo $cantidad; ?></td>
							<td class='<?php echo $clase;?>' style="width: 40%; text-align: left"><?php echo $nombre_producto;?></td>
							<td class='<?php echo $clase;?>' style="width: 13%; text-align: center"><?php echo $precio_venta_f;?></td>
							<td class='<?php echo $clase;?>' style="width: 13%; text-align: center"><?php echo $descuento;?></td>
							<td class='<?php echo $clase;?>' style="width: 14%; text-align: right"><?php echo $precio_total_f;?></td>

					</tr>
					<tr>
						<th colspan="6" >	<hr></th>
					</tr>

			<?php


			$nums++;
			}
			?>

					<tr>

							<td colspan="3"style="widtd: 26%; text-align: right;"><b>SUBTOTAL 12% </b></td>
								<td colspan="3" style="widtd: 14%; text-align: right;"><?php echo $rw_factura['subtotal12']; ?> </td>
					</tr>
			<tr>

							<td colspan="3" style="widtd: 26%; text-align: right;"><b> SUBTOTAL 0%</b></td>
								<td colspan="3" style="widtd: 14%; text-align: right;"> <?php echo $rw_factura['subtotal0']; ?></td>
					</tr>	<tr>

										<td colspan="3" style="widtd: 26%; text-align: right;"><b> SUBTOTAL no objeto de IVA</b></td>
											<td colspan="3" style="widtd: 14%; text-align: right;"><?php echo $rw_factura['subtotalNoIVA']; ?> </td>
								</tr>	<tr>

													<td colspan="3" style="widtd: 26%; text-align: right;"><b>SUBTOTAL exento de IVA </b></td>
														<td colspan="3" style="widtd: 14%; text-align: right;"><?php echo $rw_factura['subtotalExentoIVA']; ?> </td>
											</tr>	<tr>

																<td colspan="3" style="widtd: 26%; text-align: right;"><b>SUBTOTAL SIN IMPUESTOS</b> </td>
																	<td colspan="3" style="widtd: 14%; text-align: right;"><?php echo $rw_factura['totalSinImpuestos']; ?> </td>
														</tr>
														<tr>

																		<td colspan="3" style="widtd: 26%; text-align: right;"> <b>TOTAL Descuento</b> </td>
																			<td colspan="3" style="widtd: 13%; text-align: right;"><?php echo $rw_factura['totalDescuento']; ?></td>
																</tr><tr>

																				<td colspan="3" style="widtd: 26%; text-align: right;"> <b>IVA 12%</b> </td>
																					<td colspan="3" style="widtd: 13%; text-align: right;"> <?php echo $rw_factura['iva12']; ?></td>
																		</tr>
                                                                        <!--
                                                                        <tr>
																			<td colspan="3" style="widtd: 26%; text-align: right;"><b>PROPINA </b></td>
																			<td colspan="3" style="widtd: 13%; text-align: right;"><?php //echo $rw_factura['propina']; ?></td>
																		</tr>
																		-->
                                                                                <tr>

																								<td colspan="3" style="widtd: 26%; text-align: right;font-size:12px;"><b>TOTAL</b></td>
																									<td colspan="3" style="widtd: 13%; text-align: right;font-size:12px;"><b><?php echo $rw_factura['valorTotal']; ?></b></td>
																						</tr>
																						<tr>
																							<th colspan="6" >	<hr>
																							<p style="font-size: 20px;text-align: right;"><b>TOTAL A PAGAR  $ <?php echo $rw_factura['valorTotal']; ?></b></p>
<hr>
																						</th>
																						</tr>
																						<tr>
																						<td colspan="6"style="width: 100%; text-align: left">
																							<?php
																							if ($rw_factura['observacion'] != "") {
																						      echo "<span style='font-size: 12px;'>	<b>Información Adicional</b></span><br>";
																							  echo "<b>Observaciones: </b>".$rw_factura['observacion']."<br>";
                                                                                            }
																							if ($formaPago == ("01")) {
																									$formaDePago = "SIN UTILIZACION DEL SISTEMA FINANCIERO";
																							} else if ($formaPago == ("15")) {
																									$formaDePago = "COMPENSACIÓN DE DEUDAS";
																							} else if ($formaPago == ("16")) {
																									$formaDePago = "TARJETA DE DÉBITO";
																							} else if ($formaPago == ("17")) {
																									$formaDePago = "DINERO ELECTRÓNICO";
																							} else if ($formaPago == ("18")) {
																									$formaDePago = "TARJETA PREPAGO";
																							}else if ($formaPago == ("19")) {
																									$formaDePago = "TARJETA DE CRÉDITO";
																							} else if ($formaPago == ("20")) {
																									$formaDePago = "OTROS CON UTILIZACION DEL SISTEMA FINANCIERO";
																							} else if ($formaPago == ("21")) {
																									$formaDePago = ">ENDOSO DE TÍTULOS";
																							}
																							echo "<b>Forma Pago </b>".$formaDePago."<br>";
																							
																							echo "<b>Enviar Retencion a: </b>".$rw_emisor['correoRemitente'];

																						?>



																						</td>


																					</tr>
																					<!--
																					<tr>
																						<td colspan="6" >	<hr></td>
																					</tr>
																					-->
																					<tr>
																						<td colspan="6" style=" text-align: center;"><b>Gracias por su compra</b></td>
																				</tr>
																				<!--
																				<tr>
																					<td colspan="6" >	<hr></td>
																				</tr>
																				-->

			</table>
		</td>

 </tr>
	</table>



	<br>


	  <page_footer>



    </page_footer>

</page>
