<%@page import="cz.czechitas.acweb.bean.Recipe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vánoční recept | Digitální akademie Java 2018</title>
<meta name="description" content="">
<meta name="author"
	content="Ivana Králíčková, Renata Ocelková, Andrea Josieková">
<link rel="shortcut icon" href="img/favicon1.png" />
<link rel="stylesheet" type="text/css" href="css/style.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/fonty.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/resize.css"
	media="screen">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Parisienne&amp;subset=latin-ext"
	rel="stylesheet">
</head>
<body>
	<div class="main">
		<%@ include file="header.jsp"%>
		<div class="flex container__title">
			<img class="whiteStar " src="img/white-star.png" alt="Bílá hvězda">

			<h1 class="center">

				<%
					Recipe recept = (Recipe) request.getAttribute("recept");
				%>

				<%=recept.getName()%>
			</h1>
			<img class="whiteStar" src="img/white-star.png" alt="Bílá hvězda">
		</div>
		<p></p>
		<div class="container2">
			<h2 class="center">Suroviny</h2>
			<div>
				<ul class="linkList__ul">
					<div class="box3">
						<%
							if (recept.getSuroviny() != null && recept.getSuroviny().size() > 0) {
								for (String surovina : recept.getSuroviny()) {
						%>
						<li><%=surovina%></li>
						<%
							}
							}
						%>

						<%-- <li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 1)"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 2))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 3))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 4))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 5))"%>"></a></li> --%>
					</div>
					<%-- 	<div class="box3">
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 6))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 7))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 8))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 9))"%>"></a></li>
						<li>Něco<a
							href="#prikazDodatabaze?action=day1<%="polozka.get(id = 10))"%>"></a></li>
					</div> --%>
					<!-- <div class="box2">Obrázek nebo nic</div> -->
				</ul>
				<div class="clear"></div>
			</div>
			<h2 class="center">Postup</h2>
			<div>
			<%
							if (recept.getPostup() != null && recept.getPostup().size() > 0) {
								for (String odstavec : recept.getPostup()) {
						%>
						<p><%=odstavec%></p>
						<%
							}
							}
						%>
				
			</div>
		</div>
		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>