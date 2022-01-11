<?php

namespace App\Controller;

use App\Entity\Personne;
use App\Form\PersonneType;
use App\Repository\PersonneRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/personne")
 */
class PersonneController extends AbstractController
{
    /**
     * @Route("/", name="personne_index", methods={"GET"})
     */
    public function index(PersonneRepository $personneRepository): Response
    {
        return $this->render('personne/index.html.twig', [
            'personnes' => $personneRepository->findAll(),
        ]);
    }
     /**
     * @Route("/rechercheSexe", name="recherche_sexe", methods={"GET"})
     */
    public function rechercheParSexe(PersonneRepository $personneRepository, Request $request): Response
    {
        $mySexe= $request->get('sexeRecherche');
        
        if ($mySexe=="Tous") {
            $listePersonne=$personneRepository->findAll();
        } else {
            $listePersonne=$personneRepository->findSexe($mySexe);
        }
        
        return $this->render('personne/index.html.twig', [
            'personnes' => $listePersonne,
        ]);
    }
         /**
     * @Route("/rechercheGlobal", name="recherche_global", methods={"GET"})
     */
    public function rechercheGlobal(PersonneRepository $personneRepository, Request $request): Response
    {
        $myprenom= $request->get('prenomRecherche');
        $mynom= $request->get('nomRecherche');
        $myemail= $request->get('emailRecherche');
        $myactive= $request->get('activeRecherche');
        $mySexe= $request->get('sexeRecherche');
        $recherche=['prenom'=>$myprenom, 'nom'=>$mynom, 'sexe'=>$mySexe, 'active' => $myactive, 'email' => $myemail];
        // commentaire
        $listePersonne=$personneRepository->findGlobal($recherche);
        
        
        return $this->render('personne/index.html.twig', [
            'personnes' => $listePersonne,
        ]);
    }

    /**
     * @Route("/new", name="personne_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $personne = new Personne();
        $form = $this->createForm(PersonneType::class, $personne);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($personne);
            $entityManager->flush();

            return $this->redirectToRoute('personne_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('personne/new.html.twig', [
            'personne' => $personne,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/recherche", name="recherche_personne")
     */
    public function RecherchePersonne(Request $request , PersonneRepository $personne): Response
    {
        $recherche= $request->get('recherche');
        $listePersonne= $personne->findPrenom($recherche);
        return $this->render('personne/index.html.twig', [
            'personnes' => $listePersonne,
        ]);
    }

    /**
     * @Route("/{id}", name="personne_show", methods={"GET"})
     */
    public function show(Personne $personne): Response
    {
        return $this->render('personne/show.html.twig', [
            'personne' => $personne,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="personne_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Personne $personne, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(PersonneType::class, $personne);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('personne_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('personne/edit.html.twig', [
            'personne' => $personne,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="personne_delete", methods={"POST"})
     */
    public function delete(Request $request, Personne $personne, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$personne->getId(), $request->request->get('_token'))) {
            $entityManager->remove($personne);
            $entityManager->flush();
        }

        return $this->redirectToRoute('personne_index', [], Response::HTTP_SEE_OTHER);
    }
    /**
     * @Route("/delete/{id}", name="mypersonne_delete", methods={"GET"})
     */
    public function deletePersonne(Request $request, PersonneRepository $pr, Personne $personne, EntityManagerInterface $entityManager): Response
    {
            $idPersonne=$request->get('id');
            $personne= $pr->findOneBy(['id'=>$idPersonne]);
          /*   dump($personne);
            die; */
            $entityManager->remove($personne);
            $entityManager->flush();


        return $this->redirectToRoute('personne_index', [], Response::HTTP_SEE_OTHER);
    }
}
