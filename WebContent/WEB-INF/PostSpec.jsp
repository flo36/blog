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

	<header>
	<nav>
	        <div class="d-flex justify-content-between">
	            <div class="logo"><img src="./images/logo_orange.jpg" alt="logo" width="30%" ></div>
	            <button name="post" onclick="window.location.href='./Actualite';" height="5em">Les Posts</button>
	            <button name="amis" onclick="window.location.href='./LesAmis';">Amis</button>
	            <button name="deconnexion" onclick="window.location.href='./Connexion';">Deconnexion</button>
	        </div>
	</nav>
	</header>

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
		
		<% 
		Commentaire tempo = new Commentaire(0,0,null);		
		ArrayList<Commentaire> com = tempo.commentaireDuPost(idPost);
		
		for(int i=0; i<com.size();i++)
		{
			System.out.println("ici : " +u.nomPersonne(com.get(i).getIdUser()));
			System.out.println("et la : " +com.get(i).getTexte());
			String nom = u.nomPersonne(com.get(i).getIdUser());
			String texte = com.get(i).getTexte();
			String nom2 = "";
			String texte2 = "";
		%>
		
		<div class="deuxCommentaires">
				
				<div id="commentaire"><span id="nomAuteur"><%= nom  %><br><%= texte %></span></div>
				<%
					if(i+1<com.size())
					{
						nom2 = u.nomPersonne(com.get(i+1).getIdUser());
					    texte2 = com.get(i+1).getTexte();
						i+=1;
					}
				%>
				<div id="commentaire"><span id="nomAuteur"><%= nom2 %><br><%= texte2 %> </span></div>

		</div>
		<%
		}
		%>

	 </section>

	</section>

</body>
</html>