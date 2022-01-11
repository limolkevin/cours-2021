<?php

namespace App\Controller;

use App\Entity\Categorie;
use App\Entity\Myblog;
use App\Form\MyblogType;
use App\Repository\CategorieRepository;
use App\Repository\MyblogRepository;
use DateTime;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/myblog")
 */
class MyblogController extends AbstractController
{
    /**
     * @Route("/", name="myblog_index", methods={"GET"})
     */
    public function index(MyblogRepository $myblogRepository, CategorieRepository $categorieRepository): Response
    {
        $categories=$categorieRepository->findAll();
        return $this->render('myblog/index.html.twig', [
            'myblogs' => $myblogRepository->findAll(),
            'categories' => $categories
        ]);
    }
    /**
     * @Route("/recherche", name="myblog_recherche", methods={"GET"})
     */
    public function myblogRecheche(MyblogRepository $myblogRepository, CategorieRepository $categorieRepository, Request $request): Response
    {
        $requestCategorie= $request->get('categories');
        $categorie= $categorieRepository->find($requestCategorie);
        $categories=$categorieRepository->findAll();
        if ($requestCategorie=="Tous") {
            $myblogs= $myblogRepository->findAll();
        } else {
            $myblogs= $categorie->getBlogs();
        }
        
        return $this->render('myblog/index.html.twig', [
            'myblogs' => $myblogs,
            'requestCategorie' => $requestCategorie,
            'categories' => $categories
        ]);
    }

    /**
     * @Route("/new", name="myblog_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $myblog = new Myblog();
        $form = $this->createForm(MyblogType::class, $myblog);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $d=date('Y-m-d');
            $myblog->setDateCreation(new DateTime($d));
            $entityManager->persist($myblog);
            $entityManager->flush();

            return $this->redirectToRoute('myblog_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('myblog/new.html.twig', [
            'myblog' => $myblog,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="myblog_show", methods={"GET"})
     */
    public function show(Myblog $myblog): Response
    {
        return $this->render('myblog/show.html.twig', [
            'myblog' => $myblog,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="myblog_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Myblog $myblog, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(MyblogType::class, $myblog);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('myblog_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('myblog/edit.html.twig', [
            'myblog' => $myblog,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="myblog_delete", methods={"POST"})
     */
    public function delete(Request $request, Myblog $myblog, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$myblog->getId(), $request->request->get('_token'))) {
            $entityManager->remove($myblog);
            $entityManager->flush();
        }

        return $this->redirectToRoute('myblog_index', [], Response::HTTP_SEE_OTHER);
    }
}
