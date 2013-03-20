
<%@ page import="de.nextcommerce.core.Screens" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'screens.label', default: 'Screens')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-screens" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-screens" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list screens">
			
				<g:if test="${screensInstance?.fields}">
				<li class="fieldcontain">
					<span id="fields-label" class="property-label"><g:message code="screens.fields.label" default="Fields" /></span>
					
						<g:each in="${screensInstance.fields}" var="f">
						<span class="property-value" aria-labelledby="fields-label"><g:link controller="fields" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${screensInstance?.scheme}">
				<li class="fieldcontain">
					<span id="scheme-label" class="property-label"><g:message code="screens.scheme.label" default="Scheme" /></span>
					
						<span class="property-value" aria-labelledby="scheme-label"><g:link controller="scheme" action="show" id="${screensInstance?.scheme?.id}">${screensInstance?.scheme?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${screensInstance?.screenName}">
				<li class="fieldcontain">
					<span id="screenName-label" class="property-label"><g:message code="screens.screenName.label" default="Screen Name" /></span>
					
						<span class="property-value" aria-labelledby="screenName-label"><g:fieldValue bean="${screensInstance}" field="screenName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${screensInstance?.id}" />
					<g:link class="edit" action="edit" id="${screensInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
