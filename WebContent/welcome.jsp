<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome</title>
    </head>
    <body>
        <table>
        	 <tr>
                <td><a href="home.jsp">Home</a></td>
                <td><a href="getUsers">Get Users</a></td>
            </tr>
            <tr>
            	<td><br></td>
            	<td><br></td>
            	<td><br></td>
            </tr>
            <tr>
                <td>Welcome ${firstname}</td>
            </tr>

        </table>
        <br>
        <br>
        <br>
        <h4>List Of Exiting Users</h4>
        <table border="1px">
        	<thead>
        		<tr>
        			<th>User Name</th>
        			<th>First Name</th>
        			<th>Last Name</th>
        			<th>Email ID</th>
        		</tr>
        	</thead>
        	<tbody>
        	<c:forEach items="${users}" var="item">
        		<tr>
        			<td>${item.getUsername()}</td>
    				<td>${item.getFirstname()}</td>
    				<td>${item.getLastname()}</td>
    				<td>${item.getEmail()}</td>
        		</tr>
        	</c:forEach>
        	</tbody>
        </table>
        
    </body>
    </html>