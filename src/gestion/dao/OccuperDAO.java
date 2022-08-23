package gestion.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.hibernate.Session;

import bean.ListOcc;
import bean.Occuper;
import bean.Prof;
import bean.Salle;
import gestion.util.HibernateUtil;

public class OccuperDAO {
	
	@SuppressWarnings("unchecked")
	public List<ListOcc> getAllOccuper(){
		List<ListOcc> ListOccuper = new ArrayList<ListOcc>();
		
		SalleDAO salleDAO = new SalleDAO();
		ProfDAO profDAO = new ProfDAO();
		
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Occuper> listOccuper = session.createQuery("from Occuper").list();
		
		for (Occuper occuper : listOccuper) {
			Prof prof = profDAO.getProfbyId(occuper.getCodeprof());
			String fullname = prof.getNom() +" "+ prof.getPrenom();
			
			Salle salle = salleDAO.getSallebyId(occuper.getCodesal());
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMMM yyyy");
			
			ListOcc oneOccup = new ListOcc();
			oneOccup.setId(occuper.getId());
			oneOccup.setNomProf(fullname);
			oneOccup.setDesignSalle(salle.getDesignation());
			oneOccup.setDate(simpleDateFormat.format(occuper.getDate()));
			
			ListOccuper.add(oneOccup);
			
		}
		return ListOccuper;
	}
	
	public Occuper getOccuperbyId(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Occuper p = (Occuper) session.load(Occuper.class, idP);
		return p;
	}
	
	public void addOccuper(Occuper o){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(o);
		session.getTransaction().commit();
	}
	
	public void editOccuper(Occuper o){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.saveOrUpdate(o);
		session.getTransaction().commit();
	}
	
	
	public void deleteOccuper(Long idOcc){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Occuper p = (Occuper) session.get(Occuper.class, idOcc);
		session.delete(p);
		session.getTransaction().commit();
	}

}
