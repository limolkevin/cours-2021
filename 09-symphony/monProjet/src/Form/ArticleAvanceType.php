<?php

namespace App\Form;

use App\Entity\ArticleAvance;
use DateTime;
use Doctrine\DBAL\Types\DateTimeType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType as TypeDateTimeType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Date;

class ArticleAvanceType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('titre', null,array('attr'=>array('class'=>'form-control')))
            ->add('categorie', null,array('attr'=>array('class'=>'form-control')))
            ->add('auteur', null,array('attr'=>array('class'=>'form-control')))
            ->add('description', null,array('attr'=>array('class'=>'form-control')))
            ->add('img', null,array('attr'=>array('class'=>'form-control')))
            ->add('dateCreation', DateType::class,array('attr'=>array('class'=>'form-control')))
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => ArticleAvance::class,
        ]);
    }
}
