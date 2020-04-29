<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "javax.servlet.http.HttpSession"  %>
    <%@ page import = "DAO.*"  %>
    <%@ page import = "java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<header>
        <div class="d-flex justify-content-between">
            <div class="logo">
            </div>
            <h1 class="mt-5"> Vos Amis</h1>
            <div></div>
        </div>
</header>
<body>





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
           
           
           
           %>
            <div class="">
                <p><span>Pseudo 1</span></p>
            </div>
           
        </div>

    </div>

</body>
</html>