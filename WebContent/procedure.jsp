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
<link rel="stylesheet" href="css/lightbox.css" type="text/css"
	media="screen" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery-ui-1.8.18.custom.min.js"></script>
<script src="js/jquery.smooth-scroll.min.js"></script>
<script src="js/lightbox.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Parisienne&amp;subset=latin-ext"
	rel="stylesheet">
</head>
<body>
	<div class="main">
		<%@ include file="header.jsp" %>
		<div class="flex container__title">
			<img class="whiteStar " src="img/white-star.png" alt="Bílá hvězda">

			<h1 class="center">

				<%
					Recipe recept = (Recipe) request.getAttribute("recept");
				if(recept==null){%>
					<jsp:forward page="error.jsp"></jsp:forward>
					<%
				}
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
								for (String ingredient : recept.getSuroviny()) {
						%>
						<li><%=ingredient%></li>
						<%
							}
							}
						%>
				</div>
				<div class="box4">
					<div class="img"><a href="img/Vanocni_stola.jpg" rel="lightbox[procedure]"><img src="img/nahled<%=recept.getId() %>.jpg" alt="" title=""/>Nějaký náhled obrázku</a></div>
					
				</div>
					
				</ul>

				<div class="clear"></div>
			
			<h2 class="center">Postup</h2>
			<div>
				<%
					if (recept.getPostup() != null && recept.getPostup().size() > 0) {
						for (String paragraph : recept.getPostup()) {
				%>
				<p><%=paragraph %></p>
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