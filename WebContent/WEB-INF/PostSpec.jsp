<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import = "javax.servlet.http.HttpSession"  %>
    <%@ page import = "DAO.*"  %>
    <%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Commentaire</title>
<link rel="stylesheet" href="./fichier_css/postSpec.css" />
</head>
<body>

	<nav>
		<button name="compte">Param compte</button>
		
		<button name="amis">Vos amis</button>
	</nav>

	<% // recuperation du fil d'actualite
		
		//recuperation de la session
		int idUser = (int) session.getAttribute("id");
		String pseudoUser = (String) session.getAttribute("pseudo");
		
		System.out.println("id : " + idUser);
		System.out.println("pseudo : " + pseudoUser);
		
		//recuperation du fil d'actualite
		User u = new User(idUser, null, pseudoUser, null);
		
		int idPost = (int) session.getAttribute("idPost");
		Post particularPost = u.postParticulier(idPost);
		
		%>

	<section id = "ligne">
		
		<section id="gauche">

				<div id = "poeme"><div id = "titre"><% out.println(particularPost.getTitre());%></div><div id= "texte"><% out.println(particularPost.getTexte());%></div></div>
				
				<form action="" method="POST">

					 <label for="msg">Message :</label>
        			
        			 <textarea id="msg" name="message" ></textarea>
					
        			 <button type="submit">Envoyer le message</button>

				</form>


		</section>


	<section id="droit">

		<div class="deuxCommentaires">
				
				<div id="commentaire"><span id="nomAuteur"></span></div>
				<div id="commentaire"><span id="nomAuteur"></span></div>

		</div>

	 </section>

	</section>

</body>
</html>