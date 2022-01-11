<?php

namespace App\Controller;

use App\Repository\ArticleAvanceRepository;
use App\Repository\PersonneRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index( ArticleAvanceRepository $articleAvanceRepository, PersonneRepository $personneRepository): Response
    {
        $msg="merci pour votre visite";
        $listArticles= $articleAvanceRepository->find4Articles();
        $listePersonnes= $personneRepository->find4Personnes();
        $listeCategories= $articleAvanceRepository->findCategories();
        $bgClass= ["bg-primary", "bg-secondary", "bg-danger", "bg-success", "bg-warning", "bg-dark"];
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'titre_name' => 'Home',
            'articles' => $listArticles,
            'personnes' => $listePersonnes,
            'categories' => $listeCategories,
            'bgClass' => $bgClass,
            'message' => $msg
        ]);
    }
    /**
     * @Route("/home2", name="home2")
     */
    public function home2(): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
           
        ]);
    }
}
