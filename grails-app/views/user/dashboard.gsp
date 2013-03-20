<html>

<head>
<meta name='layout' content='admin' />
<title><g:message code='spring.security.ui.user.search' /></title>
<script>
	$(function() {
		$('.dropdown-toggle').dropdown()
		$('#myTab a[href="#profile"]').tab('show'); // Select tab by name
		$('#myTab a:first').tab('show'); // Select first tab
		$('#myTab a:last').tab('show'); // Select last tab
		$('#myTab li:eq(2) a').tab('show'); // Select third tab (0-indexed)
		$('#element').tooltip('show')
		$(".collapse").collapse()
	})
</script>

</head>

<body>
	<div>
		<div class="btn-group">
			<button class="btn">Action</button>
			<button class="btn dropdown-toggle" data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><g:link controller="user" action="create">Benutzer erstellen</g:link></li>
				<li><g:link controller="user" action="search">Benutzer suchen</g:link></li>
				<li><g:link controller="user" action="edit">Benutzer bearbeiten</g:link></li>
			</ul>
		</div>

	</div>
</body>
</html>