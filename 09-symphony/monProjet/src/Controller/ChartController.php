<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class ChartController extends AbstractController
{
    /**
     * @Route("/chart", name="chart")
     */
    public function index(CategorieRepository $categorieRepository): Response
    {
        $categories= $categorieRepository->findAll();
        $categorieLabels=[];
        foreach ($categories as $categorie) {
            array_push($categorieLabels, $categorie->getLabel());
        }
    
        return $this->render('chart/index.html.twig', [
            'controller_name' => 'ChartController',
            'categories' => $categorieLabels
        ]);
    }
}
