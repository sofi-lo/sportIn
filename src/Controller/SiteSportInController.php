<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SiteSportInController extends AbstractController
{
    #[Route('/', name: 'site_sport_in')]
    public function index(): Response
    {
        return $this->render('site_sport_in/index.html.twig', [
            'controller_name' => 'SiteSportInController',
        ]);
    }
}
