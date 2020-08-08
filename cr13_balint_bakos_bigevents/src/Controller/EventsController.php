<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class EventsController extends AbstractController
{
    /**
     * @Route("/", name="home", name="home")
     */
    public function index()
    {
        $em = $this->getDoctrine()->getManager();
        $events = $em->getRepository(Event::class)->findAll();

        return $this->render('events/index.html.twig', ['events' => $events]);
    }

    /**
     * @Route("/about", name="about", name="about")
     */
    public function about()
    {
        return $this->render('events/about.html.twig');
    }

    /**
     * @Route("show/{id}", name="show_event")
     *
     * @param mixed $id
     */
    public function showEvent($id)
    {
        $em = $this->getDoctrine()->getManager();
        $event = $em->getRepository(Event::class)->find($id);

        return $this->render('events/show.html.twig', ['event' => $event]);
    }

    /**
     * @Route("/filter/{value}", name="filter")
     *
     * @param mixed $value
     */
    public function filter($value)
    {
        $em = $this->getDoctrine()->getManager();

        if ('all' == $value) {
            $events = $em->getRepository(Event::class)->findAll();

            return $this->json(['events' => $events]);
        }

        $events = $em->getRepository(Event::class)->findBy(['type' => $value]);

        return $this->json(['events' => $events]);
    }

    /**
     * @Route("/add", name="add_event")
     */
    public function addEvent(Request $request)
    {
        $form = $this->createForm(EventType::class);
        $form->handleRequest($request);

        try {
            if ($form->isSubmitted() && $form->isValid()) {
                $event = $form->getData();

                $em = $this->getDoctrine()->getManager();

                $this->addFlash(
                    'notice',
                    'Event Added Successfully'
                );

                $em->persist($event);
                $em->flush();

                return $this->redirectToRoute('home');
            }
        } catch (\Exception $Exception) {
        }

        return $this->render('events/add.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("edit/{id}", name="edit_event")
     *
     * @param mixed $id
     */
    public function editEvent($id, Request $request)
    {
        $event = $this->getDoctrine()->getRepository(Event::class)->find($id);

        $form = $this->createForm(EventType::class);
        $form->setData($event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $updatedEvent = $form->getData();

            $em = $this->getDoctrine()->getManager();

            $this->addFlash(
                'notice',
                'Event Edited Successfully'
            );

            $em->persist($updatedEvent);
            $em->flush();

            return $this->redirectToRoute('home');
        }

        return $this->render('events/add.html.twig', ['form' => $form->createView(), 'id' => $id]);
    }

    /**
     * @Route("/delete/{id}")
     *
     * @param mixed $id
     */
    public function deleteEvent($id)
    {
        $em = $this->getDoctrine()->getManager();
        $todo = $em->getRepository(Event::class)->find($id);

        if (!$todo) {
            throw $this->createNotFoundException(
                'No record for the todo with the id: '.$id
            );
        }

        $this->addFlash(
            'notice',
            'Event Deleted Successfully'
        );

        $em->remove($todo);
        $em->flush();

        return $this->redirectToRoute('home');
    }
}
