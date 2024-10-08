<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Registered Events</title>
</head>
<body>
	<h1>Events You Have Registered For</h1>

	<%
	@SuppressWarnings("all")
	List<Event> registeredEvents = (List<Event>) request.getAttribute("registeredEvents");

	if (registeredEvents != null && !registeredEvents.isEmpty()) {
	%>
	<table border="1">
		<thead>
			<tr>
				<th>Event ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Amount</th>
				<th>Resource Person</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Event event : registeredEvents) {
			%>
			<tr>
				<td><%=event.getId()%></td>
				<td><%=event.getTitle()%></td>
				<td><%=event.getDescription()%></td>
				<td><%=event.getAmnt()%></td>
				<td><%=event.getResourcePerson() != null ? event.getResourcePerson().getName() : "N/A"%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%
	} else {
	%>
	<p>You have not registered for any events yet.</p>
	<%
	}
	%>
	<a href="<%=request.getContextPath()%>/user-dashboard">Back to
		Dashboard</a>
</body>
</html>
