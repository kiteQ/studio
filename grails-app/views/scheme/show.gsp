
<%@ page import="de.nextcommerce.core.Scheme" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'scheme.label', default: 'Scheme')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-scheme" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-scheme" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list scheme">
			
				<g:if test="${schemeInstance?.schemeName}">
				<li class="fieldcontain">
					<span id="schemeName-label" class="property-label"><g:message code="scheme.schemeName.label" default="Scheme Name" /></span>
					
						<span class="property-value" aria-labelledby="schemeName-label"><g:fieldValue bean="${schemeInstance}" field="schemeName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schemeInstance?.screen}">
				<li class="fieldcontain">
					<span id="screen-label" class="property-label"><g:message code="scheme.screen.label" default="Screen" /></span>
					
						<g:each in="${schemeInstance.screen}" var="s">
						<span class="property-value" aria-labelledby="screen-label"><g:link controller="screens" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${schemeInstance?.id}" />
					<g:link class="edit" action="edit" id="${schemeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
