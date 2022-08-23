package gestion.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Prof;
import bean.Salle;
import gestion.dao.ProfDAO;
import gestion.dao.SalleDAO;

/**
 * Servlet implementation class SalleServlet
 */
@WebServlet("/SalleServlet")
public class SalleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SalleDAO salleDAO = new SalleDAO();
		List<Salle> salles = salleDAO.getAllSalle() ;
		
		request.setAttribute("Salles", salles);

		this.getServletContext().getRequestDispatcher("/WEB-INF/app/salle.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SalleDAO salleDAO = new SalleDAO();
		
		String path = request.getServletPath();
		if(path.equals("/addSalle")) {
			String design = request.getParameter("design");
			
			//System.out.println(nom + prenom + grade);
			if (!design.equals("") ) {
				Salle salle = new Salle(design);
				salleDAO.addSalle(salle);
			}

			request.setAttribute("Salles", salleDAO.getAllSalle());
		}

		if(path.equals("/editSalle")) {
			String codesal = request.getParameter("codesal");
			String designation = request.getParameter("designation");
			
			if (!codesal.equals("") || !designation.equals("")) {
				Salle salle = salleDAO.getSallebyId(Long.parseLong(codesal));
				salle.setDesignation(designation);
				
				salleDAO.editSalle(salle); 
			}

			request.setAttribute("Salles", salleDAO.getAllSalle());
		}
		
		if(path.equals("/deleteSalle")) {
			String codesal = request.getParameter("codesal");
			if (!codesal.equals("") ) {
				salleDAO.deleteSalle(Long.parseLong(codesal));
			}
			request.setAttribute("Salles", salleDAO.getAllSalle());
		}
		
	
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/app/salle.jsp").forward(request, response);
	}

}
