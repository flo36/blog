

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DemandeAmis;
import DAO.User;

/**
 * Servlet implementation class LesAmis
 */
@WebServlet("/LesAmis")
public class LesAmis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LesAmis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/LesAmis.jsp").forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String contextpath = this.getServletContext().getContextPath();
		HttpSession session = request.getSession();
		
		int idUser = (int) (session.getAttribute("id"));
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		User u = new User(idUser,email,null,mdp);
		
		String acc = request.getParameter("refuser");
		System.out.println(request.getParameter("idDemandeurAmis"));
		
		if(acc.equals("Accepter"))
		{
			int idDemandeAmis = Integer.parseInt(request.getParameter("idDemande"));
			DemandeAmis tempo = new DemandeAmis(0,0);
			DemandeAmis bon = tempo.recupSpecifiqueDemande2(idDemandeAmis);
			System.out.println(bon.toString());
			tempo.accepteDemande(bon.getDemandeur(), bon.getReceveur());
			
		}
		else if(acc.equals("Refuser"))
		{
			int idDemandeAmis = Integer.parseInt(request.getParameter("idDemandeurAmis"));
			DemandeAmis tempo = new DemandeAmis(0,0);
			DemandeAmis bon = tempo.recupSpecifiqueDemande2(idDemandeAmis);
			
			tempo.refuseDemande(bon.getDemandeur(), bon.getReceveur());
		}
		else if(acc.equals("Rechercher"))
		{
			String pseudoRecherche = request.getParameter("pseudo");
			
			int idDuMec = u.rechercheByPseudo(pseudoRecherche);
			if(idDuMec != 0)
			{
				DemandeAmis demande = new DemandeAmis(u.getId(),idDuMec);
				demande.addDemande();
			}
			else
				{
					System.out.println("il n'existe personne avec ce pseudo");
				}
			
			
			
		}
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/LesAmis.jsp").forward(request, response);
		//doGet(request, response);
	}

}
