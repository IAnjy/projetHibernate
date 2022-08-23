package gestion.dao;

import java.util.List;

import org.hibernate.Session;

import bean.Prof;
import bean.Salle;
import gestion.util.HibernateUtil;

public class SalleDAO {

	@SuppressWarnings("unchecked")
	public List<Salle> getAllSalle(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from Salle").list();
	}
	
	public Salle getSallebyId(Long idSalle){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Salle salle = (Salle) session.load(Salle.class, idSalle);
		return salle;
	}
	

	public void addSalle(Salle salle){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(salle);
		session.getTransaction().commit();
	}
	
	
	public void editSalle(Salle s){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.saveOrUpdate(s);
		session.getTransaction().commit();
	}
	
	
	public void deleteSalle(Long idSalle){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Salle salle = (Salle) session.get(Salle.class, idSalle);
		session.delete(salle);
		session.getTransaction().commit();
	}
	
	
}
