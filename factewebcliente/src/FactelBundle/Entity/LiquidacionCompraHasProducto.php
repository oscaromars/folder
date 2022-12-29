<?php

namespace FactelBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * FacturaHasProducto
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class LiquidacionCompraHasProducto {

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\ManyToOne(targetEntity="Producto", inversedBy="liquidacionesCompraHasProducto")
     * @ORM\JoinColumn(name="producto_id", referencedColumnName="id", nullable=false)
     */
    protected $producto;

    /**
     * @ORM\ManyToOne(targetEntity="LiquidacionCompra", inversedBy="liquidacionesCompraHasProducto")
     * @ORM\JoinColumn(name="liquidacioncompra_id", referencedColumnName="id", nullable=false)
     */
    protected $liquidacionCompra;

    /**
     * @ORM\OneToMany(targetEntity="Impuesto", mappedBy="liquidacionCompraHasProducto", cascade={"persist"})
     */
    protected $impuestos;


    /**
     * @ORM\Column(name="cantidad", type="decimal", scale=2)
     */
    protected $cantidad;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=300)
     */
    protected $nombre;
    
    /**
     * @var string
     *
     * @ORM\Column(name="codigoProducto", type="string", length=300)
     */
    protected $codigoProducto;
    
    /**
     * @ORM\Column(name="precioUnitario", type="decimal", scale=2)
     */
    protected $precioUnitario;

    /**
     * @ORM\Column(name="descuento", type="decimal", scale=2)
     */
    protected $descuento;

    /**
     * @var integer
     *
     * @ORM\Column(name="valorTotal", type="decimal", scale=2)
     */
    protected $valorTotal;

  
   
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->impuestos = new \Doctrine\Common\Collections\ArrayCollection();
        $this->detallesAdicionales = new \Doctrine\Common\Collections\ArrayCollection();
    }

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
     * Set cantidad
     *
     * @param string $cantidad
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setCantidad($cantidad)
    {
        $this->cantidad = $cantidad;

        return $this;
    }

    /**
     * Get cantidad
     *
     * @return string
     */
    public function getCantidad()
    {
        return $this->cantidad;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return LiquidacionCompraHasProducto
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
     * Set codigoProducto
     *
     * @param string $codigoProducto
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setCodigoProducto($codigoProducto)
    {
        $this->codigoProducto = $codigoProducto;

        return $this;
    }

    /**
     * Get codigoProducto
     *
     * @return string
     */
    public function getCodigoProducto()
    {
        return $this->codigoProducto;
    }

    /**
     * Set precioUnitario
     *
     * @param string $precioUnitario
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setPrecioUnitario($precioUnitario)
    {
        $this->precioUnitario = $precioUnitario;

        return $this;
    }

    /**
     * Get precioUnitario
     *
     * @return string
     */
    public function getPrecioUnitario()
    {
        return $this->precioUnitario;
    }

    /**
     * Set descuento
     *
     * @param string $descuento
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setDescuento($descuento)
    {
        $this->descuento = $descuento;

        return $this;
    }

    /**
     * Get descuento
     *
     * @return string
     */
    public function getDescuento()
    {
        return $this->descuento;
    }

    /**
     * Set valorTotal
     *
     * @param string $valorTotal
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setValorTotal($valorTotal)
    {
        $this->valorTotal = $valorTotal;

        return $this;
    }

    /**
     * Get valorTotal
     *
     * @return string
     */
    public function getValorTotal()
    {
        return $this->valorTotal;
    }

    /**
     * Set producto
     *
     * @param \FactelBundle\Entity\Producto $producto
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setProducto(\FactelBundle\Entity\Producto $producto)
    {
        $this->producto = $producto;

        return $this;
    }

    /**
     * Get producto
     *
     * @return \FactelBundle\Entity\Producto
     */
    public function getProducto()
    {
        return $this->producto;
    }

    /**
     * Set liquidacionCompra
     *
     * @param \FactelBundle\Entity\LiquidacionCompra $liquidacionCompra
     *
     * @return LiquidacionCompraHasProducto
     */
    public function setLiquidacionCompra(\FactelBundle\Entity\LiquidacionCompra $liquidacionCompra)
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
     * Add impuesto
     *
     * @param \FactelBundle\Entity\Impuesto $impuesto
     *
     * @return LiquidacionCompraHasProducto
     */
    public function addImpuesto(\FactelBundle\Entity\Impuesto $impuesto)
    {
        $this->impuestos[] = $impuesto;

        return $this;
    }

    /**
     * Remove impuesto
     *
     * @param \FactelBundle\Entity\Impuesto $impuesto
     */
    public function removeImpuesto(\FactelBundle\Entity\Impuesto $impuesto)
    {
        $this->impuestos->removeElement($impuesto);
    }

    /**
     * Get impuestos
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getImpuestos()
    {
        return $this->impuestos;
    }

    /**
     * Add detallesAdicionale
     *
     * @param \FactelBundle\Entity\DetalleAdicional $detallesAdicionale
     *
     * @return LiquidacionCompraHasProducto
     */
    public function addDetallesAdicionale(\FactelBundle\Entity\DetalleAdicional $detallesAdicionale)
    {
        $this->detallesAdicionales[] = $detallesAdicionale;

        return $this;
    }

    /**
     * Remove detallesAdicionale
     *
     * @param \FactelBundle\Entity\DetalleAdicional $detallesAdicionale
     */
    public function removeDetallesAdicionale(\FactelBundle\Entity\DetalleAdicional $detallesAdicionale)
    {
        $this->detallesAdicionales->removeElement($detallesAdicionale);
    }

    /**
     * Get detallesAdicionales
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getDetallesAdicionales()
    {
        return $this->detallesAdicionales;
    }
}
