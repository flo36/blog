

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		

		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		User u = new User(email,null,mdp);
		
		String acc = request.getParameter("refuser");
		int idDemandeAmis = Integer.parseInt(request.getParameter("idDemandeAmis"));
		if(acc.contains("Accepter"))
		{
			DemandeAmis tempo = new DemandeAmis(0,0);
			DemandeAmis bon = tempo.recupSpecifiqueDemande2(idDemandeAmis);
			
			tempo.accepteDemande(bon.getDemandeur(), bon.getReceveur());
		}
		else
		{
			DemandeAmis tempo = new DemandeAmis(0,0);
			DemandeAmis bon = tempo.recupSpecifiqueDemande2(idDemandeAmis);
			
			tempo.refuseDemande(bon.getDemandeur(), bon.getReceveur());
		}
		
		doGet(request, response);
	}

}
