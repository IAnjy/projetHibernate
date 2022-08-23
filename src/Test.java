import java.util.List;

import bean.ListOcc;
import bean.Occuper;
import bean.Prof;
import gestion.dao.OccuperDAO;
import gestion.dao.ProfDAO;

public class Test {

	public static void  main(String[] args) {
		
		OccuperDAO occDAO = new OccuperDAO();
		ProfDAO profDAO = new ProfDAO();
	
		/*Prof p = new Prof("test", "test", "Professeur Titulaire");
		
		profDAO.addProf(p);*/
		occDAO.getAllOccuper() ;
	/*List<Occuper> lists = occDAO.getAllOccuper() ;
		
		System.out.println(lists);
		
		
		List<Prof> profs = profDAO.getAllProfs() ;
		
		System.out.println(profs);
		*/
		/*Prof p = profDAO.getProfbyId(1L);
		System.out.println(p.getGrade());*/
		
		
		/*profDAO.deleteProf(1L);*/
		
		/*
		 * alaina by id aloha ny prof zay vao updatetena
		 * Prof p = new Prof("test", "testisa", "Professeur Titulaire");
		profDAO.editProf(p);*/

	}

}
