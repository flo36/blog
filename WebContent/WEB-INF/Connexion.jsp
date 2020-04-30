<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
<link rel="stylesheet" href="././fichier_css/inscription.css" />
</head>
<body>

	<h1> Connexion</h1>
	    	
	    		<img src="././images/logo_orange.jpg" alt="logo" width="30%" >	
	    	
	    <form action="" method="POST">
			
			<div>
			<label for="email" >Email : </label> <input type="text" id="email" name = "email" value="quentin@orange.fr"/>
			</div>

			<div>
			<label for="password" >Password : </label> <input type="password" id="password" name ="mdp" value= "quentin" />
			</div>
			
			

			<input type="submit" value="Submit" id="submit" />
			
			 <%if(request.getAttribute("error")!=null){ %>
              <p class="text-danger">  <% out.print(request.getAttribute("error")); }%> </p>

		</form>

</body>
</html>