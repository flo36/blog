

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class postSpec
 */
@WebServlet("/postSpec")
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
		
		
		System.out.println("recup du parametre dans postSpec : " + request.getParameter("id"));
				if (request.getParameter("id")!=null) // On a le nom et le prénom
				{
					this.getServletContext().getRequestDispatcher("/WEB-INF/PostSpec.jsp").forward(request, response);
				}
				else // Il manque des paramètres, on avertit le visiteur
				{
					System.out.println("ce n'est pas bien de bidouiller les adresses ou sinon fallait choisir un endroit ou y avait un post");
					this.getServletContext().getRequestDispatcher("/WEB-INF/Actualite.jsp").forward(request, response);
				}
				
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
