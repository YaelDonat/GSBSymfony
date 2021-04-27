<?php

namespace App\DataFixtures;


use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

use Faker\Factory;
use App\Entity\Praticien;
use App\Entity\RapportVisite;
use App\Entity\TypePraticien;
use App\Entity\Visiteur;
use App\Entity\Delegue;

class AppFixtures extends Fixture
{
    private $encoder;

    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }
    public function load(ObjectManager $manager)
    {

        $delegue = new Delegue();
        $delegue->setUsername('ydonat');
        $delegue->setPassword($this->encoder->encodePassword($delegue, '0000'));
        $delegue->setLogin('Delmt');
        $manager->persist($delegue);

        $faker = Factory::create('fr_FR');
        // on crée 4 auteurs avec noms et prénoms "aléatoires" en français

        $typepraticien = array();

        for ($i = 0; $i < 100; $i++) {
            $typepraticien[$i] = new TypePraticien();
            $typepraticien[$i]->setLibelle($faker->word);
            $typepraticien[$i]->setLieu($faker->city);

            $manager->persist($typepraticien[$i]);
        }

        $praticien = array();
        for ($i = 0; $i < 100; $i++) {
            $praticien[$i] = new Praticien();
            $praticien[$i]->setType($typepraticien[$i % 3]);
            $praticien[$i]->setNom($faker->lastName);
            $praticien[$i]->setPrenom($faker->firstName);
            $praticien[$i]->setAdresse($faker->address);
            $praticien[$i]->setCp($faker->postcode);
            $praticien[$i]->setVille($faker->city);
            $praticien[$i]->setCoefNotoriete($faker->numberBetween($min = 1, $max = 3));

            $manager->persist($praticien[$i]);
        }

        $manager->flush();
    }
}
