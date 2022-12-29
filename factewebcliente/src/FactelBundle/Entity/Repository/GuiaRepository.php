<?php

namespace FactelBundle\Entity\Repository;

/**
 * GuiaRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class GuiaRepository extends \Doctrine\ORM\EntityRepository {

    public function findGuiaById($id) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("guia, emisor, establecimiento, ptoEmision, guiasHasProducto, cliente")
                ->from("FactelBundle:Guia", "guia")
                ->join("guia.emisor", "emisor")
                ->join("guia.establecimiento", "establecimiento")
                ->join("guia.cliente", "cliente")
                ->join("guia.ptoEmision", "ptoEmision")
                ->join("guia.guiasHasProducto", "guiasHasProducto")
                ->where('guia.id = :id')
                ->setParameter('id', $id);

        return $qb->getQuery()->getOneOrNullResult();
    }

    public function cantidadGuias($idPtoEmision, $idEmisor) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("COUNT(guia.id)")
                ->from("FactelBundle:Guia", "guia");
        if ($idEmisor == null) {
            $qb->join("guia.ptoEmision", "ptoEmision");
            $qb->where('ptoEmision.id = :idPtoEmision');
            $qb->setParameter("idPtoEmision", $idPtoEmision);
        } else {
            $qb->join("guia.emisor", "emisor");
            $qb->where('emisor.id = :idEmisor');
            $qb->setParameter("idEmisor", $idEmisor);
        }

        try {
            return $qb->getQuery()->getSingleScalarResult();
        } catch (\Doctrine\ORM\NoResultException $e) {
            return 0;
        }
    }

    public function cantidadGuiasEstados($idPtoEmision, $idEmisor) {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("guia.estado,COUNT(guia.estado) as cantidad")
                ->from("FactelBundle:Guia", "guia");
        if ($idEmisor == null) {
            $qb->join("guia.ptoEmision", "ptoEmision");
            $qb->where('ptoEmision.id = :idPtoEmision');
            $qb->setParameter("idPtoEmision", $idPtoEmision);
        } else {
            $qb->join("guia.emisor", "emisor");
            $qb->where('emisor.id = :idEmisor');
            $qb->setParameter("idEmisor", $idEmisor);
        }

        $qb->groupBy("guia.estado");
        return $qb->getQuery()->getResult();
    }

    public function findGuias($search, $start, $limit, $idPtoEmision, $idEmisor) {
        $datos = explode("&", $search);
        $fechaInicial = "";
        $fechaFinal = "";
        if (count($datos) == 3) {
            $search = $datos[2];
            $fechaInicial = $datos[0];
            $fechaFinal = $datos[1];
        }

        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select("guia, estab, ptoEmision, cliente")
                ->from("FactelBundle:Guia", "guia")
                ->join("guia.emisor", "emisor")
                ->join("guia.establecimiento", "estab")
                ->join("guia.ptoEmision", "ptoEmision")
                ->join("guia.cliente", "cliente");
        $qb->setMaxResults($limit);
        $qb->setFirstResult($start);
        if ($search != "") {
            $qb->where(
                            $qb->expr()->like('guia.estado', $qb->expr()->literal('%' . $search . '%'))
                    )
                    ->orWhere(
                            $qb->expr()->like('guia.claveAcceso', $qb->expr()->literal('%' . $search . '%'))
                    )
                    ->orWhere(
                            $qb->expr()->like('guia.secuencial', $qb->expr()->literal('%' . $search . '%'))
                    )
                    ->orWhere(
                            $qb->expr()->like('cliente.nombre', $qb->expr()->literal('%' . $search . '%'))
                    )
                    ->orWhere(
                            $qb->expr()->like('guia.numeroAutorizacion', $qb->expr()->literal('%' . $search . '%'))
                    )
                    ->orWhere(
                            $qb->expr()->like('cliente.identificacion', $qb->expr()->literal('%' . $search . '%'))
            );
        }

        if ($idEmisor == null) {
            $qb->andWhere('ptoEmision.id = :idPtoEmision');
            $qb->setParameter("idPtoEmision", $idPtoEmision);
        } else {
            $qb->andWhere('emisor.id = :idEmisor');
            $qb->setParameter("idEmisor", $idEmisor);
        }
        if ($fechaInicial != "" && $fechaFinal) {
            $qb->andWhere("guia.fechaIniTransporte BETWEEN :fechaInicial AND :fechaFinal")
                    ->setParameter('fechaInicial', $fechaInicial)
                    ->setParameter('fechaFinal', $fechaFinal);
        }
        $qb->orderBy("guia.secuencial", "DESC");
        return $qb->getQuery()->getResult();
    }

}