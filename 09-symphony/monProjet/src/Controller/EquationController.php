<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EquationController extends AbstractController
{
    /**
     * @Route("/equation", name="equation")
     */
    public function index(): Response
    {
        return $this->render('equation/index.html.twig', [
            'controller_name' => 'EquationController',
        ]);
    }
}
