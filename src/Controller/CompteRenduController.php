<?php

namespace App\Controller;

use App\Entity\RapportVisite;
use App\Form\RapportVisiteType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RapportVisiteRepository;
use App\Repository\VisiteurRepository;
use Symfony\Component\HttpFoundation\Request;
use function PHPSTORM_META\type;

class CompteRenduController extends AbstractController
{

    private $repositoryrapport;
    private $repositoryvisiteur;

    public function __construct(RapportVisiteRepository $repositoryrapport, VisiteurRepository $repositoryvisiteur)
    {
        $this->repositoryrapport=$repositoryrapport;
        $this->repositoryvisiteur=$repositoryvisiteur;
    }

    /**
     * @Route("/compterendu", name="compte_rendu")
     */
    public function index(): Response
    {
        $rapportvisite = $this->repositoryrapport->findAll();
        $visiteur = $this->repositoryvisiteur->findAll();
        return $this->render('compte_rendu/index.html.twig', [
            'rapportvisites' => $rapportvisite, 'visiteurs'=>$visiteur
        ]);
    }
    /**
     * @Route("/compterendu/show/{id}", name="compte_rendu_show")
     */
    public function show(RapportVisite $rapportvisite): Response
    {
        $rapportvisite = $this->repositoryrapport->find($rapportvisite);
        return $this->render('compte_rendu/show.html.twig', [
            'rapportvisite' => $rapportvisite,
        ]);
    }

     /**
     * @Route("/compterendu/create", name="compte_rendu_create")
     */

    public function create(Request $request)
    {
        $rapportvisite= new RapportVisite();
        $form = $this->createForm(RapportVisiteType::class);
        $form->handleRequest($request);

        if($form->isSubmitted()&& $form->isValid()){
            $this->em->persist($rapportvisite);
            $this->em->flush();
            return $this->redirectToRoute('compte_rendu/index.html.twig');
        }
      return $this->render('compte_rendu/create.html.twig', [
      'rapportvisite'=> $rapportvisite,
      'form' => $form->createView()

        ]);
    }
    
} 
