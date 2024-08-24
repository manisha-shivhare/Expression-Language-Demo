<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- expression language -->
	<%
	request.setAttribute("request_name", "manisha shivhare");
	//out.println(request.getAttribute("request_name"));
	%>
	<!-- requestScope  jo expression language ka implicit object hota humne uska use kiya or dirctly requwst ka name access kiya or get krvliya hai -->
	<h3>Hello : ${requestScope.request_name}</h3>

	<%
	session.setAttribute("session_cname", "smart world");
	%>
	<!-- session se hum direct value get krwa skte hai without using implict object ki v need nhi hai -->
	<h3>Hello : ${session_cname}</h3>


	<form action="output.jsp" method="get">
		<input type="text" name="name1" placeholder="Enter Name" /> <br>
		<br> <input type="submit" value="Click Me" />
	</form>
</body>
</html>