<?php

namespace App\Form;

use App\Entity\Personne;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType as TypeDateType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PersonneType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', null,array('attr'=>array('class'=>'form-control')))
            ->add('prenom', null,array('attr'=>array('class'=>'form-control')))
            ->add('sexe', ChoiceType::class,array(
                'choices' =>[
                    'Homme' => 'Homme',
                    'Femme' => 'Femme'
                ],
                'attr'=>array('class'=>'form-control')
                )
                )
            ->add('dateNaiss', TypeDateType::class,array('attr'=>array('class'=>'form-control')))
            ->add('active')
            ->add('email', EmailType::class,array('attr'=>array('class'=>'form-control')))
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Personne::class,
        ]);
    }
}
