<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recepty | Digitální akademie Java 2018</title>
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
					<li>Recept č. 1: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day1)"%>"></a></li>
					<li>Recept č. 2: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day2)"%>"></a></li>
					<li>Recept č. 3: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day3)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 4: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day4)"%>"></a></li>
					<li>Recept č. 5: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day5)"%>"></a></li>
					<li>Recept č. 6: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day6)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 7: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day7)"%>"></a></li>
					<li>Recept č. 8: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day8)"%>"></a></li>
					<li>Recept č. 9: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day9)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 10: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day10)"%>"></a></li>
					<li>Recept č. 11: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day11)"%>"></a></li>
					<li>Recept č. 12: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day12)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 13: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day13)"%>"></a></li>
					<li>Recept č. 14: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day14)"%>"></a></li>
					<li>Recept č. 15: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day15)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 16: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day16)"%>"></a></li>
					<li>Recept č. 17: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day17)"%>"></a></li>
					<li>Recept č. 18: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day18)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 19: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day19)"%>"></a></li>
					<li>Recept č. 20: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day20)"%>"></a></li>
					<li>Recept č. 21: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day21)"%>"></a></li>
				</div>
				<div class="box">
					<li>Recept č. 22: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day22)"%>"></a></li>
					<li>Recept č. 23: <a
						href="ActionServlet?action=day<%="nadpis.get(id = day23)"%>"></a></li>
					<li>Recept č. 24: <a action="ActionServlet"
						href="ActionServlet?action=day<%="nadpis.get(id = day24)"%>"></a></li>
				</div>
			</ul>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>