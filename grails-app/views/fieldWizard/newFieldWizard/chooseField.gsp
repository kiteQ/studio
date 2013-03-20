<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="admin">
<g:set var="entityName"
	value="${message(code: 'screens.label', default: 'Screens')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<g:form name="screenForm" url="[controller:'fieldWizard', action:'newFieldWizard']">
		<fieldset>
			<legend>Feldauswahl</legend>
			<label>Auswahl:</label> 
			
			<table class="table table-striped">
				
				<tbody>
				<g:each in="${customerFieldsTemplateList}" status="i" var="template">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:radio name="chooseField" value="${template.id}"/></td>
						
						<td>${fieldValue(bean: template, field: "customerField")}</td>
						<td>${fieldValue(bean: template, field: "description")}</td>
					</tr>
				</g:each> 
				</tbody>
			</table>
			<p>
				<g:submitButton class="btn btn-primary" name="transitionToFieldDetails" value="Weiter" />
				<g:submitButton class="btn btn-primary" name="newFieldWizard" value="Back" />
				<g:submitButton class="btn btn-primary" name="newFieldWizard" value="Abbruch" />
			</p>
		</g:form>
	</div>
</body>
</html>