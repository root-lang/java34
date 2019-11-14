<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
  <head>
    	<base href="${basePath}">
    
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>练习历史</title>
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
							<li>
								<a href="analysis.html"> <i class="fa fa-bar-chart-o"></i> 统计分析 </a>
							</li>
							<li class="active">
								<a> <i class="fa fa-history"></i> 练习历史 </a>
							</li>
						</ul>
					</div>
					<div class="col-xs-9">
						<div class="page-header">
							<h1><i class="fa fa-history"></i> 练习历史</h1>
						</div>
						<div class="page-content row">
							<div id="question-list">
								<table class="table-striped table">
									<thead>
										<tr>
											<td>试卷名称</td><td>参加时间</td><td>得分</td><td>操作</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${hisList }" var="item">
											<tr>
											
												<td>
													<c:if test="${item.examPaperId == -1 }">
														<a href="paper-exam-finish-report.html" target="_blank" title="预览">${item.paperName }</a></td>
													</c:if>
													<c:if test="${item.examPaperId != -1 }">
														<a href="paper-exam-finish-report.html" target="_blank" title="预览">${item.paperName }</a></td>
													</c:if>
												<td>
													<fmt:formatDate value="${item.createTime }" pattern="yyyy-MM-dd"/>
												</td>
												<td>
													${item.pointGet }
												</td>
												<td>
													
													<c:if test="${item.examPaperId == -1 }">
														<a href="exam-finished.html" target="_blank" title="预览">查看报告</a></td>
													</c:if>
													<c:if test="${item.examPaperId != -1 }">
														<a href="paper-exam-finished.html" target="_blank" title="预览">查看报告</a></td>
													</c:if>
												</td>
											</tr>
										</c:forEach>
											
									</tbody><tfoot></tfoot>
								</table>
							</div>
							<div id="page-link-content">
								<ul class="pagination pagination-sm">${pageStr}</ul>
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