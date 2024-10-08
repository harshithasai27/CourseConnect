<%@ page import="java.util.List, com.jfsd_lab.exp_6.model.User"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Add Event</title>
<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
	$(document).ready(function() {
		$('.select2').select2({
			placeholder : "Select a user",
			allowClear : true
		});
	});
</script>
</head>
<body>
	<h2>Add Event</h2>

	<form:form action="add-event" method="post" modelAttribute="event">
		<table>
			<tr>
				<td>Title:</td>
				<td><form:input path="title" /></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><form:textarea path="description" rows="3" /></td>
			</tr>
			<tr>
				<td>Amount:</td>
				<td><form:input path="amnt" /></td>
			</tr>
			<tr>
				<td>Resource Person:</td>
				<td><form:select path="resourcePerson.id" cssClass="select2">
						<form:option value="" label="Select a user" />
						<%
						@SuppressWarnings("unchecked")
						List<User> allUsers = (List<User>) request.getAttribute("allUsers");
						for (User user : allUsers) {
						%>
						<form:option value="<%= user.getId() %>"><%=user.getName()%></form:option>
						<%
						}
						%>
					</form:select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add Event" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>
