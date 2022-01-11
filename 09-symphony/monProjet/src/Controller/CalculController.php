<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CalculController extends AbstractController
{
    /**
     * @Route("/calcul", name="calcul")
     */
    public function index(): Response
    {
        return $this->render('calcul/index.html.twig', [
            'controller_name' => 'CalculController',
        ]);
    }
    /**
     * @Route("/etoiles", name="affiche_etoiles")
     */
    public function afficheEtoiles(Request $request): Response
    {
        $etoiles= $request->get('etoilesInput');
        return $this->render('calcul/etoiles.html.twig', [
            'controller_name' => 'CalculController',
            'etoiles' => $etoiles
        ]);
    }
      /**
     * @Route("/calcul2", name="calcul2")
     */
    public function calcul(Request $request): Response
    {
        $hauteur=intval($request->get("hauteur"));
        $largeur=intval($request->get("largeur"));
        $perimetre=($hauteur+$largeur)*2;
        $surface=$hauteur*$largeur;
        return $this->render('calcul/index.html.twig', [
            'controller_name' => 'CalculController',
            'perimetre' => $perimetre,
            'surface' => $surface,
            'largeur' => $largeur,
            'hauteur' => $hauteur
        ]);
    }
      /**
     * @Route("/moyenne", name="calcul_moyenne")
     */
    public function calculMoyenne(Request $request): Response
    {
        $dc=intval($request->get("dc"));
        $ds=intval($request->get("ds"));
        $moyenne=($dc+($ds*2))/3;

        return $this->render('calcul/moyenne.html.twig', [
            'controller_name' => 'CalculController',
            'dc' => $dc,
            'ds' => $ds,
            'moyenne' => $moyenne

        ]);
    }
    /**
     * @Route("/moyenneEleve", name="moyenne_eleve")
     */
    public function MoyenneEleve(): Response
    {


        return $this->render('calcul/moyenne.html.twig', [
            'controller_name' => 'CalculController'

        ]);
    }
}
