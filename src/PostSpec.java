

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Post;
import DAO.User;

/**
 * Servlet implementation class postSpec
 */
@WebServlet("/PostSpec")
public class PostSpec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostSpec() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			System.out.println(request.getParameter("idPost"));
			System.out.println(request.getParameter("idPlace"));
		
				if (request.getParameter("idPost")!=null && request.getParameter("idPlace")!=null); // On a le nom et le prénom
				{
					int idPost = Integer.parseInt(request.getParameter("idPost"));
					int idPlace = Integer.parseInt(request.getParameter("idPlace"));
					int placeDuPost = idPost*4+idPlace;
					//recuperation de la session
					
					HttpSession session = request.getSession();
					int idUser = (int) session.getAttribute("id");
					String pseudo = (String) session.getAttribute("pseudo");
					User u = new User(idUser, null, pseudo, null);
					ArrayList<Post> filActualite = u.filActualite();
					
					if(placeDuPost<filActualite.size())
					{
						session.setAttribute("idPost", filActualite.get(placeDuPost).getId());
						this.getServletContext().getRequestDispatcher("/WEB-INF/PostSpec.jsp").forward(request, response);
					}else
					{
						System.out.println("faut pas jouer avec mes nerfs");
						this.getServletContext().getRequestDispatcher("/WEB-INF/Actualite.jsp").forward(request, response);
					}
					
					
				} 
						
				
	}		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("idPost"));
		System.out.println(request.getParameter("idPlace"));
	
			if (request.getParameter("idPost")!=null && request.getParameter("idPlace")!=null) // On a le nom et le prénom
			{
				int idPost = Integer.parseInt(request.getParameter("idPost"));
				int idPlace = Integer.parseInt(request.getParameter("idPlace"));
				int placeDuPost = idPost*4+idPlace;
				//recuperation de la session
				
				HttpSession session = request.getSession();
				int idUser = (int) session.getAttribute("id");
				String pseudo = (String) session.getAttribute("pseudo");
				User u = new User(idUser, null, pseudo, null);
				ArrayList<Post> filActualite = u.filActualite();
				
				if(placeDuPost<filActualite.size())
				{
					session.setAttribute("idPost", filActualite.get(placeDuPost).getId());
					this.getServletContext().getRequestDispatcher("/WEB-INF/PostSpec.jsp").forward(request, response);
				}else
				{
					System.out.println("faut pas jouer avec mes nerfs");
					this.getServletContext().getRequestDispatcher("/WEB-INF/Actualite.jsp").forward(request, response);
				}
				
				
			}else
				System.out.println("ca me saoule");
			this.getServletContext().getRequestDispatcher("/WEB-INF/Actualite.jsp").forward(request, response);
	}

}


