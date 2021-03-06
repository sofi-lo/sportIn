<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        // champ du formulaire
            ->add('email')
            // ->add('roles')
            // ->add('password')
            ->add('pseudo')
            ->add('xpPoints')
            ->add('level')
            ->add('nbEvents')
            ->add('rgpd')
            ->add('createdAt')
            ->add('isVerified')
            // ->add('birthDate')
            ->add('description')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
