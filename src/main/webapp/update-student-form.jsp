<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<h3>Add Student</h3>
	
	<form action="StudentControllerServlet" method="get">
	<input type="hidden" name="command" value="UPDATE">
	<input type="hidden" name="studentId" value="${the_student.id }">
	
	<table>
	<tr>
		<td><label>First name:</label></td>
		<td><input type="text" name="first_name" value="${the_student.firstName }"></td>
	</tr>
	<tr>
		<td><label>Last name:</label></td>
		<td><input type="text" name="last_name" value="${the_student.lastName }"></td>
	</tr>
	<tr>
		<td><label>Email:</label></td>
		<td><input type="text" name="email" value="${the_student.email }"></td>
	</tr>
	<tr>
		<td><label></label></td>
		<td><input type="submit" value="Save"></td>
	</tr>
	</table>
	
	</form>
</div>

</body>
</html>