
<%@ page import="de.nextcommerce.core.Scheme" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'scheme.label', default: 'Scheme')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<g:render template="detailsNav"/>
		
		
		
		<div id="list-scheme" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="schemeName" title="${message(code: 'scheme.schemeName.label', default: 'Scheme Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${schemeInstanceList}" status="i" var="schemeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${schemeInstance.id}">${fieldValue(bean: schemeInstance, field: "schemeName")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${schemeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
