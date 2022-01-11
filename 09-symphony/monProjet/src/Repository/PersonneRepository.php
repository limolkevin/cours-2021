<?php

namespace App\Repository;

use App\Entity\Personne;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Personne|null find($id, $lockMode = null, $lockVersion = null)
 * @method Personne|null findOneBy(array $criteria, array $orderBy = null)
 * @method Personne[]    findAll()
 * @method Personne[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PersonneRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Personne::class);
    }

    // /**
    //  * @return Personne[] Returns an array of Personne objects
    //  */

    public function findActive()
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.active = true')
            ->getQuery()
            ->getResult()
        ;
    }
    // /**
    //  * @return Personne[] Returns an array of Personne objects
    //  */

    public function findSexe($sexe)
    {
        return $this->createQueryBuilder('p')
            ->andWhere("p.sexe = '$sexe'")
            ->getQuery()
            ->getResult()
        ;
    }

    public function find4Personnes()
    {
        return $this->createQueryBuilder('p')
            ->andWhere("p.active = true")
            ->setMaxResults(4)
            ->getQuery()
            ->getResult()
        ;
    }
    public function findGlobal($recherche)
    {
        $myprenom= $recherche['prenom'];
        $mynom= $recherche['nom'];
        $myemail= $recherche['email'];
        $myactive= $recherche['active'];
        $mySexe= $recherche['sexe'];

        $myprenom= $recherche['prenom']=="" ? "": "p.prenom='$myprenom' AND ";
        $mynom= $recherche['nom']=="" ? "": "p.nom='$mynom' AND ";
        $myemail= $recherche['email']=="" ? "": "p.email='$myemail' AND ";
        $myactive= $recherche['active']=="Tous" ? "": "p.active=$myactive AND ";
        $mySexe= $recherche['sexe']=="Tous" ? "": "p.sexe='$mySexe' AND ";

        $textRecherche= $myprenom.$mynom.$myemail.$myactive.$mySexe;
        //echo $textRecherche;
            $textRecherche= substr($textRecherche, 0,strrpos($textRecherche,"AND "));
  
      /*    echo $textRecherche;
       die();  */ 
       if ($textRecherche=="") {
           $resultat=$this->createQueryBuilder('p')
           ->getQuery()
           ->getResult();
       } else {
        $resultat=$this->createQueryBuilder('p')
        ->andWhere("$textRecherche")
        ->getQuery()
        ->getResult();
       }
       
       return $resultat;
    }


    public function findPrenom($prenom)
    {
        return $this->createQueryBuilder('p')
            ->andWhere("p.prenom LIKE '%$prenom%'")
            ->getQuery()
            ->getResult()
        ;
    } 

    /*
    public function findOneBySomeField($value): ?Personne
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
