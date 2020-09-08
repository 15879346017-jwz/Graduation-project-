<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="wap-font-scale" content="no">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta content="telephone=no" name="format-detection" />
<meta content="email=no" name="format-detection" />
<title>关于我们</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<script type="text/javascript">
	var wapContainerJson = {};
	var show_module_js = {
		"formUploadFile" : 0,
		"show_statistics_js" : 0,
		"show_biaodan_js" : 0,
		"show_container_js" : 0,
		"show_oto_js" : 0,
		"show_group_js" : 0,
		"show_thread_js" : 0,
		"show_forums_js" : 0,
		"show_shops_js" : 0
	};
	var city_setInfo_json = {
		"del_city" : "1"
	};
	var formUploadFile = parseInt('');
	var wapClassifyJson = '';
	var home_index = parseInt('');
	var noEditTag = parseInt('0');
	var form_group_id = parseInt('');
	var form_channel_id = parseInt('17990977');
</script>
<link type="text/css" rel="stylesheet" href="css/wap/base.css" />
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">
<meta content="true" name="HandheldFriendly">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="standard" name="layoutmode">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="webkit" name="renderer">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no ,target-densitydpi=medium, viewport-fit=cover" name="viewport" id="viewport" />
<meta name="applicable-device" content="mobile" />

<script type="text/javascript">
	var user_name = "new147";
	var aGlobalBannerHeight = {};
	var is_bianji = parseInt("0");
	var wap_zz_userid = "";
	var wap_is_app = parseInt("0");
	var wap_is_ios = parseInt("0");
	var wap_userid = "1743288";
	var css_channel_id = '17990977';
	var channel_type = parseInt('39');
	var APP_V = '0';
	var AGENT_ID = '0';
	var IS_NEWS_ARTICEL = parseInt('0');
	var LANGUAGE_TYPE = parseInt('0');
	var is_wap_view = parseInt(0);
	var show_check = parseInt(0);
	var use_wxchat_map = 0;
</script>
<script type="text/javascript" src="Language/Zh-cn/Language.js"></script>
<script type="text/javascript" src="plugins/public/js/cookies.js"></script>
<script src="plugins/public/js/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="plugins/wap/swiper/swiper-4.3.3.min.css" />
<link type="text/css" rel="stylesheet" href="plugins/public/js/slidingVerification/sliding_verification_style.css" />
<link type="text/css" rel="stylesheet" href="css/wap/web_frame.css" />
<link type="text/css" rel="stylesheet" href="css/wap/wxShareAlert.css" />
<link type="text/css" rel="stylesheet" id="webSkinCss" href="templates/wapother25/css/webskin.css" />
<link type="text/css" rel="stylesheet" href="templates/wapother25/skin_25/style.css" />
<!--change_top_tpl-->
<link type="text/css" rel="stylesheet" href="css/wap/new/index.css">
<link type="text/css" rel="stylesheet" href="css/wap/icomoon_style.css" />
<!-- 图标文字 -->
<link rel="stylesheet" type="text/css" href="css/tubiao/iconfont.css">
<link rel="stylesheet" type="text/css" href="css/tubiao/iconfontNew.css">
<!-- end -->
<link type="text/css" rel="stylesheet" href="images/wap/web_style/base_module_style.min.css" />
<link type="text/css" rel="stylesheet" href="wap/include/article.css" />
<link type="text/css" rel="stylesheet" href="plugins/public/css/animate.min.css" />
<link rel="stylesheet" href="css/page.css">

