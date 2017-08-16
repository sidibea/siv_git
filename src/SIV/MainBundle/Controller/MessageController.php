<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 11/08/2017
 * Time: 04:01
 */

namespace SIV\MainBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MessageController extends Controller
{
    public function indexAction(){

        $em = $this->getDoctrine()->getManager();
        $user = $this->getUser();

        $inbox = $em->getRepository('SIVMainBundle:Messages')->inbox($user->getId());

        return $this->render('SIVMainBundle:Messages:received.html.twig', [
            'inbox' => $inbox
        ]);
    }

    public function composeAction(){

        return $this->render('SIVMainBundle:Messages:compose.html.twig');
    }

}