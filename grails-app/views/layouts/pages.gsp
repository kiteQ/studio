<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8">
<title><g:layoutTitle default="Pages" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link rel="stylesheet"
	href=" <g:createLinkTo dir='css' file='bootstrap.css' />" />

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
<link rel="stylesheet"
	href=" <g:createLinkTo dir='css' file='bootstrap-responsive.css' />" />

<g:layoutHead />
<r:layoutResources />
<ckeditor:resources/>
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
				<g:link class="brand" controller="dashboard" action="show">Studio Version 0.1 Alpha</g:link>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Logged in as <a href="#" class="navbar-link"><sec:loggedInUserInfo field="username">none</sec:loggedInUserInfo></a>
					</p>
					<ul class="nav">
						<li class="active"><g:link controller="dashboard" action="show">Home</g:link></li>
						<li><a href="#contact">Verwaltung</a></li>
						<li><a href="#contact">Marketing</a></li>
						<li><a href="#contact">Support</a></li>
						<li><g:link controller="configurator" action="show"
								plugin="publishingUtils">Konfigurator</g:link></li>
						
					</ul>
					<div class="nav-collapse navbar-search">
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
						<li><g:link controller="product" action="show" params="[screen: '1']">Artikel</g:link></li>
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
				<g:layoutBody />
			</div>
			<!--/row-->

			<hr>
		</div>
		<!--/.fluid-container-->
<script>	
$(function () {
	$('#example').tooltip(options)
})
</script>

		<!-- Le javascript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script type="text/javascript"
			src="http://platform.twitter.com/widgets.js"></script>

		<g:javascript src="jquery.js" />
		<g:javascript src="bootstrap.min.js" />
		<g:javascript src="bootstrap.js" />
		<g:javascript src="bootstrap-transition.js" />
		<g:javascript src="bootstrap-alert.js" />
		<g:javascript src="bootstrap-modal.js" />
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
		
	<r:layoutResources />
	
	

</body>
</html>


