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
	<g:form class="form-horizontal" name="screenForm" url="[controller:'fieldWizard', action:'newFieldWizard']">
		<fieldset>
			<legend>Feldbschreibung</legend>
			
			<ul class="nav nav-tabs nav-stacked">
				<li>Lable:</li>
				<li><g:textField class="span3" name="customLable" value="${customLable}" /></li>
				<li>Beschreibung:</li>
				<li><g:textArea name="customDescription" value="${customDescription}" rows="5" cols="50" />
				</li>
			</ul>
			
			<p>
				<g:submitButton class="btn btn-primary" name="transitionToFieldFinish" value="Weiter" />
				<g:submitButton class="btn btn-primary" name="newFieldWizard" value="Back" />
				<g:submitButton class="btn btn-primary" name="newFieldWizard" value="Abbruch" />
			</p>
		</fieldset>
	</g:form>
	</div>
</body>
</html>