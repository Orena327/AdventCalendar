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
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day1" value="day1">
						<img src="img/gold-star-1.png" alt="Recept č.1">
					</button>
					<button class="star" type="submit" name="action" id="day2" value="day2">
						<img src="img/gold-star-2.png" alt="Recept č.2">
					</button>
					<button class="star" type="submit" name="action" id="day3" value="day3">
						<img src="img/gold-star-3.png" alt="Recept č.3">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day4" value="day4">
						<img src="img/gold-star-4.png" alt="Recept č.4">
					</button>
					<button class="star" type="submit" name="action" id="day5" value="day5">
						<img src="img/gold-star-5.png" alt="Recept č.5">
					</button>
					<button class="star" type="submit" name="action" id="day6" value="day6">
						<img src="img/gold-star-6.png" alt="Recept č.6">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day7" value="day7">
						<img src="img/gold-star-7.png" alt="Recept č.7">
					</button>
					<button class="star" type="submit" name="action" id="day8" value="day8">
						<img src="img/gold-star-8.png" alt="Recept č.8">
					</button>
					<button class="star" type="submit" name="action" id="day9" value="day9">
						<img src="img/gold-star-9.png" alt="Recept č.9">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day10" value="day10">
						<img src="img/gold-star-10.png" alt="Recept č.10">
					</button>
					<button class="star" type="submit" name="action" id="day11" value="day11">
						<img src="img/gold-star-11.png" alt="Recept č.11">
					</button>
					<button class="star" type="submit" name="action" id="day12" value="day12">
						<img src="img/gold-star-12.png" alt="Recept č.12">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day13" value="day13">
						<img src="img/gold-star-13.png" alt="Recept č.13">
					</button>
					<button class="star" type="submit" name="action" id="day14" value="day14">
						<img src="img/gold-star-14.png" alt="Recept č.14">
					</button>
					<button class="star" type="submit" name="action" id="day15" value="15">
						<img src="img/gold-star-15.png" alt="Recept č.15">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day16" value="day16">
						<img src="img/gold-star-16.png" alt="Recept č.16">
					</button>
					<button class="star" type="submit" name="action" id="day17" value="day17">
						<img src="img/gold-star-17.png" alt="Recept č.17">
					</button>
					<button class="star" type="submit" name="action" id="day18" value="day18">
						<img src="img/gold-star-18.png" alt="Recept č.18">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day19" value="day19">
						<img src="img/gold-star-19.png" alt="Recept č.19">
					</button>
					<button class="star" type="submit" name="action" id="day20" value="day20">
						<img src="img/gold-star-20.png" alt="Recept č.20">
					</button>
					<button class="star" type="submit" name="action" id="day21" value="day21">
						<img src="img/gold-star-21.png" alt="Recept č.21">
					</button>
				</div>
				<div class="box buttons">
					<button class="star" type="submit" name="action" id="day22" value="day22">
						<img src="img/gold-star-22.png" alt="Recept č.22">
					</button>
					<button class="star" type="submit" name="action" id="day23" value="day23">
						<img src="img/gold-star-23.png" alt="Recept č.23">
					</button>
					<button class="star" type="submit" name="action" id="day24" value="day24">
						<img src="img/gold-star-24.png" alt="Recept č.24">
					</button>
				</div>
			</form>
		</div>
		<%@ include file="footer.jsp"%>
	</div>


</body>
</html>