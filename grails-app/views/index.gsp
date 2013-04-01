<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="${resource(dir: 'css/bootstrap', file: 'bootstrap.css')}" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="${resource(dir: 'css/bootstrap', file: 'bootstrap-responsive.css')}" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

  </head>

  <body>

    <div class="container">
	<div class="row">
		<div class="span4 offset4 well">
			<legend>Please Sign In</legend>
			<g:hasErrors  bean="${loginCmd}">
          		<div class="alert alert-error">
                	<a class="close" data-dismiss="alert" href="#">×</a>Incorrect Username or Password!
            	</div>
            </g:hasErrors>
			<g:form name="loginForm" method="POST" url="[controller:'user', action:'login']" accept-charset="UTF-8">
			<g:textField required="true" id="email" class="span4" name="email" 
						 placeholder="Email" value="${fieldValue(bean:loginCmd, field:'email')}"/>
			<g:textField required="true" type="password" id="password" class="span4" name="password" 
						 placeholder="Password" value="${fieldValue(bean:loginCmd, field:'password')}"/>
            <label class="checkbox">
            	<input type="checkbox" name="remember" value="1"> Remember Me
            </label>
			<button type="submit" name="submit" class="btn btn-primary btn-block">Log in</button>
			</g:form>    
		</div>
	</div>

      <hr>

      <footer>
        <p>&copy; Company 2013</p>
      </footer>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <g:javascript src="lib/jquery-1.9.1.min.js"/>
    <g:javascript src="lib/bootstrap/bootstrap.min.js"/>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>
