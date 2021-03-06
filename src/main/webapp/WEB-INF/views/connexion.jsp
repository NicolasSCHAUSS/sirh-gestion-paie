<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
    <c:import url="/WEB-INF/head.jsp"></c:import>
    <body class="container">        

        <h1>Connexion</h1>

        <!-- Spring Security s'attend aux param�tres "username" et "password" -->
        <form method="post">
            <input name="username">
            <input name="password">
            <input type="submit" value="Se connecter">
            <!-- g�n�ration du Token CSRF -->
       	 	<sec:csrfInput/>
        </form>
        
        <!-- en cas d'erreur un param�tre "error" est cr�� par Spring Security -->
        <c:if test="${param.error !=null}">
            Erreur d'authentification
        </c:if>
        
    </body>
</html>