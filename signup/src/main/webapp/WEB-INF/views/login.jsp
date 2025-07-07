<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login.css">
</head>
<body>
    <div class="logo">
        <h1>facebook</h1>
    </div>
    <div class="login-container">
        <form class="login-form" action="${pageContext.request.contextPath}/login" method="post">
            <c:if test="${not empty error}">
                <p style="color:red;">${error}</p>
            </c:if>
            <input type="text" name="email" placeholder="Email or phone number" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Log In</button>
            <a href="#" class="forgot-password">Forgotten password?</a>
            <hr />
            <a href="${pageContext.request.contextPath}/signup">
                <button type="button" class="create-account-btn">Create New Account</button>
            </a>
        </form>
    </div>
</body>
</html>