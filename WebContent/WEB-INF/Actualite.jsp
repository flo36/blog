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
		
		System.out.println("id : " + idUser);
		System.out.println("pseudo : " + pseudoUser);
		
		//recuperation du fil d'actualite
		User u = new User(idUser, null, pseudoUser, null);
		ArrayList<Post> filActualite = u.filActualite();
		
		for(Post p : filActualite)
		{
			System.out.println("titre : " + p.getTitre());
		}
		
		for(int i=0;i<filActualite.size();i++)
		{
			String titre= "";
			String texte=""; 
			int id=0;
			
		%>


	<section id = "ligne">
		<%
		if(i<filActualite.size() && filActualite.get(i)!= null )
		{
			id = filActualite.get(i).getId();
			System.out.println("l'id dans le for apres modif : " + id);
			titre = filActualite.get(i).getTitre();
			texte = filActualite.get(i).getTexte();
			i+=1;
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite" onclick="window.location.href='./postSpec?idPost=' +id+';'"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(i<filActualite.size() && filActualite.get(i)!= null )
		{
			titre = filActualite.get(i).getTitre();
			texte = filActualite.get(i).getTexte();
			i+=1;
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite" onclick="window.location.href='./PostSpec?idPost=' +id+';'"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(i<filActualite.size() && filActualite.get(i)!= null )
		{
			titre = filActualite.get(i).getTitre();
			texte = filActualite.get(i).getTexte();
			i+=1;
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite" onclick="window.location.href='./PostSpec?idPost=' +id+';'"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(i<filActualite.size() && filActualite.get(i)!= null )
		{
			titre = filActualite.get(i).getTitre();
			texte = filActualite.get(i).getTexte();
		}else {titre = ""; texte = "";}
		%>
		<div id="actualite" onclick="window.location.href='./postSpec?idPost=' +id+';'"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		
	</section>

		<%
		
		}
		
		%>
	
</body>

</html>