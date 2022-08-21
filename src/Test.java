import java.util.List;

import bean.Prof;
import gestion.dao.ProfDAO;

public class Test {

	public static void  main(String[] args) {
		
		ProfDAO profDAO = new ProfDAO();
	
		/*Prof p = new Prof("test", "test", "Professeur Titulaire");
		
		profDAO.addProf(p);
		
		
		List<Prof> profs = profDAO.getAllProfs() ;
		
		for (Prof prof : profs) {
			
			System.out.println(prof.getPrenom());
		}*/
		
		/*Prof p = profDAO.getProfbyId(1L);
		System.out.println(p.getGrade());*/
		
		
		/*profDAO.deleteProf(1L);*/
		
		/*
		 * alaina by id aloha ny prof zay vao updatetena
		 * Prof p = new Prof("test", "testisa", "Professeur Titulaire");
		profDAO.editProf(p);*/

	}

}
