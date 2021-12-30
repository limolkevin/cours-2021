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
// affichage de la page d'accueil
return $this->render('num/contact.html.twig');
}
}