<?php

namespace App\Controller;

use App\Entity\ArticleAvance;
use App\Form\ArticleAvanceType;
use App\Repository\ArticleAvanceRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/article/avance")
 */
class ArticleAvanceController extends AbstractController
{
    /**
     * @Route("/", name="article_avance_index", methods={"GET"})
     */
    public function index(ArticleAvanceRepository $articleAvanceRepository): Response
    {
        $listArticles= $articleAvanceRepository->findAll();
        $nombreArticles= count($listArticles);
        $listeCategories= $articleAvanceRepository->findCategories();
        return $this->render('article_avance/index.html.twig', [
            'article_avances' => $listArticles,
            'categories' => $listeCategories,
            'nombre_articles' => $nombreArticles
        ]);
    }

     /**
     * @Route("/recherche", name="recherche_par_categories", methods={"GET"})
     */
    public function rechercheParCategories(ArticleAvanceRepository $articleAvanceRepository, Request $request): Response
    {
        $myCategory= $request->get('categorieSelect');
        $listArticles= $articleAvanceRepository->findByCategorie($myCategory);
        $nombreArticles= count($listArticles);
        $listeCategories= $articleAvanceRepository->findCategories();
        return $this->render('article_avance/index.html.twig', [
            'article_avances' => $listArticles,
            'categories' => $listeCategories,
            'nombre_articles' => $nombreArticles
        ]);
    }

    /**
     * @Route("/new", name="article_avance_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $articleAvance = new ArticleAvance();
        $form = $this->createForm(ArticleAvanceType::class, $articleAvance);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($articleAvance);
            $entityManager->flush();

            return $this->redirectToRoute('article_avance_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article_avance/new.html.twig', [
            'article_avance' => $articleAvance,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="article_avance_show", methods={"GET"})
     */
    public function show(ArticleAvance $articleAvance): Response
    {
        return $this->render('article_avance/show.html.twig', [
            'article_avance' => $articleAvance,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="article_avance_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, ArticleAvance $articleAvance, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ArticleAvanceType::class, $articleAvance);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('article_avance_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article_avance/edit.html.twig', [
            'article_avance' => $articleAvance,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="article_avance_delete", methods={"POST"})
     */
    public function delete(Request $request, ArticleAvance $articleAvance, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$articleAvance->getId(), $request->request->get('_token'))) {
            $entityManager->remove($articleAvance);
            $entityManager->flush();
        }

        return $this->redirectToRoute('article_avance_index', [], Response::HTTP_SEE_OTHER);
    }
}
