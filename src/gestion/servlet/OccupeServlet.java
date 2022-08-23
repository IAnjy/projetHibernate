package gestion.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ListOcc;
import bean.Occuper;
import bean.Prof;
import bean.Salle;
import gestion.dao.OccuperDAO;
import gestion.dao.ProfDAO;
import gestion.dao.SalleDAO;

/**
 * Servlet implementation class OccupeServlet
 */
@WebServlet("/OccupeServlet")
public class OccupeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OccupeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OccuperDAO occupDAO = new OccuperDAO();
		List<ListOcc> listOccuper = occupDAO.getAllOccuper() ;
		
		request.setAttribute("listOccuper", listOccuper);
		
		ProfDAO profDAO = new ProfDAO();
		List<Prof> profs = profDAO.getAllProfs() ;
		
		request.setAttribute("Profs", profs);
		
		SalleDAO salleDAO = new SalleDAO();
		List<Salle> salles = salleDAO.getAllSalle() ;
		
		request.setAttribute("Salles", salles);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/app/occuper.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OccuperDAO occupDAO = new OccuperDAO();
		
		String path = request.getServletPath();
		if(path.equals("/addOccuper")) {
			
			String codeprof = request.getParameter("codeprof");
			String codesal = request.getParameter("codesal");
			String dateTemp = request.getParameter("date");
			
			System.out.println(dateTemp);
			
			Date date = null;
			try {
				date = new SimpleDateFormat("yyyy-MM-dd").parse(dateTemp);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if (!codeprof.equals("Sélectionner un professeur") || !codesal.equals("Sélectionner une salle")) {
				Occuper occuper = new Occuper(Long.parseLong(codeprof), Long.parseLong(codesal), date);
				
				occupDAO.addOccuper(occuper);
			}
			request.setAttribute("listOccuper", occupDAO.getAllOccuper());
			
			
		}
		
		if(path.equals("/editOccuper")) {
			String modifIdOcc = request.getParameter("modifIdOcc");
			String dateTemp = request.getParameter("date");
			
			Date date = null;
			try {
				date = new SimpleDateFormat("yyyy-MM-dd").parse(dateTemp);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if (!modifIdOcc.equals("") || date == null) {
				Occuper o = occupDAO.getOccuperbyId(Long.parseLong(modifIdOcc));
				o.setDate(date);
				
				occupDAO.editOccuper(o);
			}
			request.setAttribute("listOccuper", occupDAO.getAllOccuper());
		}
		
		if(path.equals("/deleteOccuper")) {
			String idOcc = request.getParameter("IdOccup");
			if (!idOcc.equals("") ) {
				occupDAO.deleteOccuper(Long.parseLong(idOcc));
			}
			request.setAttribute("listOccuper", occupDAO.getAllOccuper());
		}
		
		

		
		this.getServletContext().getRequestDispatcher("/WEB-INF/app/occuper.jsp").forward(request, response);
	}

}
