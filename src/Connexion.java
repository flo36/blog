

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.User;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		String mdp = request.getParameter("password");
		User u = new User(email,null,mdp);
				
				if(u.identification())
				{
					// connexion bonne, on attribue une session
					HttpSession session = request.getSession();
					session.setAttribute("id", u.getId());
					session.setAttribute("pseudo", u.getPseudo());
					
					// redirection vers la page des posts
					//this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
					
				}
				else
				{
					// connexion pas bonne, on retourne au formulaire
					this.getServletContext().getRequestDispatcher("/WEB-INF/Connexion.jsp").forward(request, response);
				}
		
		
	}

}
