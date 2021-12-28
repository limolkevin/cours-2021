<?php
namespace App\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
/**
* @Route("/contact")
* @method render(string $string, array $array)
*/
class ContactController extends AbstractController
{
/**
* @Route("/num", name="contact")
*/
public function contact() :Response
{
    $info = ['lastname' => 'Loper', 'firstname' => 'Dave', 'email' => 'daveloper@code.dom', 'birthdate' => '01/01/1970', 'adress' => 'london bridge'   ];
    // affichage de la page d'accueil
return $this->render('num/contact.html.twig', [
    'informations' => $info
    ]);
    }
}

