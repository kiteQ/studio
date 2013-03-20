<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="admin">
<g:set var="entityName"
	value="${message(code: 'screens.label', default: 'Screens')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<g:if test="${message}">
		<div class="message">
			${message}
		</div>
	</g:if>
	
	<div>
	
		<g:form name="screenForm" url="[controller:'fieldWizard', action:'newFieldWizard']">
			<fieldset>
				<fieldset>
					<legend>Screen auswählen</legend>
					<label>Auswahl:</label>
					<g:select id="screen" name="screen"
						from="${de.nextcommerce.core.Screens.list()}" optionKey="id"
						optionValue="screenName" required="true"
						value="${fieldsInstance?.screen?.id}" class="many-to-one"
						onchange="showparams(${fieldsInstance?.screen?.id}" />
				</fieldset>
				
				 <g:submitButton class="btn btn-primary" name="fieldwizard" value="Weiter" />
			</fieldset>
		</g:form>


	</div>
</body>
</html>
