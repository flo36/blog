

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
		String message = "";
		String contextpath = this.getServletContext().getContextPath();
		String email = request.getParameter("email");
		String pseudo = request.getParameter("pseudo");
		String mdp = request.getParameter("password");
		String repeatMdp = request.getParameter("repeat");
		
		/*
		if(pseudo==null); //pseudo.isEmpty ne fait pas ce qu'il faut non plus
		{
			message="Vous n'avez pas saisie de pseudo";
            request.setAttribute("error", message);
            this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
		}
		if(email.isEmpty() || !email.contains("@"));
		{
			message="Vous n'avez pas saisie d'adresse email valide";
            request.setAttribute("error", message);
            this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
		}
		if(mdp.isEmpty() || mdp.length()<3);
		{
			message="Vous n'avez pas saisie de mot de passe ou il n'est pas assez long";
            request.setAttribute("error", message);
            this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
		}
		*/
		if(!repeatMdp.equals(mdp))
		{ // les mdp ne sont pas identiques, retour au formulaire
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
					//this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
					response.sendRedirect(contextpath+"/Connexion"); 
				}
				else
				{
					// connexion pas bonne, on retourne au formulaire
					this.getServletContext().getRequestDispatcher("/WEB-INF/Inscription.jsp").forward(request, response);
				}
		
	}

}
