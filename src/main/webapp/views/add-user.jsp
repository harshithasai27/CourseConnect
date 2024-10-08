<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>
    <style>
        /* CSS Code */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #d3f0f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #eef6f8;
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 1000px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo {
            width: 50px;
            height: 50px;
        }

        h1, h2 {
            font-size: 24px;
            color: #333;
        }

        .form-container {
            display: flex;
            justify-content: space-between;
        }

        .form {
            width: 45%;
            padding: 20px;
            background-color: #f2f9fa;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 15px;
            font-size: 18px;
            color: #333;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
            font-size: 14px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button, input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #64a6ac;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover, input[type="submit"]:hover {
            background-color: #538c93;
        }

        .forgot-password {
            display: block;
            margin-top: 10px;
            font-size: 12px;
            color: #555;
            text-decoration: none;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <!-- Adding the logo image here -->
           
            <h1>Register</h1>
        </div>

        <!-- Display message if available -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <p><%=message%></p>
        <%
        }
        %>

        <div class="form-container">
            <!-- Faculty Form -->
            <div class="form faculty">
                <h2>FACULTY</h2>
                <form action="add-user" method="post">
                
  
                  
                    <label for="faculty-username">Username:</label>
                    <input type="text" id="faculty-username" name="username" required>
                    <label for="faculty-password">Password:</label>
                    <input type="password" id="faculty-password" name="password" required>
                    <input type="submit" value="Register">
                </form>
            </div>

            <!-- Student Form -->
            <div class="form student">
                <h2>STUDENT</h2>
                <form action="add-user" method="post">
                
                   
                    <label for="student-username">Username:</label>
                    <input type="text" id="student-username" name="username" required>
                    <label for="student-password">Password:</label>
                    <input type="password" id="student-password" name="password" required>
                    <input type="submit" value="Register">
                </form>
            </div>
        </div>

        <br>
        <a href="home">Back to Home</a>
    </div>
</body>
</html>