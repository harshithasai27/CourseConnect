<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background color */
            margin: 0;
            padding: 20px; /* Padding for the body */
        }

        h2 {
            text-align: center; /* Center the heading */
            color: #333; /* Dark text color */
        }

        .container {
            max-width: 400px; /* Maximum width for the form */
            margin: 0 auto; /* Center the container */
            padding: 20px; /* Padding inside the container */
            background-color: #fff; /* White background */
            border-radius: 5px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        label {
            display: block; /* Display labels as block */
            margin-bottom: 5px; /* Space below labels */
            color: #555; /* Gray text for labels */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%; /* Full-width inputs */
            padding: 10px; /* Padding inside inputs */
            margin-bottom: 15px; /* Space below inputs */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 3px; /* Rounded corners */
            box-sizing: border-box; /* Include padding in width */
        }

        input[type="submit"] {
            width: 100%; /* Full-width button */
            padding: 10px; /* Padding inside the button */
            background-color: #007BFF; /* Primary button color */
            color: white; /* Text color for button */
            border: none; /* No border */
            border-radius: 3px; /* Rounded corners */
            cursor: pointer; /* Pointer on hover */
            font-size: 16px; /* Font size for button */
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .message {
            text-align: center; /* Center the message */
            color: #d9534f; /* Red color for error messages */
            margin-bottom: 20px; /* Space below message */
        }

        .back-link {
            display: block; /* Display link as block */
            text-align: center; /* Center the link */
            margin-top: 20px; /* Space above link */
            color: #007BFF; /* Link color */
            text-decoration: none; /* Remove underline */
        }

        .back-link:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Login</h2>

        <!-- Display message if available -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
            <p class="message"><%=message%></p>
        <%
        }
        %>

        <form action="login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login">
        </form>
        
        <a class="back-link" href="home">Back to Home</a>
    </div>

</body>
</html>