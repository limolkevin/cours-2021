<?php

namespace App\Repository;

use App\Entity\Myblog;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Myblog|null find($id, $lockMode = null, $lockVersion = null)
 * @method Myblog|null findOneBy(array $criteria, array $orderBy = null)
 * @method Myblog[]    findAll()
 * @method Myblog[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MyblogRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Myblog::class);
    }

    // /**
    //  * @return Myblog[] Returns an array of Myblog objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Myblog
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
