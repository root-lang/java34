<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<base href="${basePath}">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>兄弟连java在线考试系统</title>
		
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		
		<link href="resources/css/exam.css" rel="stylesheet">
		<link href="resources/chart/morris.css" rel="stylesheet">
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

					 
							<div id="login-info-user">
								
								<a href="usercenter.html" id="system-info-account" target="_blank">张三</a>
								<span>|</span>
								<a href="login.html"><i class="fa fa-sign-out"></i> 退出</a>
							</div>
						 

					</div>
				</div>
			</div>
		</header>
		<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
			<div class="container">
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
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

		<!-- Slider starts -->

		<div>
			<!-- Slider (Flex Slider) -->

			<div class="container" style="min-height:500px;">

				<div class="row">
					<div class="col-xs-3">
						<ul class="nav default-sidenav">
							<li>
								<a href="paper-exam-finished.html"> <i class="fa fa-bar-chart-o"></i> 分析报告 </a>

							</li>
							<li class="active">
								<a href="exam-finish-report.html"> <i class="fa fa-file-text"></i> 详细解答 </a>
							</li>
						</ul>

					</div>
					<div class="col-xs-9">
						<div class="page-header">
							<h1 style="margin-left: -15px;"><i class="fa fa-file-text"></i> 详细解答 </h1>
						</div>
						<div class="page-content row">
							<div class="def-bk" id="bk-exampaper">

								<div class="expand-bk-content" id="bk-conent-exampaper">
									<div id="exampaper-header">
										<div id="exampaper-title">
											<i class="fa fa-send"></i>
											<span id="exampaper-title-name"> 模拟试卷 </span>

										</div>
										<!-- <div id="exampaper-desc" class="exampaper-filter">
											<input type="checkbox">
											<span>只显示错题</span>

										</div> -->
									</div>
									<ul id="exampaper-body" style="padding:0px;">
										<c:forEach items="${htmlStr }" var="str">
											${str }
										</c:forEach>										
									</ul>
									<div id="exampaper-footer" style="height: 187px;">

									</div>
								</div>

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
