<?php

namespace FactelBundle\Entity\Repository;

use Doctrine\ORM\EntityRepository;

/**
 * ProductoRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ProductoRepository extends EntityRepository {

    public function findProductos() {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("prod, emisor.razonSocial")
                ->from("FactelBundle:Producto", "prod")
                ->join('prod.emisor', 'emisor');

        return $qb->getQuery()->getResult();
    }

    public function findProductosEmisor($emisorId) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("prod, emisor.razonSocial")
                ->from("FactelBundle:Producto", "prod")
                ->join('prod.emisor', 'emisor')
                ->where('emisor.id = :emisorId')
                ->setParameter('emisorId', $emisorId);

        return $qb->getQuery()->getResult();
    }

    public function cantidadProductos($idEmisor) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("COUNT(producto.id)")
                ->from("FactelBundle:Producto", "producto")
                ->join("producto.emisor", "emisor");
        $qb->where('emisor.id = :idEmisor');
        $qb->setParameter("idEmisor", $idEmisor);

        try {
            return $qb->getQuery()->getSingleScalarResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return 0;
        }
    }

    public function findTodosProductos($search, $start, $limit, $idEmisor) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("producto")
                ->from("FactelBundle:Producto", "producto")
                ->join("producto.emisor", "emisor");
        $qb->setMaxResults($limit);
        $qb->setFirstResult($start);
        if ($search != "") {
            //$qb->where(
            //                $qb->expr()->like('producto.nombre', $qb->expr()->literal('%' . $search . '%'))
            //);
            
            $qb->where(
                            $qb->expr()->like('producto.codigoPrincipal', $qb->expr()->literal('%' . $search . '%'))
                    )
                    ->orWhere(
                            $qb->expr()->like('producto.nombre', $qb->expr()->literal('%' . $search . '%'))
            );
            
        }
        $qb->andwhere('emisor.id = :idEmisor');
        $qb->setParameter("idEmisor", $idEmisor);
        return $qb->getQuery()->getResult();
    }

    public function findcantidadProductos($idEmisor, $search) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("COUNT(producto.id)")
                ->from("FactelBundle:Producto", "producto")
                ->join("producto.emisor", "emisor");
        if ($search != "") {
            $qb->where(
                            $qb->expr()->like('producto.nombre', $qb->expr()->literal('%' . $search . '%'))
            );
        }
        $qb->andwhere('emisor.id = :idEmisor');
        $qb->setParameter("idEmisor", $idEmisor);

        try {
            return $qb->getQuery()->getSingleScalarResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return 0;
        }
    }


}
