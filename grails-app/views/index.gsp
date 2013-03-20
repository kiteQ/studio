<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Sign in &middot; Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
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
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">

   
  </head>

  <body>

    <div class="container">

      <g:form class="form-signin" name="login" url="[controller:'dashboard',action:'show']">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" placeholder="Email address">
        <input type="password" class="input-block-level" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
      </g:form>
      
      
     

    </div> <!-- /container -->

   	<!-- Le javascript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script type="text/javascript"
			src="http://platform.twitter.com/widgets.js"></script>

		<g:javascript src="jquery.js" />
		<g:javascript src="bootstrap-transition.js" />
		<g:javascript src="jbootstrap-alert.js" />
		<g:javascript src="jbootstrap-modal.js" />
		<g:javascript src="bootstrap-dropdown.js" />
		<g:javascript src="bootstrap-scrollspy.js" />
		<g:javascript src="bootstrap-tab.js" />
		<g:javascript src="bootstrap-tooltip.js" />

		<g:javascript src="bootstrap-popover.js" />
		<g:javascript src="bootstrap-button.js" />
		<g:javascript src="bootstrap-collapse.js" />
		<g:javascript src="bootstrap-carousel.js" />
		<g:javascript src="bootstrap-typeahead.js" />
		<g:javascript src="holder/holder.js" />
		<g:javascript src="google-code-prettify/prettify.js" />
	<r:layoutResources />

  </body>
</html>
