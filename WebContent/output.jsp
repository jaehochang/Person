<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<title>Output</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Output</a>
		</div>
	</nav>


	<c:choose>
		<c:when test="${empty result}">
		표시할 값이 없습니다.
	</c:when>
		<c:when test="${not empty result}">
			<div class="container">
				<div class="row">
					<table class="table table-striped"
						style="border: 1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee;">이름</th>
								<th style="background-color: #eeeeee;">이메일</th>
								<th style="background-color: #eeeeee;">연락처</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="pdto" items="${result}">
								<tr>
									<td>${pdto.name}</td>
									<td>${pdto.email}</td>
									<td>${pdto.phone}</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</c:when>
	</c:choose>

</body>
</html>