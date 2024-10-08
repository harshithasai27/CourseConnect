<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*, org.springframework.web.util.HtmlUtils"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
<title>Edit Event</title>
<!-- Your existing styles here -->
</head>
<body>
    <h2>Edit Event</h2>

    <%
    String message = (String) request.getAttribute("message");
    if (message != null && !message.isEmpty()) {
    %>
    <div class="message"><%=HtmlUtils.htmlEscape(message)%></div>
    <%
    }
    %>

    <%
    @SuppressWarnings("unused")
    
    Event event = (Event) request.getAttribute("event");
    List<User> allUsers = (List<User>) request.getAttribute("allUsers");
    %>

    <form action="<%=request.getContextPath()%>/editEvent/<%=event.getId()%>" method="post">
        <input type="hidden" name="id" value="<%=event.getId()%>"/>

        <label for="title">Event Title:</label>
        <input type="text" name="title" id="title" value="<%=event.getTitle()%>" required="true"/>

        <label for="description">Description:</label>
        <textarea name="description" id="description" rows="4" required="true"><%=event.getDescription()%></textarea>

        <label for="amount">Amount:</label>
        <input type="number" name="amnt" id="amount" value="<%=event.getAmnt()%>" required="true"/>

        <label for="resourcePerson">Resource Person:</label>
        <select name="resourcePerson.id" id="resourcePerson" class="select2">
            <option value="" disabled>Select a user</option>
            <%
            if (allUsers != null && !allUsers.isEmpty()) {
                for (User user : allUsers) {
            %>
            <option value="<%=user.getId()%>" <%= event.getResourcePerson() != null && event.getResourcePerson().getId() == user.getId() ? "selected" : "" %>>
                <%=user.getName()%>
            </option>
            <%
                }
            }
            %>
        </select>

        <button type="submit">Update Event</button>
    </form>

    <a href="<%=request.getContextPath()%>/manage-events">Back to Manage Events</a>
</body>
</html>
