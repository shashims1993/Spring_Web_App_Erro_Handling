<%@page contentType="text/html;charset = UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<body
	background="C:/Users/Public/Pictures/Sample Pictures/Background.gif">
	<center>
		<form action="sendData" method="get">
			<table style="width: 100">

				<c:if test="${!empty errorMsg}">
					<b>${errorMsg}</b>
				</c:if>
				<tr>
					<font color="green"><td>Enter Your Name</td></font>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Enter Your Mobile number</td>
					<td><input type="text" name="mobileno" value="0"></td>
				</tr>
				<tr>
					<td>Submit</td>
					<center>
						<td><input type="submit" name="Submit"></td>
					</center>
				</tr>
			</table>
		</form>

	<c:if test="${!empty list}">
		<center>
			<table name="users" border="2.5" width="100%" cellpadding="1.5">

				<tr>
					<th>Name</th>
					<th>Mobile Number</th>
				</tr>
				<c:forEach items="${list}" var="data">
					<tr>
						<td>${data.username}</td>
						<td>${data.mobileno}</td>
					</tr>
				</c:forEach>


			</table>
		</center>
	</center>
	</c:if>
</body>
</html>
