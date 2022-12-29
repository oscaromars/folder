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
	$id_retencion= intval($_GET['id_retencion']);
	$sql_count=mysqli_query($con,"select * from retencion where id='".$id_retencion."'");
	$count=mysqli_num_rows($sql_count);
	if ($count==0)
	{
	echo "<script>alert('Retención no encontrada')</script>";
	echo "<script>window.close();</script>";
	exit;
	}
	$sql_retencion=mysqli_query($con,"select * from retencion where id='".$id_retencion."'");
	$rw_retencion=mysqli_fetch_array($sql_retencion);
	$numero_retencion=$rw_retencion['secuencial'];
	$id_cliente=$rw_retencion['cliente_id'];
	$id_emisor=$rw_retencion['emisor_id'];
	$id_establecimiento=$rw_retencion['establecimiento_id'];
	$fecha_retencion=$rw_retencion['fechaEmision'];
	$Autorizacion=$rw_retencion['fechaAutorizacion'];
	$acceso=$rw_retencion['claveAcceso'];
	$nAutorizacion=$rw_retencion['numeroAutorizacion'];
	$estado=$rw_retencion['estado'];
	$ambiente=$rw_retencion['ambiente'];
	$pemisor=$rw_retencion['ptoEmision_id'];
	$temision=$rw_retencion['tipoEmision'];
	$pfiscal=$rw_retencion['periodoFiscal'];
	require_once(dirname(__FILE__).'/../html2pdf.class.php');
    // get the HTML
     ob_start();
     include(dirname('__FILE__').'/res/retencion.php');
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
        $html2pdf->Output('Retencion.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
