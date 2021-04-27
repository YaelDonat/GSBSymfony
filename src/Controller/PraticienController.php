<?php

namespace App\Controller;

use App\Entity\Praticien;
use App\Repository\PraticienRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PraticienController extends AbstractController
{
    /** 
     * @var PraticienRepository
     */
    private $repository;
    public function __construct(PraticienRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @Route("/praticien", name="praticien")
     */
    public function index(): Response
    {
        $praticien = $this->repository->findAll();
        return $this->render('praticien/index.html.twig', [
            'praticiens' => $praticien,
        ]);
    }
}
