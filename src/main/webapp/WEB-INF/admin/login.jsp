<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<!DOCTYPE html>
<html>
	<head>
		<base href="/ssm5/"> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>兄弟连java在线考试系统</title>
		
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<style type="text/css">
			.form-group {
				margin-bottom: 5px;
				height: 59px;
			}

		</style>
	</head>
	<body>
		<header>
			<div class="container">
				<div class="row">
					<div class="col-xs-5">
						<div class="logo">
							<h1><a href="home.html"><img alt="" src="resources/images/logo.png"></a></h1>
						</div>
					</div>
					<div class="col-xs-7" id="login-info">
						 
								<a class="btn btn-primary" href="register.html">用户注册</a>
								<a class="btn btn-success" href="login.html">登录</a>
						 
					</div>
				</div>
			</div>
		</header>
		<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
			<div class="container">
				<nav class="collapse navbar-collapse bs-navbar-collapse"
				role="navigation">
					<ul class="nav navbar-nav">
						<li>
							<a href="home.html"><i class="fa fa-home"></i>主页</a>
						</li>
						<li>
							<a href="start-exam.html"><i class="fa fa-edit"></i>试题练习</a>
						</li>
						<li>
							<a href="usercenter.html"><i class="fa fa-dashboard"></i>会员中心</a>
						</li>
						<li>
							<a href="setting.html"><i class="fa fa-cogs"></i>个人设置</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Navigation bar ends -->

		<div class="content" style="margin-bottom: 100px;">

			<div class="container">
				<div class="row">

					<div class="col-md-12">
						<div class="lrform">
							<h5 style="text-align: center;">登录兄弟连java在线考试系统</h5>
							<div class="form">
								<!-- Login form (not working)-->
								<form class="form-horizontal" action="${pageContext.request.contextPath }/admin/login" method="post">
									<!-- Username -->
									<div class="form-group">
										<label class="control-label col-md-3" for="username">用户名</label>
										<div class="col-md-9">
											<input type="text" class="form-control" name="name">
										</div>
									</div>
									<!-- Password -->
									<div class="form-group">
										<label class="control-label col-md-3" for="password">密码</label>
										<div class="col-md-9">
											<input type="password" class="form-control" name="password">
										</div>
									</div>
									<!-- Buttons -->
									<div class="form-group">
										<!-- Buttons -->
										<div class="col-md-9 col-md-offset-3">
											<button type="submit" class="btn btn-default">登陆</button>
											<button type="reset" class="btn btn-default"> 取消 </button>
											<span class="form-message">${msg}</span>
										</div>
									</div>
								</form>
								没有账号? <a href="register.html">注册</a>
							</div>
						</div>

					</div>
				</div>

			</div>

		</div>

		<!-- Slider Ends -->

		<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<!-- Bootstrap JS -->
		<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>

	</body>
</html>