<?php

namespace FactelBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use FactelBundle\Entity\Cliente;
use FactelBundle\Form\ClienteType;
use JMS\SecurityExtraBundle\Annotation\Secure;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\ResponseHeaderBag;

require('fpdf.php');

/**
 * Cliente controller.
 *
 * @Route("/comprobantes/reporte")
 */
class ReporteController extends Controller {

    /**
     * Lists all Cliente entities.
     *
     * @Route("/", name="reporte")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     * @Template()
     */
    public function indexAction() {
        return array(
        );
    }

    /**
     * Lists all Cliente entities.
     *
     * @Route("/reporte-ventas", name="reporte_ventas")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     * @Template()
     */
    public function reporteVentasAction() {
        return array(
        );
    }

    /**
     * Lists all Cliente entities.
     *
     * @Route("/reporte-ventas-detallada", name="reporte_ventas_detallada")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     * @Template()
     */
    public function reporteVentasDetalladaAction() {
        return array(
        );
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/nc", name="all_nc")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function notaCreditoAction() {
        return $this->facturasAction("NC");
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/lq", name="all_lq")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function liquidacionCompraAction() {
        return $this->facturasAction("LQ");
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/nd", name="all_nd")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function notaDebitoAction() {
        return $this->facturasAction("ND");
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/cr", name="all_cr")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function retencionAction() {
        return $this->facturasAction("CR");
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/gr", name="all_gr")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function guiaAction() {
        return $this->facturasAction("GR");
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/todo", name="all_reporte")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function facturasAction($comprobante = null, $sSearch = "", $excel = false) {
        if (isset($_GET['sEcho'])) {
            $sEcho = $_GET['sEcho'];
        }
        $iDisplayStart = 0;
        if (isset($_GET['iDisplayStart'])) {
            $iDisplayStart = intval($_GET['iDisplayStart']);
        }
        $iDisplayLength = 100000;
        if (isset($_GET['iDisplayLength'])) {
            $iDisplayLength = intval($_GET['iDisplayLength']);
        }

        if (isset($_GET['sSearch'])) {
            $sSearch = $_GET['sSearch'];
        }

        $em = $this->getDoctrine()->getManager();
        $emisorId = null;
        $idPtoEmision = null;
        if ($this->get("security.context")->isGranted("ROLE_EMISOR_ADMIN")) {
            $emisorId = $em->getRepository('FactelBundle:User')->findEmisorId($this->get("security.context")->gettoken()->getuser()->getId());
        } else {
            $idPtoEmision = $em->getRepository('FactelBundle:PtoEmision')->findIdPtoEmisionByUsuario($this->get("security.context")->gettoken()->getuser()->getId());
        }
        $ruta = "";
        if ($comprobante == "NC") {
            $ruta = "notacredito_show";
            $count = $em->getRepository('FactelBundle:NotaCredito')->cantidadNotasCredito($idPtoEmision, $emisorId);
            $entities = $em->getRepository('FactelBundle:NotaCredito')->findNotasCredito($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId);
            $totalDisplayRecords = $count;

            if ($sSearch != "") {
                $totalDisplayRecords = count($em->getRepository('FactelBundle:NotaCredito')->findNotasCredito($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId));
            }
        } else if ($comprobante == "LQ") {
            $ruta = "liquidacion_show";
            $count = $em->getRepository('FactelBundle:LiquidacionCompra')->cantidadLiquidaciones($idPtoEmision, $emisorId);
            $entities = $em->getRepository('FactelBundle:LiquidacionCompra')->findLiquidaciones($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId);
            $totalDisplayRecords = $count;

            if ($sSearch != "") {
                $totalDisplayRecords = count($em->getRepository('FactelBundle:LiquidacionCompra')->findLiquidaciones($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId));
            }
        } else if ($comprobante == "ND") {
            $count = $em->getRepository('FactelBundle:NotaDebito')->cantidadNotasDebito($idPtoEmision, $emisorId);
            $entities = $em->getRepository('FactelBundle:NotaDebito')->findNotasDebito($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId);
            $totalDisplayRecords = $count;
            $ruta = "notadebito_show";
            if ($sSearch != "") {
                $totalDisplayRecords = count($em->getRepository('FactelBundle:NotaDebito')->findNotasDebito($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId));
            }
        } else if ($comprobante == "CR") {
            $ruta = "retencion_show";
            $count = $em->getRepository('FactelBundle:Retencion')->cantidadRetenciones($idPtoEmision, $emisorId);
            $entities = $em->getRepository('FactelBundle:Retencion')->findRetenciones($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId);
            $totalDisplayRecords = $count;

            if ($sSearch != "") {
                $totalDisplayRecords = count($em->getRepository('FactelBundle:Retencion')->findRetenciones($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId));
            }
        } else if ($comprobante == "GR") {
            $ruta = "guia_show";
            $count = $em->getRepository('FactelBundle:Guia')->cantidadGuias($idPtoEmision, $emisorId);
            $entities = $em->getRepository('FactelBundle:Guia')->findGuias($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId);
            $totalDisplayRecords = $count;

            if ($sSearch != "") {
                $totalDisplayRecords = count($em->getRepository('FactelBundle:Guia')->findGuias($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId));
            }
        } else {
            $ruta = "factura_show";
            $count = $em->getRepository('FactelBundle:Factura')->cantidadFacturas($idPtoEmision, $emisorId);
            $entities = $em->getRepository('FactelBundle:Factura')->findFacturas($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId);
            $totalDisplayRecords = $count;

            if ($sSearch != "") {
                $totalDisplayRecords = count($em->getRepository('FactelBundle:Factura')->findFacturas($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId));
            }
        }
        if ($excel) {
            return $entities;
        }
        $facturaArray = array();
        $i = 0;
        $router = $this->get("router");
        foreach ($entities as $entity) {
            $fechaAutorizacion = "";
            $fechaAutorizacion = $entity->getFechaAutorizacion() != null ? $entity->getFechaAutorizacion()->format("d/m/Y H:i:s") : "";
            $facturaArray[$i] = [$router->generate($ruta, array('id' => $entity->getId())), $entity->getEstablecimiento()->getCodigo() . "-" . $entity->getPtoEmision()->getCodigo() . "-" . $entity->getSecuencial(), $entity->getCliente()->getNombre(), $entity->getCliente()->getIdentificacion(), $comprobante == "GR" ? $entity->getFechaIniTransporte()->format("d/m/Y") : $entity->getFechaEmision()->format("d/m/Y"), $fechaAutorizacion, $comprobante == "GR" ? 0.00 : $entity->getValorTotal(), $entity->getEstado()];
            $i++;
        }

        $arr = array(
            "iTotalRecords" => (int) $count,
            "iTotalDisplayRecords" => (int) $totalDisplayRecords,
            'aaData' => $facturaArray
        );

        $post_data = json_encode($arr);

        return new Response($post_data, 200, array('Content-Type' => 'application/json'));
    }

