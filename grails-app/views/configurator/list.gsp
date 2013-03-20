
<%@ page import="de.nextcommerce.core.Configurator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'configurator.label', default: 'Configurator')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<g:render template="detailsNav"/>
		
		
		
		<div id="list-configurator" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${configuratorInstanceList}" status="i" var="configuratorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${configuratorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
