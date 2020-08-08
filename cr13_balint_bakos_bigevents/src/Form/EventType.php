<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', null, ['label' => 'Event\'s name: *'])
            ->add('date', null, ['label' => 'Event\'s date: *'])
            ->add('description', TextareaType::class, ['label' => 'Event\'s description: *'])
            ->add('image', null, ['label' => 'Event\'s image (url): *'])
            ->add('capacity', null, ['label' => 'Event\'s capacity: *'])
            ->add('email', null, ['label' => 'Event\'s email: *'])
            ->add('phone', null, ['label' => 'Event\'s phone: *'])
            ->add('address', null, ['label' => 'Event\'s address (place, stree, city, zip): *'])
            ->add('url', TextType::class, ['label' => 'Event\'s webpage: *'])
            ->add('type', ChoiceType::class, [
                'label' => 'Event\'s type: *',
                'choices' => ['Music' => 'music', 'Movie' => 'movie', 'Sport' => 'sport', 'Food' => 'food', 'Technology' => 'technology'],
            ])
            ->add('save', SubmitType::class, ['label' => 'Submit'])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
