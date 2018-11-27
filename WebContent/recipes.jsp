<%@page import="cz.czechitas.acweb.bean.Search"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recepty | Digitální akademie Java 2018</title>
<meta name="description" content="">
<meta name="author" content="Ivana Králíčková, Renata Ocelková, Andrea Josieková">
<link rel="shortcut icon" href="img/favicon7.png"/>
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
			<h1 class="center">Seznam vánočních receptů</h1>
			<img class="whiteStar" src="img/white-star.png" alt="Bílá hvězda">
		</div>
		<p>Adventní kalendář každý den nový recept přináší, na&nbsp;tvoji
			tváři úsměv rozzáří. Tak jako u&nbsp;čokoládové verze otevři každý
			den jeden, připrav si tak dobroty nejlépe předem. Seřazeny jsou, aby
			ti vydržely až do&nbsp;Vánočního dne, tak neváhej a&nbsp;pusť se
			do&nbsp;toho rovnou hned.</p>
		<div class="linkList container2">
		
		       
			<ul class="linkList__ul">
				<div class="box">
				<% ArrayList<Search> recepty = (ArrayList<Search>) request.getAttribute("recepty");
				if(recepty ==null){%>
				<jsp:forward page="error.jsp"></jsp:forward>
				<%
			}
			
				int day = 0;
        			for(Search recept : recepty){
        				day++;
        				if(day % 2 == 1){      					
        		%>	
        			
        		
					<li>Recept č. <%= recept.getId() %>: <a
						href="ActionServlet?action=day<%=recept.getId() %>"><%= recept.getName() %></a></li>
						<% }}%>
				</div>
				<div class="box">
				<% 
					day = 0;
        			for(Search recept : recepty){
        				day++;
        				if(day % 2 == 0){      					
        		%>
					<li>Recept č. <%= recept.getId() %>: <a
						href="ActionServlet?action=day<%=recept.getId() %>"><%= recept.getName() %></a></li>
						<% }}%>
				</div>
			</ul>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>