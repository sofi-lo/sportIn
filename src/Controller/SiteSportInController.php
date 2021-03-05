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

    #[Route('/blogs', name: 'blogs')]
    public function blogs(): Response
    {
        return $this->render('site_sport_in/blogs.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }

    #[Route('/defis', name: 'defis')]
    public function defis(): Response
    {
        return $this->render('site_sport_in/defis.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }

    #[Route('/faq', name: 'faq')]
    public function faq(): Response
    {
        return $this->render('site_sport_in/faq.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }

    #[Route('/participer', name: 'participer')]
    public function participer(): Response
    {
        return $this->render('site_sport_in/participer.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }
    #[Route('/amis', name: 'amis')]
    public function amis(): Response
    {
        return $this->render('site_sport_in/amis.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }
    #[Route('/partager', name: 'partager')]
    public function partager(): Response
    {
        return $this->render('site_sport_in/partager.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }
}
