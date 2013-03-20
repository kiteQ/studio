<head>
<meta charset="utf-8">
<title><g:layoutTitle default="main"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<link rel="stylesheet" href=" <g:createLinkTo dir='css' file='bootstrap.css' />" />

<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) { /* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
<link rel="stylesheet" href=" <g:createLinkTo dir='css' file='bootstrap-responsive.css' />" />


<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->


<g:layoutHead />
<r:layoutResources />
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#">Studio Version 0.1 Alpha</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Logged in as <a href="#" class="navbar-link"><sec:loggedInUserInfo field="username">none</sec:loggedInUserInfo></a>
					</p>
					<ul class="nav">
						<li class="active"><g:link controller="dashboard" action="show">Home</g:link></li>
						<li><g:link controller="type" action="show">Verwaltung</g:link></li>
						<li><a href="#contact">Marketing</a></li>
						<li><a href="#contact">Support</a></li>
					<li><g:link controller="configurator" action="show"
								plugin="publishingUtils">Konfigurator</g:link></li>
					</ul>
					<div class="nav-collapse collapse">
						<!-- .nav, .navbar-search, .navbar-form, etc -->
						<g:form class="navbar-search pull-left" url='[controller: "searchable", action: "index"]' id="searchableForm" name="searchableForm" method="get">
        					<g:textField class="search-query" name="q" value="${params.q}" size="50"/> 
        					
   						 </g:form>
					</div>

				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Shopdaten</li>
						<li class="active"><a href="#">Bestellungen</a></li>
						<li><a href="#">Kunden</a></li>
						<li><a href="#">Kundengruppen</a></li>

						<li class="nav-header">Katalog</li>
						<li><g:link controller="product" action="show">Artikel</g:link></li>
						<li><g:link controller="category" action="show">Kategorien</g:link></li>
						<li><a href="#">Hersteller</a></li>
						<li><a href="#">Produktgruppen</a></li>
						<li><a href="#">Varianten</a></li>
						<li class="nav-header">Import/Export</li>
						<li><a href="#">Importe</a></li>
						<li><a href="#">Exporte</a></li>
						<li class="nav-header">Shop-Konfiguration</li>
						<li><a href="#">Conten-Management</a></li>
						<li><a href="#">Aktionen</a></li>
						<li><a href="#">Promotions</a></li>
						<li><a href="#">E-Mails</a></li>
						<li><a href="#">Gutscheine</a></li>
						<li><a href="#">Versandarten</a></li>
						<li><a href="#">Bezahlarten</a></li>
						<li class="nav-header">Internationalisierung</li>
						<li><a href="#">Länder</a></li>
						<li><a href="#">Sprachen</a></li>
						<li><a href="#">Währung</a></li>
						<li class="nav-header">Suche</li>
						<li><a href="#">Stopwords</a></li>
						<li><a href="#">Thesaurus</a></li>
						<li><a href="#">Sonderseiten</a></li>
					</ul>
				</div>
				<!--/.well -->

			</div>
			<!--/span-->



			<div class="span9">
				<div class="hero-unit">
					<div class="page-header">
						<h1>
							Hallo Stefan Nowaczynski <small>Willkommen im Studio. Sie
								haben hier die Möglichkeit Ihren Shop zu konfigurieren.</small>
						</h1>
					</div>
				</div>


				<div class="row-fluid">
					<div class="span4">
						<h2>Shopdaten</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn" href="#">mehr &raquo;</a>
						</p>
					</div>
					<!--/span-->
					<div class="span4">
						<h2>Kataloge</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn" href="#">mehr &raquo;</a>
						</p>
					</div>
					<!--/span-->
					<div class="span4">
						<h2>Importe/Exporte</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn" href="#">mehr &raquo;</a>
						</p>
					</div>
					<!--/span-->
				</div>
				<!--/row-->
				<div class="row-fluid">
					<div class="span4">
						<h2>Shop-Konfiguration</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn" href="#">mehr &raquo;</a>
						</p>
					</div>
					<!--/span-->
					<div class="span4">
						<h2>Internationalisierung</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn" href="#">mehr &raquo;</a>
						</p>
					</div>
					<!--/span-->
					<div class="span4">
						<h2>Suche</h2>
						<p>Donec id elit non mi porta gravida at eget metus. Fusce
							dapibus, tellus ac cursus commodo, tortor mauris condimentum
							nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
							malesuada magna mollis euismod. Donec sed odio dui.</p>
						<p>
							<a class="btn" href="#">mehr &raquo;</a>
						</p>
					</div>
					<!--/span-->
				</div>
				<!--/row-->
			</div>
			<!--/span-->
		</div>
		<!--/row-->

		<hr>

		<footer>
			<p>&copy; Company 2013</p>
		</footer>

	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script type="text/javascript"
			src="http://platform.twitter.com/widgets.js"></script>

		<g:javascript src="jquery.js" />
		<g:javascript src="bootstrap-transition.js" />
		<g:javascript src="jbootstrap-alert.js" />
		<g:javascript src="jbootstrap-modal.js" />
		<g:javascript src="bootstrap-dropdown.js" />
		<g:javascript src="bootstrap-scrollspy.js" />
		<g:javascript src="bootstrap-tab.js" />
		<g:javascript src="bootstrap-tooltip.js" />

		<g:javascript src="bootstrap-popover.js" />
		<g:javascript src="bootstrap-button.js" />
		<g:javascript src="bootstrap-collapse.js" />
		<g:javascript src="bootstrap-carousel.js" />
		<g:javascript src="bootstrap-typeahead.js" />
		<g:javascript src="holder/holder.js" />
		<g:javascript src="google-code-prettify/prettify.js" />


		
	<r:layoutResources />
</body>
</html>
