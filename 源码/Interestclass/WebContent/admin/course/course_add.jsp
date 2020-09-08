<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Basic -->
    	<meta charset="UTF-8" />
		<title>课程</title>

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
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/vendor/css/pace.preloader.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->
		<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />	
		<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-datepicker/css/datepicker-theme.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />
		<link href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
		
		<!-- Theme CSS -->
		<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->
		<link href="assets/css/style.css" rel="stylesheet" />		
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->		
		
		<script type="text/javascript" charset="utf-8" src="../admin/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="../admin/ueditor/ueditor.all.js"></script>
		<script type="text/javascript" charset="utf-8" src="../admin/ueditor/ueditor.all.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="../admin/ueditor/lang/zh-cn/zh-cn.js"></script>
		
		<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
		<script type="text/javascript">
			function logout(){
				if(confirm("您确定要退出系统吗？")){
					window.location.href="logout";
				}
			}
		</script>
		
		<script type="text/javascript">
			function formcheckForm(){
				var flag = false;
				var course_content_value = UE.getEditor('course_content_editor').getContent();
		        document.getElementById('course_content_id').value = course_content_value;//给course_content_value的input赋值
		        var course_images = document.getElementById('course_images').value;
		        if (course_images == '') {
		        	alert("课程图片不能为空！");
		        	flag = false;
		        } else {
		        	var course_name = document.getElementById('course_name').value;
		        	if (course_name == '') {
		        		alert("课程名称不能为空！");
			        	flag = false;
		        	} else {
		        		var course_price = document.getElementById('course_price').value;
		        		if (course_price == '') {
		        			alert("课程价格不能为空！");
				        	flag = false;
		        		} else {
		        			if (course_content_value == '') {
			        			alert("课程介绍不能为空！");
					        	flag = false;
			        		} else {
			        			alert("课程信息提交成功！");
			        			flag = true;
			    				var form_submit = document.getElementById('form-submit');
			    				form_submit.submit();
			        		}
		        		}
		        	}
		        }
		        return flag;
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
		<!-- End: Header -->
		
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
				</div>
		
				<!-- Main Page -->
				<div class="main ">
					<!-- Page Header -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">								
								<li><a><i class="icon fa fa-home"></i>Home</a></li>
								<li><a><i class="fa fa-list-alt"></i>课程管理</a></li>
								<li class="active"><i class="fa fa-indent"></i>${title}</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>${title}</h2>
						</div>					
					</div>
					<!-- End Page Header -->

					<div class="row">
						<div class="col-lg-12">				
							<div class="panel panel-default">
								<div class="panel-heading bk-bg-white">
									<h6><i class="fa fa-indent red"></i>${title}</h6>						
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>							
								<div class="panel-body bk-bg-white bk-padding-top-30 bk-padding-bottom-20">
									<form class="form-horizontal form-bordered" id="form-submit" method="post" action="coursesave" onsubmit="return formcheckForm();">
										<input type="hidden" name="courseId" value="${courseId}">
										<div class="form-group">
						                    <label class="col-md-3 control-label">课程封面</label>
						                    <div class="col-md-6">
					                        	<input id="course_images" type="text" class="form-control" name="course_images" placeholder="课程图片地址" value="${course.course_images}" readonly="readonly">
					                        	<div>
													<div id="upload_img_wrap_head" class="input-group " style="margin-top: .5em;">
														<c:if test="${course.course_images != null}">
															<img id="lastview" src="${course.course_images}" style="width:80px;">
														</c:if>
														<c:if test="${course.course_images == null}">
															<img src="../admin/images/noimage.png" onerror="" class="img-responsive img-thumbnail" width="80" />
														</c:if>
													</div>
													<div class="input-group " style="margin-top: .5em;">
														<span>
															<button class="layui-btn layui-btn-mini" type="button" id="course_images_upload_img_btn">选择图片</button>
															<!-- 加载编辑器的容器 -->
															<textarea id="adminuserimageuploadEditor" style="display: none;"></textarea>
														</span>
													</div>
												</div>
											</div>
											<!-- 使用ue -->
											<script type="text/javascript">
												// 实例化编辑器，这里注意配置项隐藏编辑器并禁用默认的基础功能。
												var adminuserimageuploadEditor = UE.getEditor("adminuserimageuploadEditor", {
													isShow: false,
													focus: false,
													enableAutoSave: false,
													autoSyncData: false,
													autoFloatEnabled:false,
													wordCount: false,
													sourceEditor: null,
													scaleEnabled:true,
													toolbars: [["insertimage", "attachment"]]
												});
																												 
												// 监听多图上传和上传附件组件的插入动作
												adminuserimageuploadEditor.ready(function () {
													adminuserimageuploadEditor.addListener("beforeInsertImage", _headbeforeInsertImage);
													adminuserimageuploadEditor.addListener("afterUpfile",_afterUpfile);
												});
																												 
												// 自定义按钮绑定触发多图上传和上传附件对话框事件
												document.getElementById('course_images_upload_img_btn').onclick = function () {
													var dialog = adminuserimageuploadEditor.getDialog("insertimage");
													dialog.title = '多图上传';
													dialog.render();
													dialog.open();
												};
												// 多图上传动作
												function _headbeforeInsertImage(t, result) {
													var imageHtml = '<li><img src="'+result[0].src+'" alt="'+result[0].alt+'" class="img-responsive img-thumbnail" width="80"></br>'+result[0].alt+'</li>';
													document.getElementById('upload_img_wrap_head').innerHTML = imageHtml;
													document.getElementById('course_images').value = result[0].src;//给course_images的input赋值
												}
											</script>
					                    </div>
					                    <div class="form-group">
                                             <label class="col-md-3 control-label">课程名称</label>
                                             <div class="col-md-6">
                                            	 <input type="text" class="form-control" id="course_name" name="course_name" placeholder="请输入课程名称" value="${course.course_name}">
                                        	 </div>
                                        </div>
                                        <div class="form-group">
                                             <label class="col-md-3 control-label">课程价格</label>
                                             <div class="col-md-6">
                                            	 <input type="text" class="form-control" id="course_price" name="course_price" placeholder="请输入课程价格" value="${course.course_price}">
                                        	 </div>
                                        </div>
                                        <div class="form-group">
						                    <label class="col-md-3 control-label">课程介绍</label>
						                    <div class="col-md-6" style="width:650px;">
												<div>
													<div style="height:auto">
														<input type="hidden" id="course_content_id" name="course_content" value="">
														<script id="course_content_editor" type="text/javascript" charset="utf-8">${course.course_content}</script>
													</div>
													<div class="help-block">内容，可上传图片</div>
												</div>
											</div>
											<script type="text/javascript" charset="utf-8">
												window.onload = function() {
													UE.getEditor('course_content_editor');
												}
											</script>
				                        </div>
                                        <div class="form-group" align="center">
					                         <button type="submit" class="btn btn-success">提交</button>  
					                         <button type="button" class="btn btn-default" onclick="javascript:history.back()">返回</button>
					                    </div>
									</form>
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
		<script src="assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>		
		<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
		<script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
		<script src="assets/plugins/maskedinput/js/jquery.maskedinput.js"></script>
		<script src="assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="assets/js/pages/form-elements.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>