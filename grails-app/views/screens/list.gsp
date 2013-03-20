
<%@ page import="de.nextcommerce.core.Screens" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'screens.label', default: 'Screens')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<g:render template="detailsNav"/>
		
		
		
		<div id="list-screens" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<th><g:message code="screens.scheme.label" default="Scheme" /></th>
					
						<g:sortableColumn property="screenName" title="${message(code: 'screens.screenName.label', default: 'Screen Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${screensInstanceList}" status="i" var="screensInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${screensInstance.id}">${screensInstance.scheme.schemeName}</g:link></td>
					
						<td>${fieldValue(bean: screensInstance, field: "screenName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${screensInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
