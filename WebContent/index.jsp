<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person Index</title>
<script>
	window.onload = function() {

		document.getElementById("toInput").onclick = function() {

			location.href = "inputt.html";
		}
		document.getElementById("toOutput").onclick = function() {

			location.href = "outputProc.jsp";
		}

	}
</script>
</head>
<body>
	
	<table border=1>
		<tr>
			<th colspan=2>Person
		</tr>
		<tr>
			<td><button id="toInput">toInput</button>
			<td><button id="toOutput">toOutput</button>
		</tr>
	</table>

</body>
</html>