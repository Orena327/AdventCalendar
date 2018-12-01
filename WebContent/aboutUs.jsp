<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O nás | Digitální akademie Java 2018</title>
<meta name="description" content="">
<meta name="author"
	content="Ivana Králíčková, Renata Ocelková, Andrea Josieková">
<link rel="shortcut icon" href="img/favicon7.png" />
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
		<%@ include file="header.jsp"%>

		<div class="flex container__title">
			<img class="whiteStar" src="img/white-star.png" alt="Bílá hvězda">
			<h1 class="center">O nás</h1>
			<img class="whiteStar" src="img/white-star.png" alt="Bílá hvězda">
		</div>
		<p></p>
		<div class="container2">
			<h2 class="center">Tvůrkyně</h2>
			<div class="container__person">
				<figure>
					<a href="img/Andrea_Josiekova_500x672.jpg" rel="lightbox[persons]"><img
						class="person" src="img/Andrea_Josiekova_500x672.jpg"
						alt="Andrea Josieková"></a>
					<figcaption>Andrea Josieková</figcaption>
				</figure>
				<figure>
					<a href="img/Renata_Ocelkova_500x672.jpg" rel="lightbox[persons]"><img
						class="person" src="img/Renata_Ocelkova_500x672.jpg"
						alt="Renáta Ocelková"></a>
					<figcaption>Renáta Ocelková</figcaption>
				</figure>
				<figure>
					<a href="img/Ivana_Kralickova_500x672.jpg" rel="lightbox[persons]"><img
						class="person" src="img/Ivana_Kralickova_500x672.jpg"
						alt="Ivana Králíčková"></a>
					<figcaption>Ivana Králíčková</figcaption>
				</figure>
				<div class="clear"></div>
			</div>
			<div>
				<h2 class="center">Postup</h2>
				<p>
					Vezmete pořádnou naběračku odvahy, přihlásíte se na&nbsp;hustý kurz
					<strong>„Digitální akademie Java“</strong> a&nbsp;pustíte se
					do&nbsp;toho s&nbsp;velkou hrstí super lidí z&nbsp;„kuchařky“
					Czechitas. <br> <br>Recept na&nbsp;web Adventní kalendář
					je pak následovný: <br> Přidáte naběračku Desktopové Javy, dvě
					hrstě Webové Javy, dvě lžičky kariérního workshopu, jednu hrst HTML
					a&nbsp;CSS, pár gramů MySQL, několik žufánků exkurzí do&nbsp;firem
					a&nbsp;nakonec se přidá několik kilo nastřádaných vědomostí.<br>
					<br> No a na&nbsp;Hacketonu poté několik hodin vaříte, pečete,
					smažíte, obracíte, válíte, překládáte a hňátáte až je z&nbsp;toho
					„Web jako víno“ (víno můžete v&nbsp;receptu použít jako ingredienci
					☺). A víte, co je na&nbsp;tomto receptu nejvíce důležité? Mít
					ochotné pomocníky, správné suroviny a&nbsp;hlavně kvalitní
					kuchařku. </p>
				<div class="center thanks">Děkujeme Czechitas.</div>

			</div>
		</div>
		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>