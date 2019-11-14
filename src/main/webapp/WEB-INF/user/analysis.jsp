<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<!DOCTYPE html>
<html>
  <head>
    	<base href="${basePath}">
    
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>统计分析</title>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		
		<link href="resources/css/exam.css" rel="stylesheet">
		<link href="resources/chart/morris.css" rel="stylesheet">
		<style>
			.table-striped a{
				text-decoration: underline;
			}
			
			.span-success{
				color:#5cb85c;
				font-weight:bolder;
			}
			
			.span-danger{
				color:#d9534f;
				font-weight:bolder;
			}
			
			.span-info{
				color:#5bc0de;
				font-weight:bolder;
			}
			h6{
				font-weight:bold !important; 
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
						<li class="active">
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
								<a href="usercenter.html"> <i class="fa fa-dashboard"></i> 用户中心 </a>
							</li>
							<li class="active">
								<a> <i class="fa fa-bar-chart-o"></i> 统计分析 </a>
							</li>
							<li>
								<a href="exam-history.html"> <i class="fa fa-history"></i> 考试历史 </a>
							</li>
						</ul>
					</div>
					<div class="col-xs-9">
						<div class="page-header">
							<h1><i class="fa fa-bar-chart-o"></i> 统计分析</h1>
						</div>
						<div class="page-content row">
							<div class="col-xs-12">
							<div id="question-list">
								
								<c:forEach items="${kparl }" var="item">
								<table class="table-striped table">
									<thead>
										<tr>
											<td colspan="4">
												<h6>${item.knowledgePointName }</h6>
												<span style="color:#428bca;">学习进度：<fmt:formatNumber value="${item.finishRate }" type="percent"/></span>
											</td>
										</tr>
										<tr>
											<td>题型</td><td>未做</td><td>做对题目</td><td>做错题目</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${item.typeAnalysis }" var="i">
											<tr>
												<td>${i.questionTypeName }</td>
												<td><span class="span-info">${i.restAmount }</span> </td>
												<td><span class="span-success">${i.rightAmount }</span></td>
												<td><span class="span-danger">${i.wrongAmount }</span> </td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot></tfoot>
								</table>
								</c:forEach>
								
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
		<script type="text/javascript" src="resources/chart/raphael-min.js"></script>
		<script type="text/javascript" src="resources/chart/morris.js"></script>
		<script type="text/javascript" src="resources/js/exam-finished.js"></script>
	</body>
</html>