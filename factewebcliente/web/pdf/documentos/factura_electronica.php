<?php
	/*-------------------------
	Autor: SERVISAN
	Web: servisan.es.tl
	Mail: info@papeleriasanchezj.com
	---------------------------*/

	/* Connect To Database*/
	include 'barcode.php';
	include("../conexion.php");
	//Archivo de funciones PHP
	include("../funciones.php");
	$id_factura= intval($_GET['id_factura']);
	$sql_count=mysqli_query($con,"select * from Factura where id='$id_factura'");
	$count=mysqli_num_rows($sql_count);
	if ($count==0)
	{
	echo "<script>alert('Factura no encontrada')</script>";
	echo "<script>window.close();</script>";
	exit;
	}
	$sql_factura=mysqli_query($con,"select * from Factura where id='$id_factura'");
	$rw_factura=mysqli_fetch_array($sql_factura);
	$numero_factura=$rw_factura['secuencial'];
	$id_cliente=$rw_factura['cliente_id'];
	$id_emisor=$rw_factura['emisor_id'];
	$id_establecimiento=$rw_factura['establecimiento_id'];
	$fecha_factura=$rw_factura['fechaEmision'];
	$Autorizacion=$rw_factura['fechaAutorizacion'];
	$acceso=$rw_factura['claveAcceso'];
	$nAutorizacion=$rw_factura['numeroAutorizacion'];
	$estado=$rw_factura['estado'];
	$ambiente=$rw_factura['ambiente'];
	$pemisor=$rw_factura['ptoEmision_id'];
	$temision=$rw_factura['tipoEmision'];
	$formaPago=$rw_factura['formaPago'];
	require_once(dirname(__FILE__).'/../html2pdf.class.php');
    // get the HTML
     ob_start();
     include(dirname('__FILE__').'/res/factura_electronica.php');
    $content = ob_get_clean();

    try
    {
        // init HTML2PDF
        $html2pdf = new HTML2PDF('P', 'LETTER', 'es', true, 'UTF-8', array(0, 0, 0, 0));
        // display the full page
        $html2pdf->pdf->SetDisplayMode('fullpage');
        // convert
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        // send the PDF
        $html2pdf->Output('Factura.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
