<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Basic -->
    	<meta charset="UTF-8" />
		<title>课程报名列表</title>
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" />
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->
		<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
		<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />					
		
		<!-- Theme CSS -->
		<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="assets/css/style.css" rel="stylesheet" />
		<link href="assets/css/add-ons.min.css" rel="stylesheet" />
		
		<link href="css/page.css" rel="stylesheet">
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<script type="text/javascript">
			function logout(){
				if(confirm("您确定要退出系统吗？")){
					window.location.href="logout";
				}
			}
		</script>
		<script type="text/javascript">
			function buyDelete(buyId) {
				if (confirm("确定要删除这条记录吗?")) {
					$.post(
						"buydelete",
						{
							buyId : buyId
						},
						function(result) {
							var result = eval('(' + result + ')');
							if (result.error) {
								alert(result.error);
							} else {
								alert("删除成功！");
								window.location.href = "buylist";
							}
					});
				}
			}
		</script>
		<script type="text/javascript">
			function buysend(buyId) {
				if (confirm("确定要发货吗?")) {
					$.post(
						"buysend",
						{
							buyId : buyId
						},
						function(result) {
							var result = eval('(' + result + ')');
							if (result.error) {
								alert(result.error);
							} else {
								alert("发货成功！");
								window.location.href = "buylist";
							}
					});
				}
			}
		</script>
		
	</head>
	
	<body>
	
		<!-- Start: Header -->
		<div class="navbar" role="navigation">
			<div class="container-fluid container-nav">
				<!-- Navbar Action -->
				<ul class="nav navbar-nav navbar-actions navbar-left">
					<li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
				</ul>
				<!-- Navbar Right -->
				<div class="navbar-right">					
					<div class="userbox">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<c:if test="${currentAdminUser.role_id==1}">
								<figure class="profile-picture hidden-xs">
									<img src="assets/img/avatar.jpg" class="img-circle" alt="" />
								</figure>
							</c:if>
							<div class="profile-info">
								<span class="name">${currentAdminUser.adminuser_username }</span>
								<span class="role"><i class="fa fa-circle bk-fg-success"></i> 
									<c:if test="${currentAdminUser.role_id==1}">
										管理员
									</c:if>
								</span>
							</div>
							<i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">						
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%;">
											100%
										</div>
									</div>							
								</li>	
								<li>
									<a href="javascript:logout()"><i class="fa fa-power-off"></i> 退出系统</a>
								</li>
							</ul>
						</div>						
					</div>
					<!-- End Userbox -->
				</div>
				<!-- End Navbar Right -->
			</div>		
		</div>
		
		<!-- Start: Content -->
		<div class="container-fluid content">	
			<div class="row">
				<!-- Sidebar -->
				<div class="sidebar">
					<div class="sidebar-collapse">
						<!-- Sidebar Header Logo-->
						<div class="sidebar-header">
							<img src="assets/img/logo.png" class="img-responsive" alt="" />
						</div>
						<!-- Sidebar Menu-->
						<div class="sidebar-menu">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-sidebar">
									<c:if test="${currentAdminUser.role_id==1}">
										<li class="active">
											<a href="main">
												<i class="fa fa-laptop" aria-hidden="true"></i><span>欢迎页</span>
											</a>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-envelope" aria-hidden="true"></i><span>管理员管理</span>
											</a>
											<ul class="nav nav-children">
												<li><a href="adminuserlist"><span class="text"> 管理员管理</span></a></li>
												<li><a href="adminuserupdatepassword"><span class="text"> 修改密码</span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-tasks" aria-hidden="true"></i><span>关于我们 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="aboutlist"><span class="text"> 关于我们 </span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-calendar" aria-hidden="true"></i><span>课程管理</span>
											</a>
											<ul class="nav nav-children">
												<li><a href="courselist"><span class="text"> 课程管理</span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-copy" aria-hidden="true"></i><span>师资管理 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="teacherlist"><span class="text"> 师资管理</span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-list-alt" aria-hidden="true"></i><span>用户管理 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="userlist"><span class="text"> 用户管理 </span></a></li>
											</ul>
										</li>
										<li class="nav-parent">
											<a>
												<i class="fa fa-table" aria-hidden="true"></i><span>订单管理 </span>
											</a>
											<ul class="nav nav-children">
												<li><a href="buylist"><span class="text"> 订单管理 </span></a></li>
											</ul>
										</li>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
					<div class="sidebar-footer">					
						<div class="small-chart-visits">
							<div class="small-chart" id="sparklineLineVisits"></div>
						</div>
					</div>
					<!-- End Sidebar Footer-->
				</div>
				<!-- End Sidebar -->
						
				<!-- Main Page -->
				<div class="main sidebar-minified">			
					<!-- Page Header -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">								
								<li><a><i class="icon fa fa-home"></i>Home</a></li>
								<li><a><i class="icon fa fa-table"></i>订单管理</a></li>
								<li class="active"><i class="fa  fa-columns"></i>订单列表</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>订单列表</h2>
						</div>					
					</div>
					<!-- End Page Header -->
					
					<div class="row">		
						<div class="col-lg-12">
							<div class="panel panel-default bk-bg-white">
								<div class="panel-heading bk-bg-white">
									<h6>
	                                    <a type="button" class="btn btn-warning m-b-10" href="buylist">刷新</a>
									</h6>
									<div class="panel-actions" style="width:430px;margin-top:10px;margin-right:15px;">
										<form name="myForm" method="post" action="buylist">
											<input type="hidden" name="type" value="search">
		                                    <div class="form-group" style="float:left;width:180px;">
												<div class="col-md-9">
													<select id="searchType" name="searchType" class="form-control" size="1" style="width:180px;height:37px;">
														<option value="adminusername">用户名称</option>
													</select>
												</div>
											</div>
		                                    <div class="form-group" style="float:left;width:210px;margin-left:5px;">
												<div class="col-md-12">
													<div class="input-group">
														<input type="text" id="searchvalue" name="searchvalue" class="form-control" placeholder="请输入搜索条件" style="width:200px;height:37px;" />
														<span class="input-group-btn">
															<button type="submit" class="btn btn-success"><i class="fa fa-search"></i></button>
														</span>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="panel-body">
									<div class="table-responsive">	
										<table class="table table-striped table-bordered bootstrap-datatable datatable">
											<thead>
												<tr>
													<th>ID</th>
													<th>订单编号</th>
												    <th>用户名称</th>
												    <th>订单价格</th>
												    <th>下单时间</th>
												    <th>订单内容</th>
													<th>支付方式</th>
												    <th>订单状态</th>
													<th>操作</th>
												</tr>
											</thead>   
											<tbody>
												<c:forEach varStatus="i" var="buy" items="${buylist}">		
												<tr>
													<td>${i.count+(page-1)*pageSize }</td>
													<td>${buy.buy_sn}</td>
											        <td>${buy.adminuser_username}</td>
											        <td>${buy.buy_price}</td>
											        <td>${buy.buy_addtime}</td>
											        <td>${buy.buy_content}</td>
													<td>
														<c:if test="${buy.payment_id==1}">
															支付宝
														</c:if>
														<c:if test="${buy.payment_id==2}">
															微信
														</c:if>
													</td>
											        <td id="buy_status">
														<c:if test="${buy.buy_status==1}">
															未支付
														</c:if>
														<c:if test="${buy.buy_status==2}">
															待发货
														</c:if>
														<c:if test="${buy.buy_status==3}">
															待收货
														</c:if>
														<c:if test="${buy.buy_status==4}">
															待评价
														</c:if>
														<c:if test="${buy.buy_status==5}">
															已完成
														</c:if>
													</td>
													<td>
														<c:if test="${buy.buy_status==2}">
															<div style="float:left;margin-right:10px;">
																<a class="btn btn-xs btn-warning" onclick="buysend('${buy.buy_id}')">发货</a>
															</div>
														</c:if>
														<c:if test="${buy.buy_status==4}">
															<div style="float:left;margin-right:10px;">
																<a class="btn btn-xs btn-warning" onclick="buysend('${buy.buy_id}')">发货</a>
															</div>
														</c:if>
														<div style="float:left;">
											        		<a class="btn btn-xs btn-danger" onclick="buyDelete('${buy.buy_id}')">删除</a>
														</div>
											        </td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div align="center">
										<ul class="pagination">${pageCode }</ul>
									</div>
								</div>
							</div>
						</div>					
					</div>
					
				</div>
			</div>
		</div>
			
		
		<div class="clearfix"></div>		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>	
		<script src="assets/vendor/js/pace.min.js"></script>
		
		<!-- Plugins JS-->
		<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="assets/js/pages/table.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>