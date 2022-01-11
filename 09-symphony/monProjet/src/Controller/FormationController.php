<?php

namespace App\Controller;

use App\Entity\Formation;
use App\Form\FormationType;
use App\Repository\FormationRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/formation")
 */
class FormationController extends AbstractController
{
    /**
     * @Route("/", name="formation_index", methods={"GET"})
     */
    public function index(FormationRepository $formationRepository): Response
    {
        $listeFormation= $formationRepository->findAll();
        $listeCategories= $formationRepository->findCategories();
        return $this->render('formation/index.html.twig', [
            'formations' => $listeFormation,
            'myCategorie' => 'Tous',
            'categories' => $listeCategories
        ]);
    }

    /**
     * @Route("/recherche", name="formation_recherche", methods={"GET"})
     */
    public function formationRecherche(FormationRepository $formationRepository, Request $request): Response
    {
        $myCategorie= $request->get('categorie');
        if ($myCategorie=="Tous") {
            $listeFormation= $formationRepository->findAll();
        }
        else{
            $listeFormation= $formationRepository->findByCategorie($myCategorie);
        }
        
        $listeCategories= $formationRepository->findCategories();
        return $this->render('formation/index.html.twig', [
            'formations' => $listeFormation,
            'myCategorie' => $myCategorie,
            'categories' => $listeCategories
        ]);
    }

    /**
     * @Route("/new", name="formation_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $formation = new Formation();
        $form = $this->createForm(FormationType::class, $formation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($formation);
            $entityManager->flush();

            return $this->redirectToRoute('formation_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('formation/new.html.twig', [
            'formation' => $formation,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="formation_show", methods={"GET"})
     */
    public function show(Formation $formation): Response
    {
        return $this->render('formation/show.html.twig', [
            'formation' => $formation,
        ]);
    }
    /**
     * @Route("/supprimer/{id}", name="formation_supprimer", methods={"GET"})
     */
    public function supprimerFormation(EntityManagerInterface $entityManager, FormationRepository $formationRepository, Request $request): Response
    {
        $myId=$request->get('id');

        $msg='Formation supprimé avec succée';
        $myAlert= 'alert-success';
        try {
           
            $temp= $formationRepository->findOneBy(['id'=>$myId]);
            
            $entityManager->remove($temp);
            $entityManager->flush();
        } catch (\Throwable $th) {
            $msg='Problème de suppression';
            $myAlert= 'alert-danger';
        }

        $listeFormation= $formationRepository->findAll();
        $listeCategories= $formationRepository->findCategories();
        return $this->render('formation/index.html.twig', [
            'formations' => $listeFormation,
            'myCategorie' => 'Tous',
            'msg' => $msg,
            'myAlert' => $myAlert,
            'categories' => $listeCategories
        ]);
        
    }

    /**
     * @Route("/{id}/edit", name="formation_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Formation $formation, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(FormationType::class, $formation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('formation_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('formation/edit.html.twig', [
            'formation' => $formation,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="formation_delete", methods={"POST"})
     */
    public function delete(Request $request, Formation $formation, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$formation->getId(), $request->request->get('_token'))) {
            $entityManager->remove($formation);
            $entityManager->flush();
        }

        return $this->redirectToRoute('formation_index', [], Response::HTTP_SEE_OTHER);
    }
}
