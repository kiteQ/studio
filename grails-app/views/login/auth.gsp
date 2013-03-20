
<meta charset="utf-8">
<title>Sign in &middot; Twitter Bootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link rel="stylesheet"
	href=" <g:createLinkTo dir='css' file='bootstrap.css' />" />

<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>
<link rel="stylesheet"
	href=" <g:createLinkTo dir='css' file='bootstrap-responsive.css' />" />

</head>

<body>
	<div class="container">

		<form action='${postUrl}' method='POST' id='loginForm'
			class="form-signin" autocomplete='off'>
			<h3 class="form-signin-heading">Bitte melden Sie sich an</h3>
			<p>
				
				<label for='username'><g:message
						code="springSecurity.login.username.label" />:</label> <input type="text" required
					class="input-block-level" placeholder="Email address" 
					name='j_username' id='username'
					value="${session['SPRING_SECURITY_LAST_USERNAME']}" />
			</p>

			<p>
				<label for='password'><g:message
						code="springSecurity.login.password.label" />:</label> <input
					type="password" required class="input-block-level" placeholder="Password"
					name='j_password' id='password' />
			</p>

			<label class="checkbox"> <input type='checkbox' class='chk'
				name='${rememberMeParameter}' id='remember_me'
				<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label
				for='remember_me'><g:message
						code="springSecurity.login.remember.me.label" /></label>
			</label>


			<p>
				<input type='submit' id="submit" class="btn btn-large btn-primary"
					value='${message(code: "springSecurity.login.button")}' />
			</p>
			
		</form>
		<g:if test='${flash.message}'>

			<div class="alert alert-block">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<h4>Warning!</h4>
				${flash.message}
			</div>

		</g:if>

	</div>
	<!-- /container -->

	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>
