<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="icon" href="./assets/favicon.png">
		<style>
			#center {
				position: absolute;
				top: 40%;
				left: 50%;
				transform: translate(-50%, -50%);
				text-align: center;
				font-size: 40px;
			}
		</style>
		<%
			String username = request.getParameter("username");
		%>
		<script>
			function validate() {
				var gameID = document.myform.gameID.value;
				
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET", "DirectServlet?gameID=" + gameID, false);
				xhttp.send();
				
				var playerID = xhttp.responseText;
				var username = "<%= username %>";
				
				window.location.href = "./game-room.html?gameID=" + gameID + "&playerID=" + playerID + "&username=" + username;
				return false;
			}
		</script>
	</head>
	<body>
		<div id="center">
			<form method="GET" name="myform" action="game-room.html" onSubmit="return validate()">
				GAME ROOM ID<br />
				<input type="text" name="gameID">
				<button type="submit" name="submit">Go</button>
			</form>
		</div>
	</body>
</html>