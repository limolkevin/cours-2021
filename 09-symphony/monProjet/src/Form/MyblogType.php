<?php

namespace App\Form;

use App\Entity\Categorie;
use App\Entity\Myblog;
use App\Entity\Personne;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MyblogType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('titre', null, ['attr' =>['class'=>'form-control']])
            ->add('description',null, ['attr' =>['class'=>'form-control']])
            ->add('img',null, [
                'attr' =>['class'=>'form-control'],
                'label' => 'image'
                ])
            ->add('categorie', EntityType::class, [
                'class' => Categorie::class,
                'choice_label' => 'label',
                'attr' =>['class'=>'form-control']
            ])
            ->add('auteur', EntityType::class, [
                'attr' =>['class'=>'form-control'],
                'class' => Personne::class,
                'choice_label' => function(Personne $personne)
                {
                    # fonction qui retourne le nom et prenom du personne
                    return $personne->getPrenom()." ".$personne->getNom();

                }
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Myblog::class,
        ]);
    }
}
