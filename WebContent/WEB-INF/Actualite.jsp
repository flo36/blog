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
		
		int idTour = 0;
		String titre = "";
		String texte = "";
		String titre1 = "";
		String texte1 = "";
		String titre2 = "";
		String texte2 = "";
		String titre3 = "";
		String texte3 = "";
		
		for(int i=0;i<filActualite.size(); i++)
		{
			
			
		%>


	<section id = "ligne">
		<%
		if(i%4==0)
		{
			 titre= filActualite.get(i).getTitre();
			 texte= filActualite.get(i).getTexte(); 
			i+=1;
		}
		%>
		<div id="actualite" onclick="window.location.href='./PostSpec?idPost=<%=idTour%>&idPlace=0';"> <div id="post"> <h4><% out.println(titre); %> </h4><p> <% out.println(texte);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(i%4==1)
		{
			 titre1= filActualite.get(i).getTitre();
			 texte1= filActualite.get(i).getTexte(); 
			i+=1;
		}
		%>
		<div id="actualite" onclick="window.location.href='./PostSpec?idPost=<%=idTour%>&idPlace=1';"><div id="post"> <h4><% out.println(titre1); %> </h4><p> <% out.println(texte1);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(i%4==2)
		{
			 titre2= filActualite.get(i).getTitre();
			 texte2= filActualite.get(i).getTexte(); 
			i+=1;
		}
		%>
		<div id="actualite" onclick="window.location.href='./PostSpec?idPost=<%=idTour%>&idPlace=2';"><div id="post"> <h4><% out.println(titre2); %> </h4><p> <% out.println(texte2);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		<%
		if(i%4==3)
		{
			 titre3= filActualite.get(i).getTitre();
			 texte3= filActualite.get(i).getTexte(); 
		}
		%>
		<div id="actualite" onclick="window.location.href='./PostSpec?idPost=<%=idTour%>&idPlace=3';"> <div id="post"> <h4><% out.println(titre3); %> </h4><p> <% out.println(texte3);%> </p></div><div id="commentaire"> <% out.println("Commenter ou voir les commentaires");  %>  </div> </div>
		
	</section>

		<%
		idTour+=1;
		}
		
		%>
	
</body>

</html>