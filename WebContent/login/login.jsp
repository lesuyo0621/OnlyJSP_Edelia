<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>FoodSurfing_Login</title>
	<!-- Custom CSS -->
	<link rel="stylesheet" type="text/css" href="style.css" />
	<!-- Google Font -->
	<link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core CSS -->
	<link type="text/css" rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- jQuery Library -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
    <!-- Bootstrap Core JS -->
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	
	<section class="container">
	    <section class="login-form">
		<form method="post" action="logincheck.jsp" role="login">
			<h3><b>FOOD</b> SURFING</h3>
			<div class="row">
				<div class="col-xs-12">
					<input type="id" name="_id" placeholder="ID" required class="form-control input-lg" />
					<span class="glyphicon glyphicon-user"></span>
				</div>
				<div class="col-xs-12">
					<input type="password" name="_password" placeholder="Password" required class="form-control input-lg" />
					<span class="glyphicon glyphicon-lock"></span>
				</div>
			</div>
			<div class="form-group less-space">
				<input type="checkbox" name="remember" value="1" /> Remember ID
			</div>
			<button type="submit" name="go" class="btn btn-lg btn-block btn-success">SIGN IN</button>
			<section>
				<a href="/SP/signup/authority.jsp">Create Account</a><br>
				<a href="">forgot ID?</a><br>
				<a href="">forgot Password?</a>
			</section>
		</form>
		</section>
	</section>
	
</body>
</html>