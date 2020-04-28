<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="././fichier_css/inscription.css" />
<title>Inscription</title>

</head>
<body>
	
	<h1> Inscription</h1>
	    	
	    		<img src="././images/logo_orange.jpg" alt="logo" width="30%" >	
	    	
	    <form action="" method="POST">
	    	<div>
			<label for="pseudo">Pseudo : </label> <input type="text" name="pseudo" />
			
			</div>
			<div>
			<label for="email">Email : </label> <input type="text" name="email" />
			
			</div>
			<div>
			<label for="password">Password : </label> <input type="password" name="password" />
			
			</div>
			<div>
			<label for="repeat">Repeat Password : </label> <input type="password" name="repeat" />
			
			</div>
			
			<input type="submit" value="Submit" id="submit" />

		</form>

</body>
</html>