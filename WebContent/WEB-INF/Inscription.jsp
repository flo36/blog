<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
	
	<h1> Inscription</h1>
	    	
	    		<img src="././images/logo_orange.jpg" alt="logo" width="30%" >	
	    	
	    <form action="" method="POST">
	    	<div>
			<label for="pseudo">Pseudo : </label> <input type="text" id="pseudo" />
			
			</div>
			<div>
			<label for="email">Email : </label> <input type="text" id="email" />
			
			</div>
			<div>
			<label for="password">Password : </label> <input type="password" id="password" />
			
			</div>
			<div>
			<label for="repeat">Repeat Password : </label> <input type="text" id="repeat" />
			
			</div>
			
			<input type="submit" value="Submit" id="submit" />

		</form>

</body>
</html>