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
			String username = (String) session.getAttribute("username");
		%>
		<script>
			function validate() {
				var roomID = document.myform.roomID.value;
				console.log(roomID);
				window.location.href = "./game-room.html?roomID=" + roomID + "&playerID=0";
				
				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					document.getElementById("usernameMessage").innerHTML = this.responseText;
				}
				// Send username to servlet
				xhttp.open("GET", "Validate?gameID=" + document.myform.gameID.value, false);
				xhttp.send();
				xhttp.responseText
				return false;
			}
		</script>
	</head>
	<body>
		<div id="center">
			<form method="GET" name="myform" action="DirectServlet">
				GAME ROOM ID<br />
				<input type="text" name="gameID">
				<button type="submit">Go</button>
			</form>
		</div>
	</body>
</html>