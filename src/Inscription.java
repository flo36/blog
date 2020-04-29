

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.User;


@WebServlet("/Inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public Inscription() {
        super();
        System.out.println("je suis dedans");
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("je suis dedans, doget inscription");
		this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
		
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String email = request.getParameter("email");
		System.out.println(email);
		String pseudo = request.getParameter("pseudo");
		System.out.println(pseudo);
		String mdp = request.getParameter("password");
		String repeatMdp = request.getParameter("repeat");
		System.out.println("mdp : " + mdp + "et repeat : " + repeatMdp);
		
		if(!repeatMdp.equals(mdp))
		{ // les mdp ne sont pas identiques, retour au formulaire
			System.out.println("probleme 1");
			this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
		}
		
		User u = new User(email,pseudo,mdp);
				
				if(u.addUser())
				{
					// connexion bonne, on attribue une session
					HttpSession session = request.getSession();
					session.setAttribute("id", u.getId());
					session.setAttribute("pseudo", u.getPseudo());
					
					// redirection vers la page des posts
					this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
					
				}
				else
				{
					// connexion pas bonne, on retourne au formulaire
					System.out.println("probleme 2");
					this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
				}
		
	}

}
