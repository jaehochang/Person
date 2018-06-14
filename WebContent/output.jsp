<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty result}">
		표시할 값이 없습니다.
	</c:when>
		<c:when test="${not empty result}">
			<table border=1>
				<tr>
					<th>이름</th>
					<th>이메일</th>
					<th>연락처</th>
				</tr>
				<c:forEach var="pdto" items="${result }">
					<td>${pdto.name }</td>
					<td>${pdto.email }</td>
					<td>${pdto.phone }</td>
				</c:forEach>
			</table>
		</c:when>
	</c:choose>
</body>
</html>