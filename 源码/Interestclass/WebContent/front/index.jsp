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
<title>兴趣班系统</title>
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
	var home_index = parseInt('1');
	var noEditTag = parseInt('');
	var form_group_id = parseInt('');
	var form_channel_id = parseInt('0');
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
	var css_channel_id = '0';
	var channel_type = parseInt('');
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
<link type="text/css" rel="stylesheet" href="wap/include/user_define_css.css" />
<link type="text/css" rel="stylesheet" href="plugins/public/css/animate.min.css" />
</head>
<body>
	<div class="webBody" state="close" id="webBody" data-curbg="wbg_0"
		data-ver=0>
		<style type="text/css">
.mainContainer {
	min-height: 300px;
}
</style>
		<div class="wrapper" id="wrapper" data-curbg="wbg_0">
			<link type="text/css" rel="stylesheet" href="css/wap/web_memberCenter.css" />
			<div class="mainContainer">
				<div class="addContainer q" id="add_container">
					<div visible="show" rel="r_layout_1" lock="lock" changes="0"
						id="row_7" class="customModuleRow ">
						<div class="customModule ">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_7" motype='13'>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_9" class="customModuleRow ">
						<div class="customModule  noHeadModule ">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_9" motype='44'>
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
													<div class="newSearch_Mo bgSetup">
														<a href="search.jsp">
															<div class="searchMo searchSetup">
																<em class="textfont">请输入搜索内容</em>
															</div>
														</a>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_9" class="customModuleRow ">
						<div class="customModule  noHeadModule ">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_9" motype='44'>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0"
						id="row_8" class="customModuleRow ">
						<div class="customModule  customFocusimgModule ">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_8" motype='12'>
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
																	<a href="#">banner</a>
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
													<div class="moveModule_2" id="move_module_7682063">
														<div class="movePicShow" rel="207" style="height: 207px;">
															<ul class="q">
																<li style="height: 207px;" smallpic="images/tmp1533783083_1743288_s.png">
																	<a href="#">
																		<img title="banner" src="images/tmp1533783083_1743288_s.png">
																	</a>
																</li>
															</ul>
														</div>
														<div class="bannerNav"></div>
													</div>
													<script>
														$(function() {
															aGlobalBannerHeight.m7682063 = parseInt(207);
															setBannerModuleHeight7682063();
															$(window)
																	.resize(
																			function() {
																				setBannerModuleHeight7682063()
																			})
														});
														function setBannerModuleHeight7682063() {
															var Banner = $("#move_module_7682063"), oBanner = $("#move_module_7682063 .movePicShow"), iPicMaxWidth = parseInt("768"), iWindowWidth = Banner
																	.parent()
																	.width();
															if (iWindowWidth > iPicMaxWidth) {
																var iRealityHeight = aGlobalBannerHeight.m7682063 * 2;
																var iRealityWidth = iPicMaxWidth
															} else if (iWindowWidth > 0) {
																iBfbWidth = (iWindowWidth / iPicMaxWidth)
																		.toFixed(2);
																var iRealityHeight = parseInt(aGlobalBannerHeight.m7682063
																		* iBfbWidth) * 2;
																var iRealityWidth = iWindowWidth
															}
															oBanner
																	.height(iRealityHeight);
															oBanner
																	.find("li")
																	.height(
																			iRealityHeight);
															Banner
																	.width(iRealityWidth);
															Banner
																	.find("li")
																	.width(
																			iRealityWidth)
														}
													</script>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_10" class="customModuleRow ">
						<div class="customModule  noHeadModule  load-animate" data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_10" motype='50'>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_11" class="customModuleRow ">
						<div class="customModule  load-animate" data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo " id="Mo_11" motype='7'>
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
																	<a href="video">推荐兴趣班</a>
																</strong>
															</td>
															<td class="MoNameR"></td>
														</tr>
													</tbody>
												</table> 
												<span class="MoMore"> 
													<a href="frontcourse">查看全部兴趣班</a>
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
													<div class="exhibition_map" id="prolist_11041462">
														<div class="exhibition_demo" id="contents">
															<ul class="demo1">
																<c:forEach varStatus="i" var="course" items="${courselist}">
																	<li style="width: 50%">
																		<div class="inner list_setup">
																			<a href="courseinfo?course_id=${course.course_id}">
																				<span class="pic" style="">
																					<img class="lazy-loading" data-original-src="${course.course_images}">
																				</span>
																			</a>
																			<div class="pic_text">
																				<a href="courseinfo?course_id=${course.course_id}">
																					<p class="text_list_bk"></p>
																					<em class="textfont text_list_bk">
																						${course.course_name}
																					</em>
																				</a>
																			</div>
																		</div>
																	</li>
																</c:forEach>
															</ul>
															<ul class="demo2"></ul>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_12" class="customModuleRow ">
						<div class="customModule  customModuleButgroup  load-animate" data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_12" motype='17'>
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
																	<a href="frontcourse">查看全部兴趣班</a>
																</strong>
															</td>
															<td class="MoNameR"></td>
														</tr>
													</tbody>
												</table> 
												<span class="MoMore"> 
													<a href="#"></a>
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
													<div class="butgroupModule">
														<ul class="butgroupList q">
															<li id="but_item_10831199" class="butItem  newBbutItem">
																<div class="list_setup" style="height: 50px;">
																	<a class="itemA" data-height="50" href="#" style="border-top:; border-right:; border-bottom:; border-left:;">
																		<span class=" imgicon  " style="left: 0.5%; top: 0%;" data-picwidth="280" data-picheight="70" data-left="0.5">
																			<img src="images/6960528_1533783346.png" width="120" height="30">
																		</span>
																	</a>
																</div>
															</li>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_13" class="customModuleRow ">
						<div class="customModule  load-animate" data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo " id="Mo_13" motype='6'>
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
																	<a href="fronttacher">师资团队</a>
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
													<div class=" proListmodule_1 " id="prolist_11041534">
														<ul class="q">
															<c:forEach varStatus="i" var="teacher" items="${teacherlist}">
																<li class="list_setup">
																	<div class="pic" style="width: 100px; height: 100px;">
																		<i class="hook"></i>
																		<a href="#">
																			<img class="lazy-loading" data-original-src="${teacher.teacher_images}" />
																		</a>
																	</div>
																	<div class="proAttr">
																		<h3>
																			<a href="#" class="proName urlfont">
																				${teacher.teacher_name}-${teacher.teacher_professor}
																			</a>
																		</h3>
																		<div class="proIntro textfont">
																			<a href="#">
																				${teacher.teacher_content}
																			</a>
																		</div>
																	</div>
																</li>
															</c:forEach>
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
					<div visible="show" rel="r_layout_1" lock="lock" changes="0" id="row_15" class="customModuleRow ">
						<div class="customModule  customModuleButgroup  load-animate" data-animate-name="fadeInUp" data-animate-duration="1.00s" data-animate-delay="0.10s">
							<!--moCss-->
							<div class="Mo Mo_1017" id="Mo_15" motype='17'>
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
																	<a href="fronttacher">查看全部师资</a>
																</strong>
															</td>
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
													<div class="butgroupModule">
														<ul class="butgroupList q">
															<li id="but_item_10831240" class="butItem  newBbutItem">
																<div class="list_setup" style="height: 50px;">
																	<a class="itemA" data-height="50" href="#" style="border-top:; border-right:; border-bottom:; border-left:;">
																		<span class=" imgicon  " style="left: 0.5%; top: 0%;" data-picwidth="280" data-picheight="70" data-left="0.5">
																			<img src="images/6961406_1533784759.png" width="120" height="30">
																		</span>
																	</a>
																</div>
															</li>
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
			$(function(){
			    img_size(11041462,0,0);
			});
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
		<!-- 底部 -->
		<!-- 移动到index_min.tpl -->
		<!--  -->
		<!--文章详细页不显示底部-->
		<div class="toolMenuBg" id="tool_menu_bg"></div>
		<div class="toolMenu" id="tool_menu">
			<menu class="toolBut q ">
				<li id="toolHome" cur sorts="13" style="width: 25%;">
					<a id="index_link" class="cur" href="mainindex">
						<b class="icon" id="icon_677535"> 
							<img src="images/icon_home_on.png" width="20" height="20" />
						</b> 
						<strong>首页</strong>
					</a>
				</li>
				<li id="toolTel" sorts="12" style="width: 25%;">
					<a href="tel:13212345678">
						<b class="icon" id="icon_677532"> 
							<img src="images/6960112_1533782749.png" width="20" height="20" />
						</b> 
						<strong>电话</strong>
					</a>
				</li>
				<li id="toolShoppingCar" sorts="11" style="width: 25%;">
					<a href="frontcart"> 
						<b class="icon" id="icon_408596"> 
							<img src="images/16164614_1570612083.png" width="20" height="20">
						</b> 
						<strong>购物</strong>
					</a>
				</li>
				<li id="toolMember" sorts="9" style="width: 25%;">
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
		<img id="wapCountImg" src="" style="width: 0; height: 0; display: block;"> 
		<img id="countTimeImg" src="" style="width: 0; height: 0; display: block;">
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
