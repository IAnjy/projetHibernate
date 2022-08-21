package gestion.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Prof;
import gestion.dao.ProfDAO;

/**
 * Servlet implementation class ProfServlet
 */
@WebServlet(description = "servlet professeur", urlPatterns = { "/ProfServlet" })
public class ProfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProfDAO profDAO = new ProfDAO();
		List<Prof> profs = profDAO.getAllProfs() ;
		
		request.setAttribute("Profs", profs);
		
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/app/prof.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProfDAO profDAO = new ProfDAO();
		
		String path = request.getServletPath();
		if(path.equals("/addProf")) {
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String grade = request.getParameter("grade");
			
			//System.out.println(nom + prenom + grade);
			if (!nom.equals("") || !prenom.equals("") || !grade.equals("") ) {
				Prof prof = new Prof(nom, prenom, grade);
				profDAO.addProf(prof);
			}
		}
		
		if(path.equals("/editProf")) {
			String codeprof = request.getParameter("modifCodeprof");
			String nom = request.getParameter("modifNom");
			String prenom = request.getParameter("modifPrenom");
			String grade = request.getParameter("modifGrade");
			if (!codeprof.equals("") || !nom.equals("") || !prenom.equals("") || !grade.equals("") ) {
				Prof prof = profDAO.getProfbyId(Long.parseLong(codeprof));
				prof.setNom(nom);
				prof.setPrenom(prenom);
				prof.setGrade(grade);
				
				profDAO.editProf(prof);
			}
		}
		
		if(path.equals("/deleteProf")) {
			String codeprof = request.getParameter("deleteCodeprof");
			if (!codeprof.equals("") ) {
				profDAO.deleteProf(Long.parseLong(codeprof));
			}
		}
		
		
		request.setAttribute("Profs", profDAO.getAllProfs());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/app/prof.jsp").forward(request, response);
	}

}
