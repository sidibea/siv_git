<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 30/07/2017
 * Time: 19:45
 */

namespace SIV\MainBundle\Controller;


use SIV\MainBundle\Entity\Visites;
use SIV\MainBundle\Form\VisitesType;
use SIV\UsersBundle\Entity\Users;
use SIV\UsersBundle\Form\UsersType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class MainController extends Controller
{
    public function indexAction(Request $request){

        $em = $this->getDoctrine()->getManager();

        $visites = new Visites();
        $form = $this->createForm(new VisitesType(), $visites);

        if ($form->handleRequest($request)->isValid()) {

            $visites->setDateSortie("null");
            $visites->setHeureSortie("null");

            $em->persist($visites);
            $em->flush();

            $request->getSession()->getFlashBag()->add('notice', 'La visite a été enregistré.');

            return $this->redirect($this->generateUrl('siv_main_visiteurs_present'));

        }

        return $this->render('SIVMainBundle::index.html.twig', [
            'form' => $form->createView()
        ]);
    }


    public function VpresentAction(){

        $em = $this->getDoctrine()->getManager();

        $vpresents = $em->getRepository('SIVMainBundle:Visites')->getPresent();

        return $this->render('SIVMainBundle:Visiteurs:vpresent.html.twig', [
            'vpresents' => $vpresents
        ]);
    }

    public function historiqueAction(){

        $em = $this->getDoctrine()->getManager();

        $visiteurs = $em->getRepository('SIVMainBundle:Visites')->findAll();

        return $this->render('SIVMainBundle:Visiteurs:historique.html.twig', [
            'visiteurs' => $visiteurs
        ]);
    }

    public function vEditAction($id, Request $request){

        $em = $this->getDoctrine()->getManager();
        $visites = $em->getRepository('SIVMainBundle:Visites')->find($id);

        $form = $this->createForm(new VisitesType(), $visites);

        if ($form->handleRequest($request)->isValid()) {


            $em->flush();

            $request->getSession()->getFlashBag()->add('notice', 'La visite a été enregistré.');

            return $this->redirect($this->generateUrl('siv_main_visiteurs_present'));

        }

        return $this->render('SIVMainBundle:Visiteurs:edit.html.twig', [
            'form' => $form->createView()
        ]);
    }

    public function vSortieAction($id, Request $request){
        $em = $this->getDoctrine()->getManager();
        $visites = $em->getRepository('SIVMainBundle:Visites')->find($id);

        $visites->setDateSortie(date('d/m/Y'));
        $visites->setHeureSortie(date('h:i'));

        $em->flush();
        return $this->redirect($this->generateUrl('siv_main_visiteurs_historique'));

    }

    public function employeeAction(Request $request){

        $em = $this->getDoctrine()->getManager();
        $employee = $em->getRepository('SIVUsersBundle:Users')->findAll();

        return $this->render('SIVMainBundle:Employee:list.html.twig', [
            'employee' => $employee
        ]);

    }

    public function empAddAction(Request $request){

        $em = $this->getDoctrine()->getManager();
        $employee = new Users();
        $form = $this->createForm(new UsersType(), $employee);

        if ($form->handleRequest($request)->isValid()) {

            $fonction = $form->get('fonction')->getData();
            if(in_array($fonction, array(
                'Commercial' => 'Commercial',
                'Comptable' => 'Comptable',
                'Consultant' => 'Entretien',
                'Directeur Administratif' => 'Directeur Administratif',
                'Directeur Commercial' => 'Directeur Commercial',
                'Directeur RH' => 'Directeur RH',
                'Employé'=> 'Employé',
                'Secrétaire' => 'Secrétaire',
                'Stagiaire' => 'Stagiaire',
                'Technicien' => 'Technicien'
            )))
                $employee->setRoles(['ROLE_EMPLOYEE']);
            elseif ($fonction == 'Sécurité')
                $employee->setRoles(['ROLE_SECURITY']);
            elseif ($fonction == 'DG')
                $employee->setRoles(['ROLE_ADMIN', 'ROLE_SUPER_ADMIN']);
            elseif ($fonction == 'Informaticien')
                $employee->setRoles(['ROLE_ADMIN']);

            $employee->setEnabled(true);
            $em->persist($employee);
            $em->flush();

            $request->getSession()->getFlashBag()->add('notice', 'La visite a été enregistré.');

            return $this->redirect($this->generateUrl('siv_main_visiteurs_employee'));

        }

        return $this->render('SIVMainBundle:Employee:add.html.twig', [
            'form' => $form->createView()
        ]);
    }



}