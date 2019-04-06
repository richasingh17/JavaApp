<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>
        <head>
        
	<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" >
	<link rel="stylesheet" type="text/css" href="asset/css/style.css" >
	<!-- JS Link -->
	<script  type="text/javascript" src="<c:url value="asset/js/jquery.js"/>"></script>
	<script type="text/javascript" src="<c:url value="asset/js/bootstrap.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="asset/js/login.js"/>"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
		
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Login</title>
        </head>
        <body>
            <form:form id="loginForm" modelAttribute="login" class="form-group" action="loginProcess" method="post">
                <table align="center">
		    <th>
			    FORM-Login
	            </th>
                    <tr>
                        <td>
                            <form:label path="username">Username: </form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">Password:</form:label>
                        </td>
                        <td>
                            <form:password  path="password" name="password" id="password" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left">
                            <form:button  id="login" name="login">Login</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="home.jsp">Home</a>
                        </td>
                    </tr>
                </table>
            </form:form>
            <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${message}</td>
                </tr>
            </table>
        </body>
        </html>
