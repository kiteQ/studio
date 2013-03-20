<%@ page import="de.nextcommerce.core.Product" %>


<ul class="nav nav-tabs">
	<li class="active"><a class="home" href="#"><g:message
				code="default.home.label" /></a></li>
	<li><g:link controller="product" action="create" params="[screen: '1']">Artikel anlegen</g:link></li>
	<li><a href="#">...</a></li>
</ul>