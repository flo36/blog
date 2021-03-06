

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DemandeAmis;
import DAO.Post;
import DAO.User;

/**
 * Servlet implementation class Actualite
 */
@WebServlet("/Actualite")
public class Actualite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Actualite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();
		session.getAttribute("pseudo");
		session.getAttribute("id");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Actualite.jsp").forward(request, response);
	
		
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
		
		String titre = request.getParameter("titre");
		String texte = request.getParameter("texte");

			Post postAjout = new Post(idUser,titre,texte);
			postAjout.addPost();
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/Actualite.jsp").forward(request, response);
		
		//doGet(request, response);
	}

}
