<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<title>Person Index</title>
<script>
	window.onload = function() {

		document.getElementById("toInput").onclick = function() {

			location.href = "input.jsp";
		}
		document.getElementById("toOutput").onclick = function() {

			location.href = "output.do";
		}

	}
</script>
</head>
<body>
<nav class="navbar navbar-default">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed"
data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
aria-expanded="false">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">PERSON</a>
</div>
</nav>

<div class="container">
<div class="row">
	<table class="table table-striped" style="border: 1px solid #dddddd">
		<tr>
			<th colspan=2 style="text-align:center; font-style:bold">Person
		</tr>
		<tr>
			<td style="text-align:center;"><button id="toInput" class="btn btn-default" >Input</button>
			<td style="text-align:center;"><button id="toOutput" class="btn btn-warning">Output</button>
		</tr>
	</table>
</div>
</div>
</body>
</html>