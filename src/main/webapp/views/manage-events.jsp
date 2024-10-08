<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Manage Events</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

td a {
	padding-left: 4px;
}

.del-link {
	color: red;
}

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f5f5f5;
}

.action-icons {
	cursor: pointer;
}

.action-icons img {
	width: 20px;
	height: 20px;
}
</style>
</head>
<body>

	<h2>Manage Events</h2>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Amount</th>
				<th>Resource Person</th>
				<th>Registered Users</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
			@SuppressWarnings("unchecked")
			List<Event> allEvents = (List<Event>) request.getAttribute("allEvents");
			if (allEvents != null && !allEvents.isEmpty()) {
				for (Event event : allEvents) {
			%>
			<tr>
				<td><%=event.getId()%></td>
				<td><%=event.getTitle()%></td>
				<td><%=event.getDescription()%></td>
				<td><%=event.getAmnt()%></td>
				<td><%=event.getResourcePerson().getName()%></td>
				<td>
					<%
					List<User> registeredUsers = event.getRegisteredUsers();
					if (registeredUsers == null) {
						registeredUsers = new ArrayList<>();
					}
					if (registeredUsers != null && !registeredUsers.isEmpty()) {
						for (User user : registeredUsers) {
					%> <span><%=user.getName()%></span><br /> <%
 }
 } else {
 %> No registered users. <%
 }
 %>
				</td>
				<td><a
					href="<%=request.getContextPath()%>/editEvent/<%=event.getId()%>">
						Edit </a> <a class="del-link"
					href="<%=request.getContextPath()%>/deleteEvent/<%=event.getId()%>"
					onclick="return confirm('Are you sure you want to delete this event?');">
						Delete </a></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="7">No events found.</td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>

	<a href="<%=request.getContextPath()%>/admin-dashboard">Back to
		Dashboard</a>

</body>
</html>
