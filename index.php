
<!--- Theme Cardos by Luka Cvetinovic for Codrops --->


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Blue Swift</title>
	<meta name="description" content="Blue Swift is your one home for all your apartment searches!" />
	<meta name="keywords" content="html template, css, free, one page, gym, fitness, web design" />
	<meta name="author" content="" />
	<!-- Favicons (created with http://realfavicongenerator.net/)-->
	<link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-touch-icon-60x60.png">
	<link rel="icon" type="image/png" href="img/favicons/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="img/favicons/favicon-16x16.png" sizes="16x16">
	<link rel="manifest" href="img/favicons/manifest.json">
	<link rel="shortcut icon" href="img/favicons/favicon.ico">
	<meta name="msapplication-TileColor" content="#00a8ff">
	<meta name="msapplication-config" content="img/favicons/browserconfig.xml">
	<meta name="theme-color" content="#ffffff">
	<!-- Normalize -->
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<!-- Owl -->
	<link rel="stylesheet" type="text/css" href="css/owl.css">
	<!-- Animate.css -->
	<link rel="stylesheet" type="text/css" href="css/animate.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.1.0/css/font-awesome.min.css">
	<!-- Elegant Icons -->
	<link rel="stylesheet" type="text/css" href="fonts/eleganticons/et-icons.css">
	<!-- Main style -->
	<link rel="stylesheet" type="text/css" href="css/cardio.css">


</head>

<body>
	<div class="preloader">
		<img src="img/loader.gif" alt="Preloader image">
	</div>
	<nav class="navbar">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="img/blue_bird.png" data-active-url="img/blue_bird.png" alt=""></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right main-nav">
					<li><a href="/">Welcome</a></li>
					<li><a href="filter.html">Search</a></li>
					<li><a href="ad-hocQuery.html">Ad-hoc</a></li>
					<!--<li><a href="#" data-toggle="modal" data-target="#modal1" class="btn btn-blue"></a></li>-->
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<header id="intro">
		<div class="container projectInfo">
					<div class="row">
						<div class="col-md-12 text-center">
							<h1 class="light white typed"><b>PROJECT NAME: BlueSwift</b></h1>
							<span class="typed-cursor">|</span>
							<br />
							<div class = "container">
								<h6 class="white text-center">
									Team Members: Sridivya Kondapalli, LingFang Gao, Archana Yadawa,
									Daksha Divakar, Sandeep Samra
								</h6>
							</div>
							<h3 class = "light white"><b>Relations:</b></h3>
							<div class = "container">
								<div class = "jumbotron">
									<ol class = "orderedListTables" ng-controller = "individualCtrl">
										<li><a href ="individuals/Suites.html">Suite (124)</a></li>
										<li><a href ="individuals/Apartments.html">Apartment (40)</a></li>
										<li><a href ="individuals/Tenants.html">Tenant (137)</a></li>
										<li><a href ="individuals/Hobbies.html">Hobbies (153)</a></li>
										<li><a href ="individuals/SchoolSystems.html">School Systems (40)</a></li>
										<li><a href ="individuals/Grades.html">Grade (14)</a></li>
										<li><a href ="individuals/ModeOfTransportation.html">Mode Of Transportation (4)</a></li>
										<li><a href ="individuals/Bus.html">Bus (4)</a></li>
										<li><a href ="individuals/Train.html">Train (10)</a></li>
										<li><a href ="individuals/Stops.html">Stops (163)</a></li>
										<li><a href ="individuals/AptHasSuites.html">AptHasSuites (124)</a></li>
										<li><a href ="individuals/AptHasSchool.html">AptHasSchool (40)</a></li>
										<li><a href ="individuals/TenantHasSuite.html">TenantHasSuite (137)</a></li>
										<li><a href ="individuals/TenantHobbies.html">TenantHobbies (158)</a></li>
										<li><a href ="individuals/Stores.html">Stores (106)</a></li>
									</ol>
								</div>
							</div>
						</div>
					</div>
				</div>
	</header>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-6 text-center-mobile">
					<h3 class="white">Find Apartments Easily</h3>
					<h5 class="light regular light-white">Filter by different options.</h5>
					<a href="filter.html" class="btn btn-blue ripple trial-button">Start Searching</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- Holder for mobile navigation -->
	<div class="mobile-nav">
		<ul>
		</ul>
		<a href="#" class="close-link"><i class="arrow_up"></i></a>
	</div>
	<!-- Scripts -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/typewriter.js"></script>
	<script src="js/jquery.onepagenav.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
