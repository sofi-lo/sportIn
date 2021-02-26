<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SiteSportInController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(): Response
    {
        return $this->render('site_sport_in/index.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }

    #[Route('/contact', name: 'contact')]
    public function contact(): Response
    {
        return $this->render('site_sport_in/contact.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }

    #[Route('/concept', name: 'concept')]
    public function concept(): Response
    {
        return $this->render('site_sport_in/concept.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }

    #[Route('/blog', name: 'blog')]
    public function blog(): Response
    {
        return $this->render('site_sport_in/blog.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }
}
