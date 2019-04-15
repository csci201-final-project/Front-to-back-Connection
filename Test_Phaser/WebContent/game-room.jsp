<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Game</title>
		<style>
			body {
				margin: 0 auto;
				background: black;
			}
		</style>
		<link rel="icon" href="./assets/favicon.png">
	</head>
	<body>
		<%
			String id = request.getParameter("Index");
		%>
		<script>
			var playerId = <%= id %>
		</script>
		<script type="module" src="./lib/phaser.js"></script>
		<script type="module" src="./src/main.js"></script>
	</body>
</html>