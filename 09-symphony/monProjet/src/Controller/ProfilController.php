<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
/**
 * @Route("/profil")
 * @method render(string $string, array $array)
 */
class ProfilController extends AbstractController
{
    /**
     * @Route("/detail", name="profil")
     */
    public function detail() :Response
    {

        //tableau simple
        $info = ['Loper', 'Dave', 'Adresse','telephone','daveloper@code.dom', '01/01/1970'];
         //tableau associatif
        $info = ['lastname' => 'Loper', 'firstname' => 'Dave', 'email' => 'daveloper@code.dom', 'birthdate' => '01/01/1970', 'adress' => 'london bridge'   ];

        // var_dump ($info);
        // affichage de la page d'accueil
        return $this->render('profil/detail.html.twig', [
            'informations' => $info
        ]);
    }
}

