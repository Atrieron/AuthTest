<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>News</title>

	<link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
	<base href="${pageContext.request.contextPath}/"/>
</head>
<body>
<div class="collapse navbar-collapse">
	<sec:authorize access="isAuthenticated()">
		<a class="navbar-right" href="logout">Logout</a>.
		<p class="navbar-right">Logged as ${user.getName()}. </p>
	</sec:authorize>
	<sec:authorize access="isAnonymous()">
		<form class="navbar-form navbar-right" action="spring_security_check" method="post">
			<input type="text" placeholder="Login" name="username"/>
			<input type="password" placeholder="Password" name="password"/>
			<input type="hidden" name="spring-security-redirect" value="/news"/>
			<input type="submit" />
		</form>
	</sec:authorize>
</div>
</body>
</html>
