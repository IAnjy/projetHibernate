package gestion.dao;

import java.util.List;

import org.hibernate.Session;

import bean.Prof;
import gestion.util.HibernateUtil;

public class ProfDAO {
	
	@SuppressWarnings("unchecked")
	public List<Prof> getAllProfs(){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		return session.createQuery("from Prof").list();
	}
	
	public Prof getProfbyId(Long idP){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Prof p = (Prof) session.load(Prof.class, idP);
		return p;
	}
	

	public void addProf(Prof p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
	}
	
	
	public void editProf(Prof p){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.saveOrUpdate(p);
		session.getTransaction().commit();
	}
	
	
	public void deleteProf(Long idp){
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Prof p = (Prof) session.get(Prof.class, idp);
		session.delete(p);
		session.getTransaction().commit();
	}
	
	
}