</head>
<body>
	<div class="webBody" state="close" id="webBody" class="bodystyle" data-curbg="wbg_0" data-ver=1>
		<style type="text/css">
			.mainContainer {
				overflow: hidden;
				min-height: 300px;
			}
		</style>
		<div class="wrapper" id="wrapper" data-curbg="wbg_0">
			<style type="text/css">
				.new_mainContainer_tit {
					width: 100%;
					height: 40px;
					border-bottom: 1px solid #D9D9D9;
					background-color: #FFF;
					position: fixed;
					top: 0;
					z-index: 999;
					float: left;
					left: 0;
				}
				
				.new_mainContainer_tit  .return {
					position: absolute;
					left: 0px;
					top: 4px;
					color: #999;
					font-size: 26px;
				}
				
				.new_notice {
					width: 70%;
					line-height: 40px;
					margin: 0 auto;
					text-align: center;
					font-size: 1.2em;
					color: #333;
					overflow: hidden;
					text-overflow: ellipsis;
					white-space: nowrap;
				}
				
				.new_mainContainer_tit .share {
					position: absolute;
					right: 10px;
					top: 7px;
					color: #999;
					font-size: 22px;
				}
				
				.new_mainContainer_tit .vip_login {
					width: 22px;
					height: 26px;
					position: absolute;
					right: 45px;
					top: 7px;
					color: #999;
					font-size: 22px;
				}
			</style>
			<div style="height: 41px; display: none"></div>
			<div class="new_mainContainer_tit" id="blankHead" visible="hide" style="display: none">
				<a href="javascript:history.back(-1);" class="return FT-page FT-page-fanhui"></a>
				<div class="new_notice">关于我们</div>
				<a href="#" id="productFenxiang" class="share FT-page FT-page-fenxiang"></a>
			</div>
			<div class="mainContainer">
				<div class="addContainer q" id="add_container">
					<div visible="show" rel="r_layout_1" lock="lock" changes="0"
						id="row_17" class="customModuleRow ">
						<div class="customModule ">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_17" motype='13'>
								<table class="MoT">
									<tbody>
										<tr>
											<td class="MoTL"></td>
											<td class="MoTM"></td>
											<td class="MoTR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoHead">
									<tbody>
										<tr>
											<td class="MoHeadL"></td>
											<td class="MoHeadM">
												<table class="MoName">
													<tbody>
														<tr>
															<td class="MoNameL"></td>
															<td class="MoNameM"><strong class="NameTxt">
																	<a href="#">logo</a>
															</strong></td>
															<td class="MoNameR"></td>
														</tr>
													</tbody>
												</table> <span class="MoMore"> <a href="#">&#26356;&#22810;</a>
											</span>
											</td>
											<td class="MoHeadR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoBody">
									<tbody>
										<tr>
											<td class="MoBodyL"></td>
											<td class="MoBodyM">
												<div class="MoBodyC">
													<div class="freeEditModule baiduEditorTxtModule">
														<p style="text-align: center;">
															<img src="images/1533782866513528.png" title="1533782866513528.png" alt="logo.png" />
														</p>
													</div>
												</div>
											</td>
											<td class="MoBodyR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoB">
									<tbody>
										<tr>
											<td class="MoBL"></td>
											<td class="MoBM"></td>
											<td class="MoBR"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_19" class="customModuleRow ">
						<div class="customModule  noHeadModule ">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_19" motype='44'>
								<table class="MoT">
									<tbody>
										<tr>
											<td class="MoTL"></td>
											<td class="MoTM"></td>
											<td class="MoTR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoHead">
									<tbody>
										<tr>
											<td class="MoHeadL"></td>
											<td class="MoHeadM">
												<table class="MoName">
													<tbody>
														<tr>
															<td class="MoNameL"></td>
															<td class="MoNameM"><strong class="NameTxt">
																	<a href="#"></a>
															</strong></td>
															<td class="MoNameR"></td>
														</tr>
													</tbody>
												</table> <span class="MoMore"> <a href="#">&#26356;&#22810;</a>
											</span>
											</td>
											<td class="MoHeadR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoB">
									<tbody>
										<tr>
											<td class="MoBL"></td>
											<td class="MoBM"></td>
											<td class="MoBR"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_23" class="customModuleRow ">
						<div class="customModule  noHeadModule" data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_23" motype='50'>
								<table class="MoT">
									<tbody>
										<tr>
											<td class="MoTL"></td>
											<td class="MoTM"></td>
											<td class="MoTR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoHead">
									<tbody>
										<tr>
											<td class="MoHeadL"></td>
											<td class="MoHeadM">
												<table class="MoName">
													<tbody>
														<tr>
															<td class="MoNameL"></td>
															<td class="MoNameM"><strong class="NameTxt">
																	<a href="#"></a>
															</strong></td>
															<td class="MoNameR"></td>
														</tr>
													</tbody>
												</table> <span class="MoMore"> <a href="#">&#26356;&#22810;</a>
											</span>
											</td>
											<td class="MoHeadR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoBody">
									<tbody>
										<tr>
											<td class="MoBodyL"></td>
											<td class="MoBodyM">
												<div class="MoBodyC">
													<div class="showcase_Mo bgSetup">
														<div class="showcase">
															<ul>
																<li class="liW wThree">
																	<a href="frontcourse" class="listSetup">
																		<span class="pic picH">
																			<img src="images/6960433_1533783207.png">
																			<div class="textBg"></div>
																		</span>
																		<p class="textfont">兴趣班</p>
																	</a>
																</li>
																<li class="liW wThree">
																	<a href="fronttacher" class="listSetup">
																		<span class="pic picH">
																			<img src="images/6960423_1533783197.png">
																			<div class="textBg"></div>
																		</span>
																		<p class="textfont">师资团队</p>
																	</a>
																</li>
																<li class="liW wThree">
																	<a href="frontabout" class="listSetup">
																		<span class="pic picH">
																			<img src="images/6960406_1533783168.png">
																			<div class="textBg"></div>
																		</span>
																		<p class="textfont">关于我们</p>
																	</a>
																</li>
																<li class="liW wThree">
																	<a href="frontuser" class="listSetup">
																		<span class="pic picH">
																			<img src="images/6960395_1533783157.png">
																			<div class="textBg"></div>
																		</span>
																		<p class="textfont">会员中心</p>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</td>
											<td class="MoBodyR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoB">
									<tbody>
										<tr>
											<td class="MoBL"></td>
											<td class="MoBM"></td>
											<td class="MoBR"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_25" class="customModuleRow ">
						<div class="customModule " data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo " id="Mo_25" motype='6'>
								<table class="MoT">
									<tbody>
										<tr>
											<td class="MoTL"></td>
											<td class="MoTM"></td>
											<td class="MoTR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoHead">
									<tbody>
										<tr>
											<td class="MoHeadL"></td>
											<td class="MoHeadM">
												<table class="MoName">
													<tbody>
														<tr>
															<td class="MoNameL"></td>
															<td class="MoNameM">
																<strong class="NameTxt">
																	<a href="#">关于我们</a>
																</strong>
															</td>
															<td class="MoNameR"></td>
														</tr>
													</tbody>
												</table> 
												<span class="MoMore"> 
													<a href="#">&#26356;&#22810;</a>
												</span>
											</td>
											<td class="MoHeadR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoBody">
									<tbody>
										<tr>
											<td class="MoBodyL"></td>
											<td class="MoBodyM">
												<div class="MoBodyC">
													<div class=" proListmodule_1 " id="prolist_11041810">
														<ul class="q">
															${about.about_content}
														</ul>
													</div>
												</div>
											</td>
											<td class="MoBodyR"></td>
										</tr>
									</tbody>
								</table>
								<table class="MoB">
									<tbody>
										<tr>
											<td class="MoBL"></td>
											<td class="MoBM"></td>
											<td class="MoBR"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		</script>
		<script src="js/wap/wap_module_data.js"></script>
		<script src="plugins/wap/swiper/swiper-4.3.3.min.js"></script>
		<script type="text/javascript" src="plugins/wap/js/swipe.min.js"></script>
		<script type="text/javascript" src="plugins/public/js/slidingVerification/sliding_tn_code.js"></script>
		<script type="text/javascript" src="js/wap/ajax_info.js"></script>
		<script src="js/md5.js"></script>
		<script type="text/javascript" src="js/wap/public.js"></script>
		<!--change_top_tpl-->
		<script type="text/javascript" src="js/wap/new_wap_public.js"></script>
		<script type="text/javascript" src="js/wap/wapShare.js"></script>
		<script type="text/javascript" src="js/wap/doc_json.js"></script>
		<div class="toolMenuBg" id="tool_menu_bg"></div>
		<div class="toolMenu" id="tool_menu">
			<menu class="toolBut q ">
				<li id="toolHome" cur sorts="13" style="width: 33.3%;">
					<a id="index_link" class="cur" href="mainindex">
						<b class="icon" id="icon_677535"> 
							<img src="images/icon_home_on.png" width="20" height="20" />
						</b> 
						<strong>首页</strong>
					</a>
				</li>
				<li id="toolTel" sorts="12" style="width: 33.3%;">
					<a href="tel:13212345678">
						<b class="icon" id="icon_677532"> 
							<img src="images/6960112_1533782749.png" width="20" height="20" />
						</b> 
						<strong>电话</strong>
					</a>
				</li>
				<li id="toolMember" sorts="9" style="width: 33.3%;">
					<a href="frontuser"> 
						<b class="icon" id="icon_677536"> 
							<img src="images/icon_user_off.png" width="20" height="20" />
						</b> 
						<strong>我的</strong>
					</a>
				</li>
			</menu>
		</div>
		<span class="backTop" id="back_top"><em></em></span>
		<!--微名片详细页不显示导航-->
		<script type="text/javascript">
			$(function(){
			if($(".main").length){
			$(".main").css("min-height",$(window).height());
			}
			})
		</script>
		<div class="Nzz" id="Nzz"></div>
		<script language="javascript">
			var windowW = $(window).width(),windowH = $(window).height();
			$(window).resize(function(){
			setTimeout(function(){
			ButGroupLeftPosition();
			},500);
			})
			$(function(){
			ButGroupLeftPosition();
			});
		
		</script>

		<!--个人中心不引入侧边栏-->
		<!--样式文件-->
		<script type="text/javascript">
			$(function(){
				var a_len = $("#login_a").children("a").length;
				if (a_len ==1){
				$(".more_div_a a").css("margin","0 50px");
				}
				if (a_len == 0){
				$(".more_login_div").remove();
				}
			})
		</script>
		<!-- <script>ipv();function ipv(){$.ajax({type: 'POST',dataType: 'json',url: '/Public/UserOperate.php',data: {username: 'new147', mobile: 1, rid: 1, type: 1, opt: 'ipv', t: Date.parse(new Date())},success: function(data) {}});}</script> -->
		<script src="js/site_stats.js" id="SiteStats" data-val="1"></script>
		<!-- 绑定手机 -->
		<img id="wapCountImg" src=""
			style="width: 0; height: 0; display: block;"> <img
			id="countTimeImg" src="" style="width: 0; height: 0; display: block;">

	</div>
	<script>
		$(function(){
			newMenu();
			$(window).size(function(){
			newMenu();
			})
		})
	</script>
</body>
</html>
