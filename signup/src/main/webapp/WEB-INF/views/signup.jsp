<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Facebook Sign Up</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/signup.css">
    <script src="${pageContext.request.contextPath}/signup.js" defer></script>
</head>
<body>
    <div class="container">
        <div class="face"><h2>facebook</h2></div>
        <div class="signup-container">
            <h1>Create a new account</h1>
            <p>It’s quick and easy.</p>
            <form action="${pageContext.request.contextPath}/signup" method="POST">
                <div class="form-row">
                    <input type="text" name="firstName" placeholder="First name" required>
                    <input type="text" name="surname" placeholder="Surname" required>
                </div>
                <input type="text" name="email" placeholder="Mobile number or email address" required>
                <input type="password" id="passwordInput" name="password" placeholder="New password" required oninput="checkPasswordStrength()">
                <label><input type="checkbox" onclick="togglePassword()"> Show Password</label>
                <p id="strength"></p>

                <label>Date of birth</label>
                <div class="form-row">
                    <select name="day" required>
                        <option value="">Day</option>
                        <option>1</option>
                        <option>2</option>
                        <!-- more days -->
                    </select>
                    <select name="month" required>
                        <option value="">Month</option>
                        <option>Jan</option>
                        <option>Feb</option>
                        <!-- more months -->
                    </select>
                    <select name="year" required>
                        <option value="">Year</option>
                        <option>2000</option>
                        <option>2001</option>
                        <!-- more years -->
                    </select>
                </div>

                <label>Gender</label>
                <div class="form-row">
                    <label><input type="radio" name="gender" value="Female" required> Female</label>
                    <label><input type="radio" name="gender" value="Male" required> Male</label>
                    <label><input type="radio" name="gender" value="Custom" required> Custom</label>
                </div>

                <p class="terms">
                    By clicking Sign Up, you agree to our Terms...
                </p>
                <button type="submit">Sign Up</button>
            </form>
        </div>
    </div>
</body>
</html>
