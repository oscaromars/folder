<?php

namespace FactelBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CampoAdicional
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class CampoAdicional
{

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

     /**
     * @ORM\ManyToOne(targetEntity="Factura", inversedBy="composAdic")
     * @ORM\JoinColumn(name="Factura_id", referencedColumnName="id")
     */
    protected $factura;
    
    /**
     * @ORM\ManyToOne(targetEntity="Proforma", inversedBy="composAdic")
     * @ORM\JoinColumn(name="Proforma_id", referencedColumnName="id")
     */
    protected $proforma;
    
    /**
     * @ORM\ManyToOne(targetEntity="LiquidacionCompra", inversedBy="composAdic")
     * @ORM\JoinColumn(name="liquidacioncompra_id", referencedColumnName="id")
     */
    protected $liquidacionCompra;
    
  /**
     * @ORM\ManyToOne(targetEntity="NotaCredito", inversedBy="composAdic")
     * @ORM\JoinColumn(name="NotaCredito_id", referencedColumnName="id")
     */
    protected $notaCredito;
    
    /**
     * @ORM\ManyToOne(targetEntity="NotaDebito", inversedBy="composAdic")
     * @ORM\JoinColumn(name="NotaDebito_id", referencedColumnName="id")
     */
    protected $notaDebito;
    
    /**
     * @ORM\ManyToOne(targetEntity="Retencion", inversedBy="composAdic")
     * @ORM\JoinColumn(name="Retencion_id", referencedColumnName="id")
     */
    protected $retencion;
    
    /**
     * @ORM\ManyToOne(targetEntity="Guia", inversedBy="composAdic")
     * @ORM\JoinColumn(name="Guia_id", referencedColumnName="id")
     */
    protected $guia;
    
    
    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=60)
     */
    protected $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="valor", type="string", length=300)
     */
    protected $valor;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return CampoAdicional
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set valor
     *
     * @param string $valor
     * @return CampoAdicional
     */
    public function setValor($valor)
    {
        $this->valor = $valor;

        return $this;
    }

    /**
     * Get valor
     *
     * @return string 
     */
    public function getValor()
    {
        return $this->valor;
    }

    

    /**
     * Set factura
     *
     * @param \FactelBundle\Entity\Factura $factura
     * @return CampoAdicional
     */
    public function setFactura(\FactelBundle\Entity\Factura $factura)
    {
        $this->factura = $factura;

        return $this;
    }

    /**
     * Get factura
     *
     * @return \FactelBundle\Entity\Factura 
     */
    public function getFactura()
    {
        return $this->factura;
    }

    /**
     * Set notaCredito
     *
     * @param \FactelBundle\Entity\NotaCredito $notaCredito
     * @return CampoAdicional
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
     * @return CampoAdicional
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
     * @return CampoAdicional
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
     * @return CampoAdicional
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
     * @return CampoAdicional
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
     * @return CampoAdicional
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
