<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "javax.servlet.http.HttpSession"  %>
    <%@ page import = "DAO.*"  %>
    <%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="../fichier_css/styleQ.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>Contact</title>

</head>
<body>
	<header>
	        <div class="d-flex justify-content-between">
	            <div class="logo"></div>
	            <h1 class="mt-5"> Vos Amis</h1>
	            <div></div>
	        </div>
	</header>


	<div class="demandeAmis"> 
	
	<h2 class=" mb-4">Demandes d'amis Reçues</h2>
	
	<% 
	
	int idUser = (int) session.getAttribute("id");
	String pseudoUser = (String) session.getAttribute("pseudo");
	
	System.out.println("id : " + idUser);
	System.out.println("pseudo : " + pseudoUser);
	
	//recuperation du fil d'actualite
	User u = new User(idUser, null, pseudoUser, null);
	
	ArrayList<DemandeAmis> demandeRecues = u.getDemandeAmis();
	
	for(DemandeAmis d: demandeRecues)
	{
		
	%>
	
	<divid="presentationDemande"><%= d.toString() %></div>
	<form action="" method="post">
				<input type="hidden" value="<%= d.getDemandeur() %>" name = "idDemandeAmis"/>
                <input type="submit" value= "Accepter" name="refuser"/>
                <input type="submit" value="Refuser" name="refuser"/>
            </form>
	<%
	
	}
	
	%>
	
	</div>



    <div class="d-flex justify-content-around mt-5">

        <div class="ml-5 mx-auto">
            <h2 class=" mb-4">Nouveau contact</h2>
            <form action="" method="post">
                <label class="mr-1">Pseudo : </label>
                <input type="text" name="pseudo"><br>
                <input type="submit" value="Valider" name="valider">
            </form>
        </div>



        <div class="mx-auto">
            <h2 class=" mb-4">Mes amis</h2>
           <%
           
   		
   			System.out.println("id a la base : " + idUser);
   			System.out.println("pseudo : " + pseudoUser);
   		
   			//recuperation des amities
   			ArrayList<Amitie> amis = u.recupAmities();
   			String nomAmis = "";
   			System.out.println("la taille : " + amis.size());
   			for(Amitie a: amis)
   			{	
           		if(a.getIdUser1() == idUser)
           		{	System.out.println("ami user2 :" + a.getIdUser2());
           			nomAmis = u.nomPersonne(a.getIdUser2());
           		}
           		else
           			{System.out.println("ami user1	 :" + a.getIdUser1());
           			nomAmis = u.nomPersonne(a.getIdUser1());
           			}
           		
   			System.out.println("je suis l'ami : " + nomAmis);
           %>
            <div class="">
                <p><span><% out.println(nomAmis); %></span></p>
            </div>
           <% } %>
        </div>

    </div>

</body>
</html>