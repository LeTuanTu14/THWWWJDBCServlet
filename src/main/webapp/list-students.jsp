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
	<div>
		<input type="button" value="Add student" onclick="window.location.href='add-student-form.jsp'; return false;">
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			
			<c:forEach var="tempStudent" items="${student_list }">
				<c:url var="tempLink" value="StudentControllServlet">
					<c:param name="command" value="LOAD"></c:param>
					<c:param name="studentId" value="${tempStudent.id}"></c:param>
				</c:url>
				
				<c:url var="tempDelete" value="StudentControllServlet">
					<c:param name="command" value="DELETE"></c:param>
					<c:param name="studentId" value="${tempStudent.id}"></c:param>
				</c:url>
				
				<tr>
					<td>${tempStudent.firstName }</td>
					<td>${tempStudent.lastName }</td>
					<td>${tempStudent.email }</td>
					<td>
						<a href="${tempLink}">UPDATE</a>
						<a href="${tempDelete}" onclick="if(!(confirm('Ban co chac chan muon xoa ??'))) return false">DELETE</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>