
<%@page contentType="text/html;charset = UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body
	background="C:/Users/Public/Pictures/Sample Pictures/Background.gif">

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

</body>
</html>
