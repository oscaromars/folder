<?php

namespace FactelBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CampoAdicional
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Mensaje {

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var string
     *
     * @ORM\Column(name="identificador", type="string", length=5)
     */
    protected $identificador;

    /**
     * @var string
     *
     * @ORM\Column(name="mensaje", type="string", length=300)
     */
    protected $mensaje;

    /**
     * @var string
     *
     * @ORM\Column(name="informacionAdicional", type="string", length=300,  nullable=TRUE)
     */
    protected $informacionAdicional;

    /**
     * @var string
     *
     * @ORM\Column(name="tipo", type="string", length=40)
     */
    protected $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="Factura", inversedBy="mensajes")
     * @ORM\JoinColumn(name="Factura_id", referencedColumnName="id")
     */
    protected $factura;
    
    /**
     * @ORM\ManyToOne(targetEntity="Proforma", inversedBy="mensajes")
     * @ORM\JoinColumn(name="Proforma_id", referencedColumnName="id")
     */
    protected $proforma;
    
    /**
     * @ORM\ManyToOne(targetEntity="LiquidacionCompra", inversedBy="mensajes")
     * @ORM\JoinColumn(name="liquidacioncompra_id", referencedColumnName="id")
     */
    protected $liquidacionCompra;

    /**
     * @ORM\ManyToOne(targetEntity="NotaCredito", inversedBy="mensajes")
     * @ORM\JoinColumn(name="NotaCredito_id", referencedColumnName="id")
     */
    protected $notaCredito;

    /**
     * @ORM\ManyToOne(targetEntity="NotaDebito", inversedBy="mensajes")
     * @ORM\JoinColumn(name="NotaDebito_id", referencedColumnName="id")
     */
    protected $notaDebito;
    
    /**
     * @ORM\ManyToOne(targetEntity="Retencion", inversedBy="mensajes")
     * @ORM\JoinColumn(name="Retencion_id", referencedColumnName="id")
     */
    protected $retencion;
    
    /**
     * @ORM\ManyToOne(targetEntity="Guia", inversedBy="mensajes")
     * @ORM\JoinColumn(name="Guia_id", referencedColumnName="id")
     */
    protected $guia;
    
    /**
     * Get id
     *
     * @return integer 
     */
    public function getId() {
        return $this->id;
    }

    /**
     * Set identificador
     *
     * @param string $identificador
     * @return Mensaje
     */
    public function setIdentificador($identificador) {
        $this->identificador = $identificador;

        return $this;
    }

    /**
     * Get identificador
     *
     * @return string 
     */
    public function getIdentificador() {
        return $this->identificador;
    }

    /**
     * Set mensaje
     *
     * @param string $mensaje
     * @return Mensaje
     */
    public function setMensaje($mensaje) {
        $this->mensaje = $mensaje;

        return $this;
    }

    /**
     * Get mensaje
     *
     * @return string 
     */
    public function getMensaje() {
        return $this->mensaje;
    }

    /**
     * Set informacionAdicional
     *
     * @param string $informacionAdicional
     * @return Mensaje
     */
    public function setInformacionAdicional($informacionAdicional) {
        $this->informacionAdicional = $informacionAdicional;

        return $this;
    }

    /**
     * Get informacionAdicional
     *
     * @return string 
     */
    public function getInformacionAdicional() {
        return $this->informacionAdicional;
    }

    /**
     * Set tipo
     *
     * @param string $tipo
     * @return Mensaje
     */
    public function setTipo($tipo) {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return string 
     */
    public function getTipo() {
        return $this->tipo;
    }

    /**
     * Set factura
     *
     * @param \FactelBundle\Entity\Factura $factura
     * @return Mensaje
     */
    public function setFactura(\FactelBundle\Entity\Factura $factura = null) {
        $this->factura = $factura;

        return $this;
    }

    /**
     * Get factura
     *
     * @return \FactelBundle\Entity\Factura 
     */
    public function getFactura() {
        return $this->factura;
    }


    /**
     * Set notaCredito
     *
     * @param \FactelBundle\Entity\NotaCredito $notaCredito
     * @return Mensaje
     */
    public function setNotaCredito(\FactelBundle\Entity\NotaCredito $notaCredito = null)
    {
        $this->notaCredito = $notaCredito;

        return $this;
    }

    /**
     * Get notaCredito
     *
     * @return \FactelBundle\Entity\NotaCredito 
     */
    public function getNotaCredito()
    {
        return $this->notaCredito;
    }

    /**
     * Set notaDebito
     *
     * @param \FactelBundle\Entity\NotaDebito $notaDebito
     * @return Mensaje
     */
    public function setNotaDebito(\FactelBundle\Entity\NotaDebito $notaDebito = null)
    {
        $this->notaDebito = $notaDebito;

        return $this;
    }

    /**
     * Get notaDebito
     *
     * @return \FactelBundle\Entity\NotaDebito 
     */
    public function getNotaDebito()
    {
        return $this->notaDebito;
    }

    /**
     * Set retencion
     *
     * @param \FactelBundle\Entity\Retencion $retencion
     * @return Mensaje
     */
    public function setRetencion(\FactelBundle\Entity\Retencion $retencion = null)
    {
        $this->retencion = $retencion;

        return $this;
    }

    /**
     * Get retencion
     *
     * @return \FactelBundle\Entity\Retencion 
     */
    public function getRetencion()
    {
        return $this->retencion;
    }

    /**
     * Set guia
     *
     * @param \FactelBundle\Entity\Guia $guia
     *
     * @return Mensaje
     */
    public function setGuia(\FactelBundle\Entity\Guia $guia = null)
    {
        $this->guia = $guia;

        return $this;
    }

    /**
     * Get guia
     *
     * @return \FactelBundle\Entity\Guia
     */
    public function getGuia()
    {
        return $this->guia;
    }

    /**
     * Set liquidacionCompra
     *
     * @param \FactelBundle\Entity\LiquidacionCompra $liquidacionCompra
     *
     * @return Mensaje
     */
    public function setLiquidacionCompra(\FactelBundle\Entity\LiquidacionCompra $liquidacionCompra = null)
    {
        $this->liquidacionCompra = $liquidacionCompra;

        return $this;
    }

    /**
     * Get liquidacionCompra
     *
     * @return \FactelBundle\Entity\LiquidacionCompra
     */
    public function getLiquidacionCompra()
    {
        return $this->liquidacionCompra;
    }

    /**
     * Set proforma
     *
     * @param \FactelBundle\Entity\Proforma $proforma
     *
     * @return Mensaje
     */
    public function setProforma(\FactelBundle\Entity\Proforma $proforma = null)
    {
        $this->proforma = $proforma;

        return $this;
    }

    /**
     * Get proforma
     *
     * @return \FactelBundle\Entity\Proforma
     */
    public function getProforma()
    {
        return $this->proforma;
    }
}
