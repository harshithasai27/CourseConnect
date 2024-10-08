<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*, org.springframework.web.util.HtmlUtils"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Register for Events</title>
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

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f5f5f5;
}

.pay-link {
	color: green;
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

	<h2>Register for Events</h2>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null && !message.isEmpty()) {
	%>
	<div class="message"><%=HtmlUtils.htmlEscape(message)%></div>
	<%
	}
	%>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>Amount</th>
				<th>Resource Person</th>
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

				<td><a class="pay-link"
					href="<%=request.getContextPath()%>/registerEvent/<%=event.getId()%>"
					onclick="return confirm('Are you sure you want to register and pay for this event?');">
						Pay & Register </a></td>
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

	<a href="<%=request.getContextPath()%>/user-dashboard">Back to
		Dashboard</a>

</body>
</html>
