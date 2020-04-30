<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "javax.servlet.http.HttpSession"  %>
    <%@ page import = "DAO.*"  %>
    <%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="././fichier_css/paramCompte.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>Compte</title>

</head>
<body>
	<header>
	
	        <nav class="d-flex justify-content-between">
	            <div class="logo"></div>
	            <button name="post" onclick="window.location.href='./Actualite';">Les Posts</button>
	            <h1 class="mt-5"> Votre Compte</h1>
	            <button name="amis" onclick="window.location.href='./LesAmis';">Amis</button>
	            <button name="deconnexion" onclick="window.location.href='./Connexion';">Deconnexion</button>
	        </nav>
	
	</header>



	<br>
	<br>

    <div class="d-flex justify-content-around mt-5">

        <div class="ml-5 mx-auto">
            <h2 class=" mb-4">Informations Personnelles</h2>
           
           <%
	           int idUser = (int) session.getAttribute("id");
           	   String email = (String) session.getAttribute("email");
	       	   String pseudoUser = (String) session.getAttribute("pseudo");
	       	   User u = new User(idUser,email,pseudoUser,null);
           %>
           
           <div>Email :<%= email %></div>
           <div>Pseudo :<%= pseudoUser %></div>
           
        </div>
        
          <div class="ml-5" id="droit">
            <h2 class=" mb-4">Vos Postes</h2>
           
            <%
            ArrayList<Post> liste = u.postUser();
            System.out.println(liste.size());
            if(liste!=null)
            {
            	String titre = "";
            	String texte = "";
            	for(Post p : liste)
            	{
            		titre = p.getTitre();
            		texte = p.getTexte();
            	
            
           %>
           
           <div>Titre :<br><%= titre %></div>
           <div>Texte :<br><%= texte %></div>
           <br>
           <%
            	}
            }
           %>
           
        </div>



    </div>

</body>
</html>