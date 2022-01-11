<?php

namespace App\Repository;

use App\Entity\ArticleAvance;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ArticleAvance|null find($id, $lockMode = null, $lockVersion = null)
 * @method ArticleAvance|null findOneBy(array $criteria, array $orderBy = null)
 * @method ArticleAvance[]    findAll()
 * @method ArticleAvance[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleAvanceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ArticleAvance::class);
    }

    // /**
    //  * @return ArticleAvance[] Returns an array of ArticleAvance objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
    public function findByCategorie($categorieParam)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.categorie = :cat')
            ->setParameter('cat', $categorieParam)
            ->orderBy('a.titre', 'ASC')
            ->getQuery()
            ->getResult()
        ;
    }
    public function findCategories()
    {
        return $this->createQueryBuilder('a')
            ->groupBy('a.categorie')
            ->getQuery()
            ->getResult()
        ;
    }
    public function find4Articles()
    {
        return $this->createQueryBuilder('a')
            ->setMaxResults(4)
            ->getQuery()
            ->getResult()
        ;
    }

    /*
    public function findOneBySomeField($value): ?ArticleAvance
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