    /**
     * Lists all Cliente entities.
     *
     * @Route("/total-retenciones", name="total-retenciones")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     * @Template()
     */
    public function reporteRetencionesTotalizadoAction() {
        return array(
        );
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/reporte-retencion-totalizada", name="reporte_retencion_totalizada")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function retencionTotalizadaAction($sSearch = "", $excel = false) {
        if (isset($_GET['sEcho'])) {
            $sEcho = $_GET['sEcho'];
        }
        $iDisplayStart = 0;
        if (isset($_GET['iDisplayStart'])) {
            $iDisplayStart = intval($_GET['iDisplayStart']);
        }
        $iDisplayLength = 100000;
        if (isset($_GET['iDisplayLength'])) {
            $iDisplayLength = intval($_GET['iDisplayLength']);
        }

        if (isset($_GET['sSearch'])) {
            $sSearch = $_GET['sSearch'];
        }

        $em = $this->getDoctrine()->getManager();
        $emisorId = $em->getRepository('FactelBundle:User')->findEmisorId($this->get("security.context")->gettoken()->getuser()->getId());

        $entities = $em->getRepository('FactelBundle:Retencion')->totalRetencionesPorCodigo($sSearch, $iDisplayStart, $iDisplayLength, $emisorId);

        $count = count($em->getRepository('FactelBundle:Retencion')->totalRetencionesPorCodigo("", 0, 100000, $emisorId));
        $totalDisplayRecords = $count;
        if ($sSearch != "") {
            $totalDisplayRecords = count($em->getRepository('FactelBundle:Retencion')->totalRetencionesPorCodigo($sSearch, $iDisplayStart, 1000000, $emisorId));
        }
        if ($excel) {
            return $entities;
        }
        $retencionArray = array();
        $i = 0;
        foreach ($entities as $entity) {
            $tipoRetencion = $entity['tipoRetencion'] == "1" ? "RENTA" : ($entity['tipoRetencion'] == "2" ? "IVA" : "ISD");
            $retencionArray[$i] = [$tipoRetencion, $entity['codigo'], $this->nombreImpuestoRetencion($entity['codigo']), $entity['totalBaseImponible'], $entity['totalRetenido']];
            $i++;
        }

        $arr = array(
            "iTotalRecords" => (int) $count,
            "iTotalDisplayRecords" => (int) $totalDisplayRecords,
            'aaData' => $retencionArray
        );

        $post_data = json_encode($arr);

        return new Response($post_data, 200, array('Content-Type' => 'application/json'));
    }

    /**
     * @Secure(roles="ROLE_EMISOR")
     * @Route("/excel", name="comprobante_excel")
     * @Method("GET")
     */
    public function descargarExcel() {
        $sSearch = $_GET['filtro'];
        $comprobante = $_GET['tipoComprobante'];

        $result = $this->facturasAction($comprobante, $sSearch, true);
        $phpExcelObject = $this->get('phpexcel')->createPHPExcelObject();

        $phpExcelObject->getProperties()
                ->setCreator("FacilFact")
                ->setLastModifiedBy("FacilFact")
                ->setTitle("Reporte Comprobante")
                ->setSubject("Reporte Comprobante")
                ->setDescription("Reporte Comprobante")
                ->setKeywords("reporte comprobante");

        $phpExcelObject->setActiveSheetIndex(0);
        $phpExcelObject->getActiveSheet()->setTitle($comprobante);

        $phpExcelObject->setActiveSheetIndex(0)
                ->setCellValue('B2', 'No Doc')
                ->setCellValue('C2', 'Cliente')
                ->setCellValue('D2', 'Indentificacion')
                ->setCellValue('E2', 'F. Emision')
                ->setCellValue('F2', 'F. Autorizacion');
        if ($comprobante == "F") {
            $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('G2', 'SubTotal 12%')
                    ->setCellValue('H2', 'SubTotal 0%')
                    ->setCellValue('I2', 'IVA')
                    ->setCellValue('J2', 'Valor Total')
                    ->setCellValue('K2', 'Estado')
                    ->setCellValue('L2', 'Num Autorizacion');
        } else {
            $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('G2', 'Valor')
                    ->setCellValue('H2', 'Estado')
                    ->setCellValue('I2', 'Num Autorizacion');
        }

        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('B')
                ->setWidth(30);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('C')
                ->setWidth(28);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('D')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('E')
                ->setWidth(20);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('F')
                ->setWidth(20);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('G')
                ->setWidth(20);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('H')
                ->setWidth(20);
        if ($comprobante == "F") {
            $phpExcelObject->setActiveSheetIndex(0)
                    ->getColumnDimension('I')
                    ->setWidth(20);
            $phpExcelObject->setActiveSheetIndex(0)
                    ->getColumnDimension('J')
                    ->setWidth(20);
            $phpExcelObject->setActiveSheetIndex(0)
                    ->getColumnDimension('K')
                    ->setWidth(20);
            $phpExcelObject->setActiveSheetIndex(0)
                    ->getColumnDimension('L')
                    ->setWidth(30);
        } else {
            $phpExcelObject->setActiveSheetIndex(0)
                    ->getColumnDimension('I')
                    ->setWidth(30);
        }
        $row = 3;
        foreach ($result as $item) {
            $fechaEmision = null;
            if ($comprobante == "GR") {
                $fechaEmision = $item->getFechaIniTransporte() != null && $item->getFechaIniTransporte()->format("Y") != "-0001" ? $item->getFechaIniTransporte()->format("d/m/Y") : "";
            } else {
                $fechaEmision = $item->getFechaEmision() != null && $item->getFechaEmision()->format("Y") != "-0001" ? $item->getFechaEmision()->format("d/m/Y") : "";
            }
            $fechaAutorizacion = $item->getFechaAutorizacion() != null && $item->getFechaAutorizacion()->format("Y") != "-0001" ? $item->getFechaAutorizacion()->format("d/m/Y H:i:s") : "";
            $numeroDoc = $item->getEstablecimiento()->getCodigo() . "-" . $item->getPtoEmision()->getCodigo() . "-" . $item->getSecuencial();
            $numAutorizacion = $item->getNumeroAutorizacion() != null ? $item->getNumeroAutorizacion() : "";

            $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B' . $row, $numeroDoc)
                    ->setCellValue('C' . $row, $item->getCliente()->getNombre())
                    ->setCellValue('D' . $row, $item->getCliente()->getIdentificacion())
                    ->setCellValue('E' . $row, $fechaEmision)
                    ->setCellValue('F' . $row, $fechaAutorizacion);
            if ($comprobante == "F") {
                $subTotal = 0.00;
                $phpExcelObject->setActiveSheetIndex(0)
                        ->setCellValue('G' . $row, $item->getSubtotal12())
                        ->setCellValue('H' . $row, $item->getSubtotal0())
                        ->setCellValue('I' . $row, $item->getIva12())
                        ->setCellValue('J' . $row, $item->getValorTotal())
                        ->setCellValue('K' . $row, $item->getEstado())
                        ->setCellValue('L' . $row, $numAutorizacion);
            } else {
                $phpExcelObject->setActiveSheetIndex(0)
                        ->setCellValue('G' . $row, $comprobante == "GR" ? 0.00 : $item->getValorTotal())
                        ->setCellValue('H' . $row, $item->getEstado())
                        ->setCellValue('I' . $row, $numAutorizacion);
            }


            $row++;
        }

        $writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'Excel5');
        $response = $this->get('phpexcel')->createStreamedResponse($writer);

