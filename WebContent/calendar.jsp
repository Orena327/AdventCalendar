<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adventní kalendář | Digitální akademie Java 2018</title>
<meta name="description" content="">
<meta name="author" content="Ivana Králíčková, Renata Ocelková, Andrea Josieková">
<link rel="shortcut icon" href="img/favicon1.png"/>
<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/fonty.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/resize.css" media="screen"> 
<link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Parisienne&amp;subset=latin-ext" rel="stylesheet">
</head>
<body>
	<div class="main">
		<%@ include file="header.jsp"%>

		<div class="flex container__title">
			<img class="whiteStar " src="img/white-star.png" alt="Bílá hvězda">
			<h1 class="center">Adventní kalendář</h1>
			<img class="whiteStar" src="img/white-star.png" alt="Bílá hvězda">
		</div>

		<p>Adventní kalendář každý den nový recept přináší, na tvoji tváří
			úsměv rozzáří. Tak jako u čokoládové verze, otevři každý den jeden,
			připrav si tak dobroty nejlépe předem. Seřazeny jsou, aby ti
			vydrželi, až do Vánočního dne. Tak neváhej a pusť se do toho rovnou
			hned.</p>

		<div class="container2">
			<form action="ActionServlet" method="post" class="container">
				<% for(int i=0; i<8;i++){ %>
				<div class="box">
					<button class="star" type="submit" name="action" id="day<%=3*i+1 %>" value="day<%=3*i+1 %>">
						<img src="img/gold-star-<%=3*i+1 %>.png" alt="Recept č.<%=3*i+1 %>">
					</button>
					<button class="star" type="submit" name="action" id="day<%=3*i+2 %>" value="day<%=3*i+2 %>">
						<img src="img/gold-star-<%=3*i+2 %>.png" alt="Recept č.<%=3*i+2 %>">
					</button>
					<button class="star" type="submit" name="action" id="day<%=3*i+3 %>" value="day<%=3*i+3 %>">
						<img src="img/gold-star-<%=3*i+3 %>.png" alt="Recept č.3">
					</button>
				</div><% } %>
			</form>
		</div>
		<%@ include file="footer.jsp"%>
	</div>


</body>
</html>