<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "javax.servlet.http.HttpSession"  %>
    <%@ page import = "DAO.*"  %>
    <%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fil d'actualité</title>
<link rel="stylesheet" href="././fichier_css/actualite.css" />
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
		
		//recuperation du fil d'actualite
		User u = new User(idUser, null, pseudoUser, null);
		ArrayList<Post> filActualite = u.filActualite();
		
		System.out.println("id : " + idUser);
		
		for(Post p : filActualite)
		{
			System.out.println("titre : " + p.getTitre());
		}
		
		for(int i=0;i<filActualite.size();i++)
		{
			String titre= "";
			String texte=""; 
			
		%>


	<section id = "ligne">
		<%
		if(filActualite.get(i)!= null)
		{
			System.out.println("i : " + i + " " + filActualite.get(i));
			titre = filActualite.get(i).getTitre();
			texte = filActualite.get(i).getTexte();
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(filActualite.get(i+1)!= null)
		{
			System.out.println("i : " + i+1 + " " + filActualite.get(i+1));
			titre = filActualite.get(i+1).getTitre();
			texte = filActualite.get(i+1).getTexte();
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(filActualite.get(i+2)!= null)
		{
			titre = filActualite.get(i+2).getTitre();
			texte = filActualite.get(i+2).getTexte();
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite"> <div id="post"> <h4><%= titre  %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(filActualite.get(i+3)!= null)
		{
			System.out.println("i : " + i+3 + " " + filActualite.get(i+3));
			titre = filActualite.get(i+3).getTitre();
			texte = filActualite.get(i+3).getTexte();
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		
	</section>

		<%
		
		i+=3;
		}
		
		%>
	
</body>

</html>