        $dispositionHeader = $response->headers->makeDisposition(
                ResponseHeaderBag::DISPOSITION_ATTACHMENT, 'comprobantes.xls'
        );
        $response->headers->set('Content-Type', 'text/vnd.ms-excel; charset=utf-8');
        $response->headers->set('Pragma', 'public');
        $response->headers->set('Cache-Control', 'maxage=1');
        $response->headers->set('Content-Disposition', $dispositionHeader);

        return $response;
    }

    /**
     * @Secure(roles="ROLE_EMISOR")
     * @Route("/retencion-totalizada-excel", name="retencion_totalizada_excel")
     * @Method("GET")
     */
    public function retencionTotalizadaExcel() {
        $sSearch = $_GET['filtro'];

        $result = $this->retencionTotalizadaAction($sSearch, true);
        $phpExcelObject = $this->get('phpexcel')->createPHPExcelObject();

        $phpExcelObject->getProperties()
                ->setCreator("FacilFact")
                ->setLastModifiedBy("FacilFact")
                ->setTitle("Reporte Retencion Totalizada")
                ->setSubject("Reporte Retencion Totalizada")
                ->setDescription("Reporte Retencion Totalizada")
                ->setKeywords("Reporte Retencion Totalizada");

        $phpExcelObject->setActiveSheetIndex(0);
        $phpExcelObject->getActiveSheet()->setTitle("Retencion Totalizada");

        $phpExcelObject->setActiveSheetIndex(0)
                ->setCellValue('B2', 'Tipo Retencion')
                ->setCellValue('C2', 'Codigo')
                ->setCellValue('D2', 'Concepto')
                ->setCellValue('E2', 'Base Imponible')
                ->setCellValue('F2', 'Valor Retenido')
        ;

        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('B')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('C')
                ->setWidth(8);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('D')
                ->setWidth(150);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('E')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('F')
                ->setWidth(15);
        $row = 3;
        foreach ($result as $entity) {
            $tipoRetencion = $entity['tipoRetencion'] == "1" ? "RENTA" : ($entity['tipoRetencion'] == "2" ? "IVA" : "ISD");
            $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B' . $row, $tipoRetencion)
                    ->setCellValue('C' . $row, $entity['codigo'])
                    ->setCellValue('D' . $row, $this->nombreImpuestoRetencion($entity['codigo']))
                    ->setCellValue('E' . $row, $entity['totalBaseImponible'])
                    ->setCellValue('F' . $row, $entity['totalRetenido']);
            $row++;
        }

        $writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'Excel5');
        $response = $this->get('phpexcel')->createStreamedResponse($writer);

        $dispositionHeader = $response->headers->makeDisposition(
                ResponseHeaderBag::DISPOSITION_ATTACHMENT, 'RetencionTotalizada.xls'
        );
        $response->headers->set('Content-Type', 'text/vnd.ms-excel; charset=utf-8');
        $response->headers->set('Pragma', 'public');
        $response->headers->set('Cache-Control', 'maxage=1');
        $response->headers->set('Content-Disposition', $dispositionHeader);

        return $response;
    }

    /**
     * Lists all Cliente entities.
     *
     * @Route("/retenciones-factura", name="retenciones_factura")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     * @Template()
     */
    public function reporteRetencionesFacturaAction() {
        return array(
        );
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/reporte-retencion-factura", name="reporte_retencion_factura")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function retencionFacturaAction($sSearch = "", $excel = false) {
        if (isset($_GET['sEcho'])) {
            $sEcho = $_GET['sEcho'];
        }
        $iDisplayStart = 0;
        if (isset($_GET['iDisplayStart'])) {
            $iDisplayStart = intval($_GET['iDisplayStart']);
        }
        $iDisplayLength = 100000;
        if (isset($_GET['iDisplayLength'])) {
            $iDisplayLength = intval($_GET['iDisplayLength']);
        }

        if (isset($_GET['sSearch'])) {
            $sSearch = $_GET['sSearch'];
        }

        $em = $this->getDoctrine()->getManager();
        $emisorId = $em->getRepository('FactelBundle:User')->findEmisorId($this->get("security.context")->gettoken()->getuser()->getId());

        $entities = $em->getRepository('FactelBundle:Retencion')->totalRetencionesPorFactura($sSearch, $iDisplayStart, $iDisplayLength, $emisorId);

        $count = count($em->getRepository('FactelBundle:Retencion')->totalRetencionesPorFactura("", 0, 100000, $emisorId));
        $totalDisplayRecords = $count;
        if ($sSearch != "") {
            $totalDisplayRecords = count($em->getRepository('FactelBundle:Retencion')->totalRetencionesPorFactura($sSearch, $iDisplayStart, 1000000, $emisorId));
        }
        if ($excel) {
            return $entities;
        }
        $retencionArray = array();
        $i = 0;
        foreach ($entities as $entity) {
            $tipoRetencion = $entity['tipoRetencion'] == "1" ? "RENTA" : ($entity['tipoRetencion'] == "2" ? "IVA" : "ISD");
            $retencionArray[$i] = [$tipoRetencion, $entity['factura'], $entity['codigo'], $this->nombreImpuestoRetencion($entity['codigo']), $entity['totalBaseImponible'], $entity['totalRetenido']];
            $i++;
        }

        $arr = array(
            "iTotalRecords" => (int) $count,
            "iTotalDisplayRecords" => (int) $totalDisplayRecords,
            'aaData' => $retencionArray
        );

        $post_data = json_encode($arr);

        return new Response($post_data, 200, array('Content-Type' => 'application/json'));
    }

    /**
     * @Secure(roles="ROLE_EMISOR")
     * @Route("/retencion-factura-excel", name="retencion_factura_excel")
     * @Method("GET")
     */
    public function retencionFacturaExcel() {
        $sSearch = $_GET['filtro'];

        $result = $this->retencionFacturaAction($sSearch, true);
        $phpExcelObject = $this->get('phpexcel')->createPHPExcelObject();

        $phpExcelObject->getProperties()
                ->setCreator("FacilFact")
                ->setLastModifiedBy("FacilFact")
                ->setTitle("Retencion Por Factura")
                ->setSubject("Retencion Por Factura")
                ->setDescription("Retencion Por Factura")
                ->setKeywords("Retencion Por Factura");

        $phpExcelObject->setActiveSheetIndex(0);
        $phpExcelObject->getActiveSheet()->setTitle("Retencion Por Factura");

        $phpExcelObject->setActiveSheetIndex(0)
                ->setCellValue('B2', 'Tipo Retencion')
                ->setCellValue('C2', 'Factura')
                ->setCellValue('D2', 'Codigo')
                ->setCellValue('E2', 'Concepto')
                ->setCellValue('F2', 'Base Imponible')
                ->setCellValue('G2', 'Valor Retenido')
        ;

        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('B')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('C')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('D')
                ->setWidth(8);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('E')
                ->setWidth(150);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('F')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('G')
                ->setWidth(15);
        $row = 3;
        foreach ($result as $entity) {
            $tipoRetencion = $entity['tipoRetencion'] == "1" ? "RENTA" : ($entity['tipoRetencion'] == "2" ? "IVA" : "ISD");
            $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B' . $row, $tipoRetencion)
                    ->setCellValue('C' . $row, $entity['factura'])
                    ->setCellValue('D' . $row, $entity['codigo'])
                    ->setCellValue('E' . $row, $this->nombreImpuestoRetencion($entity['codigo']))
                    ->setCellValue('F' . $row, $entity['totalBaseImponible'])
                    ->setCellValue('G' . $row, $entity['totalRetenido']);
            $row++;
        }

        $writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'Excel5');
        $response = $this->get('phpexcel')->createStreamedResponse($writer);

        $dispositionHeader = $response->headers->makeDisposition(
                ResponseHeaderBag::DISPOSITION_ATTACHMENT, 'RetencionPorFactura.xls'
        );
        $response->headers->set('Content-Type', 'text/vnd.ms-excel; charset=utf-8');
        $response->headers->set('Pragma', 'public');
        $response->headers->set('Cache-Control', 'maxage=1');
        $response->headers->set('Content-Disposition', $dispositionHeader);

        return $response;
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/ventas-fechas", name="reporte_ventas_fechas")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function reporteVentasFechasAction($comprobante = null, $sSearch = "", $pdf = false) {
        if (isset($_GET['sEcho'])) {
            $sEcho = $_GET['sEcho'];
        }
        $iDisplayStart = 0;
        if (isset($_GET['iDisplayStart'])) {
            $iDisplayStart = intval($_GET['iDisplayStart']);
        }
        $iDisplayLength = 100000;
        if (isset($_GET['iDisplayLength'])) {
            $iDisplayLength = intval($_GET['iDisplayLength']);
        }

        if (isset($_GET['sSearch'])) {
            $sSearch = $_GET['sSearch'];
        }

        $em = $this->getDoctrine()->getManager();
        $emisorId = null;
        $idPtoEmision = null;
        if ($this->get("security.context")->isGranted("ROLE_EMISOR_ADMIN")) {
            $emisorId = $em->getRepository('FactelBundle:User')->findEmisorId($this->get("security.context")->gettoken()->getuser()->getId());
        } else {
            $idPtoEmision = $em->getRepository('FactelBundle:PtoEmision')->findIdPtoEmisionByUsuario($this->get("security.context")->gettoken()->getuser()->getId());
        }
        $ruta = "";

        $ruta = "factura_show";
        $count = $em->getRepository('FactelBundle:Factura')->cantidadFacturas($idPtoEmision, $emisorId, true);
        $entities = $em->getRepository('FactelBundle:Factura')->findFacturas($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId, true);
        $totalDisplayRecords = $count;

        if ($sSearch != "") {
            $totalDisplayRecords = count($em->getRepository('FactelBundle:Factura')->findFacturas($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId, true));
        }


        $facturaArray = array();
        $i = 0;
        $entity = new \FactelBundle\Entity\Factura();
        foreach ($entities as $entity) {
            if ($entity->getEstado() == "AUTORIZADO") {
                $facturaArray[$i] = [$entity->getEstablecimiento()->getCodigo() . "-" . $entity->getEstablecimiento()->getCodigo() . "-" . $entity->getSecuencial(),
                    $entity->getCliente()->getNombre(), $this->FormaPago($entity->getFormaPago()), $entity->getFechaEmision()->format("d/m/Y"),
                    $entity->getValorTotal(), $entity->getEmisor()->getRazonSocial()];
                $i++;
            }
        }

        if ($pdf) {
            return $facturaArray;
        }
        $arr = array(
            "iTotalRecords" => (int) $count,
            "iTotalDisplayRecords" => (int) $totalDisplayRecords,
            'aaData' => $facturaArray
        );

        $post_data = json_encode($arr);

        return new Response($post_data, 200, array('Content-Type' => 'application/json'));
    }

    /**
     * @Secure(roles="ROLE_EMISOR")
     * @Route("/pdf", name="comprobante_pdf")
     * @Method("GET")
     */
    public function descargarPdf() {
        $sSearch = $_GET['filtro'];
        $comprobante = $_GET['tipoComprobante'];

        $result = $this->reporteVentasFechasAction($comprobante, $sSearch, true);
        $pdf = new \FPDF();
        $header = array('No. Doc', 'Cliente', 'Forma Pago', 'F. Emision', 'Valor Total');
        $data = $result;
        $pdf->SetFont('Arial', '', 8);
        $pdf->AddPage();
        $emisor = "";
        if (count($data) > 0) {
            $emisor = $data[0][5];
        }
        setlocale(LC_ALL, 'es_AR');
        $now = date("d/m/Y H:i:s");
        $pdf->Cell(130, 10, "Emisor: " . $emisor);
        $pdf->Cell(40, 10, $now, 0, 1, 'C');
        //Anchuras de las columnas
        $w = array(30, 70, 45, 25, 20);
        //Cabeceras
        for ($i = 0; $i < count($header); $i++)
            $pdf->Cell($w[$i], 7, $header[$i], 1, 0, 'C');
        $pdf->Ln();
        //Datos
        $total = 0;
        foreach ($data as $row) {
            $pdf->Cell($w[0], 6, $row[0], 'LR');
            $pdf->Cell($w[1], 6, $row[1], 'LR');
            $pdf->Cell($w[2], 6, $row[2], 'LR', 0, 'C');
            $pdf->Cell($w[3], 6, $row[3], 'LR', 0, 'C');
            $pdf->Cell($w[4], 6, $row[4], 'LR');
            $pdf->Ln();
            $total += floatval($row[4]);
        }
        $pdf->Cell(array_sum($w), 0, '', 'T');
        $pdf->Ln();
        $pdf->Cell($w[0], 6, '', 'LR');
        $pdf->Cell($w[1], 6, '', 'LR');
        $pdf->Cell($w[2], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[3], 6, 'Total', 'LR', 0, 'C');
        $pdf->Cell($w[4], 6, $total, 'LR');
        $pdf->Ln();
        //L??nea de cierre
        $pdf->Cell(array_sum($w), 0, '', 'T');


        $response = new Response();
        //then send the headers to foce download the zip file
        $response->headers->set('Content-Type', 'application/pdf');
        $response->headers->set('Content-Disposition', 'attachment; filename="Reporte Ventas PDF.pdf"');
        $response->headers->set('Pragma', "no-cache");
        $response->headers->set('Expires', "0");
        $response->headers->set('Content-Transfer-Encoding', "binary");
        $response->sendHeaders();
        $response->setContent($pdf->Output("Reporte PDF.pdf", "S"));
        return $response;
    }

    /**
     * Lists all Factura entities.
     *
     * @Route("/ventas-detalladas-fechas", name="reporte_ventas_detallada_fechas")
     * @Secure(roles="ROLE_EMISOR")
     * @Method("GET")
     */
    public function reporteVentasDetalladaFechasAction($sSearch = "", $pdf = false) {
        if (isset($_GET['sEcho'])) {
            $sEcho = $_GET['sEcho'];
        }
        $iDisplayStart = 0;
        if (isset($_GET['iDisplayStart'])) {
            $iDisplayStart = intval($_GET['iDisplayStart']);
        }
        $iDisplayLength = 100000;
        if (isset($_GET['iDisplayLength'])) {
            $iDisplayLength = intval($_GET['iDisplayLength']);
        }

        if (isset($_GET['sSearch'])) {
            $sSearch = $_GET['sSearch'];
        }

        $em = $this->getDoctrine()->getManager();
        $emisorId = null;
        $idPtoEmision = null;
        if ($this->get("security.context")->isGranted("ROLE_EMISOR_ADMIN")) {
            $emisorId = $em->getRepository('FactelBundle:User')->findEmisorId($this->get("security.context")->gettoken()->getuser()->getId());
        } else {
            $idPtoEmision = $em->getRepository('FactelBundle:PtoEmision')->findIdPtoEmisionByUsuario($this->get("security.context")->gettoken()->getuser()->getId());
        }
        $ruta = "";

        $ruta = "factura_show";
        $count = $em->getRepository('FactelBundle:Factura')->cantidadFacturas($idPtoEmision, $emisorId, true);
        $entities = $em->getRepository('FactelBundle:Factura')->findFacturas($sSearch, $iDisplayStart, $iDisplayLength, $idPtoEmision, $emisorId, true);
        $totalDisplayRecords = $count;

        if ($sSearch != "") {
            $totalDisplayRecords = count($em->getRepository('FactelBundle:Factura')->findFacturas($sSearch, $iDisplayStart, 1000000, $idPtoEmision, $emisorId, true));
        }


        $facturaArray = array();
        $i = 0;
        $entity = new \FactelBundle\Entity\Factura();
        foreach ($entities as $entity) {
            if ($entity->getEstado() == "AUTORIZADO") {
                $facturaArray[$i] = [$entity->getFechaEmision()->format("d/m/Y"), $entity->getEstablecimiento()->getCodigo() . "-" . $entity->getEstablecimiento()->getCodigo(),
                    $entity->getSecuencial(), $entity->getCliente()->getIdentificacion(), $entity->getNumeroAutorizacion(), $entity->getCliente()->getNombre(),
                    $entity->getSubtotal0(), $entity->getSubtotal12(), $entity->getIva12(), $entity->getValorTotal()];
                $i++;
            }
        }

        if ($pdf) {
            return $facturaArray;
        }
        $arr = array(
            "iTotalRecords" => (int) $count,
            "iTotalDisplayRecords" => (int) $totalDisplayRecords,
            'aaData' => $facturaArray
        );

        $post_data = json_encode($arr);

        return new Response($post_data, 200, array('Content-Type' => 'application/json'));
    }

    /**
     * @Secure(roles="ROLE_EMISOR")
     * @Route("/pdf-ventas-detallada", name="comprobante_pdf_venta_detallada")
     * @Method("GET")
     */
    public function descargarPdfVentasdetallada() {
        $sSearch = $_GET['filtro'];

        $result = $this->reporteVentasDetalladaFechasAction($sSearch, true);
        $pdf = new \FPDF();
        $header = array('No', 'FECHA', 'SERIE', 'FACT', 'RUC', 'AUT SRI', 'CLIENTE', 'SIN IVA', 'CON IVA', 'IVA', 'TOTAL');
        $data = $result;
        $pdf->SetFont('Arial', '', 7);
        $pdf->AddPage('L');
        $emisor = "";
        if (count($data) > 0) {
            $emisor = $data[0][5];
        }
        setlocale(LC_ALL, 'es_AR');
        $now = date("d/m/Y H:i:s");
        $pdf->Cell(220, 10, "Emisor: " . $emisor);
        $pdf->Cell(40, 10, "Fecha Reporte: " .$now, 0, 1, 'C');
        //Anchuras de las columnas
        $w = array(6, 15, 15, 15, 25, 75, 55, 15, 15, 15, 15);
        //Cabeceras
        for ($i = 0; $i < count($header); $i++)
            $pdf->Cell($w[$i], 7, $header[$i], 1, 0, 'C');
        $pdf->Ln();
        //Datos
        $totalSinIVA = 0;
        $totalConIVA = 0;
        $totalIVA = 0;
        $total = 0;
        $no = 1;
        foreach ($data as $row) {
            $pdf->Cell($w[0], 6, $no, 'LR', 0, 'C');
            $pdf->Cell($w[1], 6, $row[0], 'LR', 0, 'C');
            $pdf->Cell($w[2], 6, $row[1], 'LR', 0, 'C');
            $pdf->Cell($w[3], 6, $row[2], 'LR', 0, 'C');
            $pdf->Cell($w[4], 6, $row[3], 'LR');
            $pdf->Cell($w[5], 6, $row[4], 'LR', 0, 'C');
            $pdf->Cell($w[6], 6, $row[5], 'LR');
            $pdf->Cell($w[7], 6, $row[6], 'LR', 0, 'C');
            $pdf->Cell($w[8], 6, $row[7], 'LR', 0, 'C');
            $pdf->Cell($w[9], 6, $row[8], 'LR', 0, 'C');
            $pdf->Cell($w[10], 6, $row[9], 'LR', 0, 'C');
            $pdf->Ln();

            $totalSinIVA += floatval($row[6]);
            $totalConIVA += floatval($row[7]);
            $totalIVA += floatval($row[8]);
            $total += floatval($row[9]);
            $no++;
        }
        $pdf->Cell(array_sum($w), 0, '', 'T');
        $pdf->Ln();
        $pdf->Cell($w[0], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[1], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[2], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[3], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[4], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[5], 6, '', 'LR', 0, 'C');
        $pdf->Cell($w[6], 6, 'Totales', 'LR', 0, 'C');
        $pdf->Cell($w[7], 6, $totalSinIVA, 'LR', 0, 'C');
        $pdf->Cell($w[8], 6, $totalConIVA, 'LR', 0, 'C');
        $pdf->Cell($w[9], 6, $totalIVA, 'LR', 0, 'C');
        $pdf->Cell($w[10], 6, $total, 'LR', 0, 'C');
        $pdf->Ln();
        //L??nea de cierre
        $pdf->Cell(array_sum($w), 0, '', 'T');


        $response = new Response();
        //then send the headers to foce download the zip file
        $response->headers->set('Content-Type', 'application/pdf');
        $response->headers->set('Content-Disposition', 'attachment; filename="Reporte Ventas PDF.pdf"');
        $response->headers->set('Pragma', "no-cache");
        $response->headers->set('Expires', "0");
        $response->headers->set('Content-Transfer-Encoding', "binary");
        $response->sendHeaders();
        $response->setContent($pdf->Output("Reporte PDF.pdf", "S"));
        return $response;
    }

    /**
     * @Secure(roles="ROLE_EMISOR")
     * @Route("/excel-ventas-detallada", name="comprobante_excel_venta_detallada")
     * @Method("GET")
     */
    public function descargarExcelVentasDetallada() {
        $sSearch = $_GET['filtro'];

        $result = $this->reporteVentasDetalladaFechasAction($sSearch, true);
        $phpExcelObject = $this->get('phpexcel')->createPHPExcelObject();

        $phpExcelObject->getProperties()
                ->setCreator("FacilFact")
                ->setLastModifiedBy("FacilFact")
                ->setTitle("Ventas Detalladas")
                ->setSubject("Ventas Detalladas")
                ->setDescription("Ventas Detalladas")
                ->setKeywords("Ventas Detalladas");

        $phpExcelObject->setActiveSheetIndex(0);
        $phpExcelObject->getActiveSheet()->setTitle("Ventas Detalladas");

        $phpExcelObject->setActiveSheetIndex(0)
                ->setCellValue('B2', 'No')
                ->setCellValue('C2', 'FECHA')
                ->setCellValue('D2', 'SERIE')
                ->setCellValue('E2', 'FACT')
                ->setCellValue('F2', 'RUC')
                ->setCellValue('G2', 'AUT SRI')
                ->setCellValue('H2', 'CLIENTE')
                ->setCellValue('I2', 'SIN IVA')
                ->setCellValue('J2', 'CON IVA')
                ->setCellValue('K2', 'IVA')
                ->setCellValue('L2', 'TOTAL')
        ;

        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('B')
                ->setWidth(6);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('C')
                ->setWidth(12);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('D')
                ->setWidth(8);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('E')
                ->setWidth(11);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('F')
                ->setWidth(15);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('G')
                ->setWidth(55);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('H')
                ->setWidth(30);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('I')
                ->setWidth(10);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('J')
                ->setWidth(10);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('K')
                ->setWidth(10);
        $phpExcelObject->setActiveSheetIndex(0)
                ->getColumnDimension('L')
                ->setWidth(10);
        
        $row = 3;
        $no = 0;
        foreach ($result as $value) {
            
            $phpExcelObject->setActiveSheetIndex(0)
                    ->setCellValue('B' . $row, $no)
                    ->setCellValue('C' . $row, $value[0])
                    ->setCellValue('D' . $row, $value[1])
                    ->setCellValue('E' . $row, $value[2])
                    ->setCellValue('F' . $row, $value[3])
                    ->setCellValue('G' . $row, $value[4])
                    ->setCellValue('H' . $row, $value[5])
                    ->setCellValue('I' . $row, $value[6])
                    ->setCellValue('J' . $row, $value[7])
                    ->setCellValue('K' . $row, $value[8])
                    ->setCellValue('L' . $row, $value[9]);
            $row++;
            $no++;
        }

        $writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'Excel5');
        $response = $this->get('phpexcel')->createStreamedResponse($writer);

        $dispositionHeader = $response->headers->makeDisposition(
                ResponseHeaderBag::DISPOSITION_ATTACHMENT, 'VentasDetallada.xls'
        );
        $response->headers->set('Content-Type', 'text/vnd.ms-excel; charset=utf-8');
        $response->headers->set('Pragma', 'public');
        $response->headers->set('Cache-Control', 'maxage=1');
        $response->headers->set('Content-Disposition', $dispositionHeader);

        return $response;
    }
    private function FormaPago($cod) {

        $formaDePago = "";
        if ($cod == ("01")) {
            $formaDePago = "EFECTIVO";
        } else if ($cod == ("15")) {
            $formaDePago = "COMPENSACI??N DE DEUDAS";
        } else if ($cod == ("16")) {
            $formaDePago = "TARJETA DE D??BITO";
        } else if ($cod == ("17")) {
            $formaDePago = "DINERO ELECTR??NICO";
        } else if ($cod == ("18")) {
            $formaDePago = "TARJETA PREPAGO";
        } else if ($cod == ("19")) {
            $formaDePago = "TARJETA DE CR??DITO";
        } else if ($cod == ("20")) {
            $formaDePago = "OTRAS FROMA PAGO";
        } else if ($cod == ("21")) {
            $formaDePago = "ENDOSO DE T??TULOS";
        }
        return utf8_encode($formaDePago);
    }

    private function nombreImpuestoRetencion($codigo) {
        $codigos = [
            "9" => "Retencion de IVA 10%",
            "10" => "Retencion de IVA 20%",
            "1" => "Retencion de IVA 30%",
            "11" => "Retencion de IVA 50%",
            "2" => "Retencion de IVA 70%",
            "3" => "Retencion de IVA 100%",
            "303" => "Honorarios profesionales y dem??s pagos por servicios relacionados con el t??tulo profesional",
            "304" => "Servicios predomina el intelecto no relacionados con el t??tulo profesional",
            "304A" => "Comisiones y dem??s pagos por servicios predomina intelecto no relacionados con el t??tulo profesional",
            "304B" => "Pagos a notarios y registradores de la propiedad y mercantil por sus actividades ejercidas como tales",
            "304C" => "Pagos a deportistas, entrenadores, ??rbitros, miembros del cuerpo t??cnico por sus actividades ejercidas como tales",
            "304D" => "Pagos a artistas por sus actividades ejercidas como tales",
            "304E" => "Honorarios y dem??s pagos por servicios de docencia",
            "307" => "Servicios predomina la mano de obra",
            "308" => "Utilizaci??n o aprovechamiento de la imagen o renombre",
            "309" => "Servicios prestados por medios de comunicaci??n y agencias de publicidad",
            "310" => "Servicio de transporte privado de pasajeros o transporte p??blico o privado de carga",
            "311" => "Pagos a trav??s de liquidaci??n de compra (nivel cultural o rusticidad)",
            "312" => "Transferencia de bienes muebles de naturaleza corporal",
            "312A" => "Compra de bienes de origen agr??cola, av??cola, pecuario, ap??cola, cun??cula, bioacu??tico, y forestal",
            "312B" => "Impuesto a la Renta ??nico para la actividad de producci??n y cultivo de palma aceitera",
            "314A" => "Regal??as por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a personas naturales",
            "314B" => "C??nones, derechos de autor,  marcas, patentes y similares de acuerdo a Ley de Propiedad Intelectual ??? pago a personas naturales",
            "314C" => "Regal??as por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual  - pago a sociedades",
            "314D" => "C??nones, derechos de autor,  marcas, patentes y similares de acuerdo a Ley de Propiedad Intelectual ??? pago a sociedades",
            "319" => "Cuotas de arrendamiento mercantil (prestado por sociedades), inclusive la de opci??n de compra",
            "320" => "Arrendamiento bienes inmuebles",
            "322" => "Seguros y reaseguros (primas y cesiones)",
            "323" => "Rendimientos financieros pagados a naturales y sociedades  (No a IFIs)",
            "323A" => "Rendimientos financieros: dep??sitos Cta. Corriente",
            "323B1" => "Rendimientos financieros:  dep??sitos Cta. Ahorros Sociedades",
            "323E" => "Rendimientos financieros: dep??sito a plazo fijo  gravados",
            "323E2" => "Rendimientos financieros: dep??sito a plazo fijo exentos",
            "323F" => "Rendimientos financieros: operaciones de reporto - repos",
            "323G" => "Inversiones (captaciones) rendimientos distintos de aquellos pagados a IFIs",
            "323H" => "Rendimientos financieros: obligaciones",
            "323I" => "Rendimientos financieros: bonos convertible en acciones",
            "323 M" => "Rendimientos financieros: Inversiones en t??tulos valores en renta fija gravados ",
            "323 N" => "Rendimientos financieros: Inversiones en t??tulos valores en renta fija exentos",
            "323 O" => "Intereses y dem??s rendimientos financieros pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Econom??a Popular y Solidaria",
            "323 P" => "Intereses pagados por entidades del sector p??blico a favor de sujetos pasivos",
            "323Q" => "Otros intereses y rendimientos financieros gravados ",
            "323R" => "Otros intereses y rendimientos financieros exentos",
            "323S" => "Pagos y cr??ditos en cuenta efectuados por el BCE y los dep??sitos centralizados de valores, en calidad de intermediarios, a instituciones del sistema financiero por cuenta de otras personas naturales y sociedades",
            "323T" => "Rendimientos financieros originados en la deuda p??blica ecuatoriana",
            "323U" => "Rendimientos financieros originados en t??tulos valores de obligaciones de 360 d??as o m??s para el financiamiento de proyectos p??blicos en asociaci??n p??blico-privada",
            "324A" => "Intereses y comisiones en operaciones de cr??dito entre instituciones del sistema financiero y entidades econom??a popular y solidaria.",
            "324B" => "Inversiones entre instituciones del sistema financiero y entidades econom??a popular y solidaria",
            "324C" => "Pagos y cr??ditos en cuenta efectuados por el BCE y los dep??sitos centralizados de valores, en calidad de intermediarios, a instituciones del sistema financiero por cuenta de otras instituciones del sistema financiero",
            "325" => "Anticipo dividendos a residentes o establecidos en el Ecuador",
            "325A" => "Pr??stamos accionistas, beneficiarios o part??cipes residentes o establecidos en el Ecuador",
            "326" => "Dividendos distribuidos que correspondan al impuesto a la renta ??nico establecido en el art. 27 de la LRTI ",
            "327" => "Dividendos distribuidos a personas naturales residentes",
            "328" => "Dividendos distribuidos a sociedades residentes",
            "329" => "Dividendos distribuidos a fideicomisos residentes",
            "330" => "Dividendos gravados distribuidos en acciones (reinversi??n de utilidades sin derecho a reducci??n tarifa IR)",
            "331" => "Dividendos exentos distribuidos en acciones (reinversi??n de utilidades con derecho a reducci??n tarifa IR) ",
            "332" => "Otras compras de bienes y servicios no sujetas a retenci??n",
            "332B" => "Compra de bienes inmuebles",
            "332C" => "Transporte p??blico de pasajeros",
            "332D" => "Pagos en el pa??s por transporte de pasajeros o transporte internacional de carga, a compa????as nacionales o extranjeras de aviaci??n o mar??timas",
            "332E" => "Valores entregados por las cooperativas de transporte a sus socios",
            "332F" => "Compraventa de divisas distintas al d??lar de los Estados Unidos de Am??rica",
            "332G" => "Pagos con tarjeta de cr??dito ",
            "332H" => "Pago al exterior tarjeta de cr??dito reportada por la Emisora de tarjeta de cr??dito, solo RECAP",
            "332I" => "Pago a trav??s de convenio de debito (Clientes IFI`s)",
            "333" => "Enajenaci??n de derechos representativos de capital y otros derechos cotizados en bolsa ecuatoriana",
            "334" => "Enajenaci??n de derechos representativos de capital y otros derechos no cotizados en bolsa ecuatoriana",
            "335" => "Loter??as, rifas, apuestas y similares",
            "336" => "Venta de combustibles a comercializadoras",
            "337" => "Venta de combustibles a distribuidores",
            "338" => "Compra local de banano a productor",
            "339" => "Liquidaci??n impuesto ??nico a la venta local de banano de producci??n propia",
            "340" => "Impuesto ??nico a la exportaci??n de banano de producci??n propia - componente 1",
            "341" => "Impuesto ??nico a la exportaci??n de banano de producci??n propia - componente 2",
            "342" => "Impuesto ??nico a la exportaci??n de banano producido por terceros",
            "343" => "Otras retenciones aplicables el 1%",
            "343A" => "Energ??a el??ctrica",
            "343B" => "Actividades de construcci??n de obra material inmueble, urbanizaci??n, lotizaci??n o actividades similares",
            "343C" => "Impuesto Redimible a las botellas pl??sticas - IRBP",
            "344" => "Otras retenciones aplicables el 2%",
            "344A" => "Pago local tarjeta de cr??dito reportada por la Emisora de tarjeta de cr??dito, solo RECAP",
            "344B" => "Adquisici??n de sustancias minerales dentro del territorio nacional",
            "345" => "Otras retenciones aplicables el 8%",
            "346" => "Otras retenciones aplicables a otros porcentajes ",
            "346A" => "Otras ganancias de capital distintas de enajenaci??n de derechos representativos de capital ",
            "346B" => "Donaciones en dinero -Impuesto a la donaciones ",
            "346C" => "Retenci??n a cargo del propio sujeto pasivo por la exportaci??n de concentrados y/o elementos met??licos",
            "346D" => "Retenci??n a cargo del propio sujeto pasivo por la comercializaci??n de productos forestales",
            "500" => "Pago a no residentes - Rentas Inmobiliarias",
            "501" => "Pago a no residentes - Beneficios/Servicios  Empresariales",
            "501A" => "Pago a no residentes - Servicios t??cnicos, administrativos o de consultor??a y regal??as",
            "503" => "Pago a no residentes- Navegaci??n Mar??tima y/o a??rea",
            "504" => "Pago a no residentes- Dividendos distribuidos a personas naturales (domicilados o no en paraiso fiscal) o a sociedades sin beneficiario efectivo persona natural residente en Ecuador (ni domiciladas en para??so fiscal)",
            "504A" => "Pago al exterior - Dividendos a sociedades con beneficiario efectivo persona natural residente en el Ecuador (no domiciliada en para??sos fiscales o reg??menes de menor imposici??n)",
            "504B" => "Pago a no residentes - Dividendos a fideicomisos con beneficiario efectivo persona natural residente en el Ecuador (no domiciliada en para??sos fiscales o reg??menes de menor imposici??n)",
            "504C" => "Pago a no residentes - Dividendos a sociedades domiciladas en para??sos fiscales o reg??menes de menor imposici??n (con o sin beneficiario efectivo persona natural residente en el Ecuador)",
            "504D" => "Pago a no residentes - Dividendos a fideicomisos domiciladas en para??sos fiscales o reg??menes de menor imposici??n (con o sin beneficiario efectivo persona natural residente en el Ecuador)",
            "504E" => "Pago a no residentes - Anticipo dividendos (no domiciliada en para??sos fiscales o reg??menes de menor imposici??n)",
            "504F" => "Pago a no residentes - Anticipo dividendos (domiciliadas en para??sos fiscales o reg??menes de menor imposici??n)",
            "504G" => "Pago a no residentes - Pr??stamos accionistas, beneficiarios o part??cipes (no domiciladas en para??sos fiscales o reg??menes de menor imposici??n)",
            "504H" => "Pago a no residentes - Pr??stamos accionistas, beneficiarios o part??cipes (domiciladas en para??sos fiscales o reg??menes de menor imposici??n)",
            "504I" => "Pago a no residentes - Pr??stamos no comerciales a partes relacionadas  (no domiciladas en para??sos fiscales o reg??menes de menor imposici??n)",
            "504J" => "Pago a no residentes - Pr??stamos no comerciales a partes relacionadas  (domiciladas en para??sos fiscales o reg??menes de menor imposici??n)",
            "505" => "Pago a no residentes - Rendimientos financieros",
            "505A" => "Pago a no residentes ??? Intereses de cr??ditos de Instituciones Financieras del exterior",
            "505B" => "Pago a no residentes ??? Intereses de cr??ditos de gobierno a gobierno",
            "505C" => "Pago a no residentes ??? Intereses de cr??ditos de organismos multilaterales",
            "505D" => "Pago a no residentes - Intereses por financiamiento de proveedores externos",
            "505E" => "Pago a no residentes - Intereses de otros cr??ditos externos",
            "505F" => "Pago a no residentes - Otros Intereses y Rendimientos Financieros",
            "509" => "Pago a no residentes- C??nones, derechos de autor,  marcas, patentes y similares",
            "509A" => "PPago a no residentes - Regal??as por concepto de franquicias",
            "510" => "Pago a no residentes - Otras ganancias de capital distintas de enajenaci??n de derechos representativos de capital ",
            "511" => "Pago a no residentes - Servicios profesionales independientes",
            "512" => "Pago a no residentes - Servicios profesionales dependientes",
            "513" => "Pago a no residentes- Artistas",
            "513A" => "Pago a no residentes - Deportistas",
            "514" => "Pago a no residentes - Participaci??n de consejeros",
            "515" => "Pago a no residentes - Entretenimiento P??blico",
            "516" => "Pago a no residentes - Pensiones",
            "517" => "Pago a no residentes- Reembolso de Gastos",
            "518" => "Pago a no residentes- Funciones P??blicas",
            "519" => "Pago a no residentes - Estudiantes",
            "520A" => "Pago a no residentes - Pago a proveedores de servicios hoteleros y tur??sticos en el exterior",
            "520B" => "Pago a no residentes - Arrendamientos mercantil internacional",
            "520D" => "Pago a no residentes - Comisiones por exportaciones y por promoci??n de turismo receptivo",
            "520E" => "Pago a no residentes - Por las empresas de transporte mar??timo o a??reo y por empresas pesqueras de alta mar, por su actividad.",
            "520F" => "Pago a no residentes - Por las agencias internacionales de prensa",
            "520G" => "Pago a no residentes - Contratos de fletamento de naves para empresas de transporte a??reo o mar??timo internacional",
            "521" => "Pago a no residentes - Enajenaci??n de derechos representativos de capital y otros derechos ",
            "523A" => "Pago a no residentes - Seguros y reaseguros (primas y cesiones)  ",
            "525" => "Pago a no residentes- Donaciones en dinero -Impuesto a la donaciones"
        ];

        return isset($codigos[$codigo]) ? utf8_encode($codigos[$codigo]) : "Codigo no registrado";
    }

}
