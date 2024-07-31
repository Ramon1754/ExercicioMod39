<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (username === "admin" && password === "password") {
                document.getElementById("loginForm").submit();
            } else {
                document.getElementById("errorMessage").innerText = "Invalid username or password.";
            }
            return false; // Prevent form submission
        }
    </script>
</head>
<body>
    <h1>Login</h1>
    <form id="loginForm" action="welcome.jsp" method="post" onsubmit="return validateForm();">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <button type="submit">Login</button>
    </form>
    <p id="errorMessage" style="color: red;"></p>
</body>
</html>
