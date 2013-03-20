<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="admin">
<g:set var="entityName"
	value="${message(code: 'screens.label', default: 'Screens')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

	<div>
		<fieldset>
			<legend>Zusammenfassung</legend>
			<label>Auwahl:</label> ToDo --> ${fieldValue(bean: template, field: "fieldType")}
			<g:link controller="fieldWizard" action="newFieldWizard"
				event="transitionToFieldDetails">Weiter</g:link>
			<g:link controller="fieldWizard" action="newFieldWizard" event="back">Zurück</g:link>
			<g:link controller="fieldWizard" action="newFieldWizard"
				event="abort">Abbruch</g:link>
	</div>


</body>
</html>