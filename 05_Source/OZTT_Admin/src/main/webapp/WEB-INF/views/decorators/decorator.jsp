<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <%@ include file="../commoncssHead.jsp"%>
  <title><sitemesh:write property='title' /></title>
  <sitemesh:write property='head' />
  
</head>
<!-- Head END -->
<script>
	
</script>

<!-- Body BEGIN -->
<body>
<!-- BEGIN HEADER -->
<div class="header navbar">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="header-inner">
		<!-- BEGIN LOGO -->
		<a class="navbar-brand" href="index.html">
			<img src="${ctx}/images/logo-letter.png" alt="logo" class="img-responsive" width="80px"/>
		</a>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<img src="${ctx}/assets/img/menu-toggler.png" alt=""/>
		</a>
		
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<ul class="nav navbar-nav pull-right">

			<!-- BEGIN USER LOGIN DROPDOWN -->
			<li class="dropdown user">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" src="${ctx}/assets/img/avatar1_small.jpg"/>
					<span class="username">
						 Bob Nilson
					</span>
					<i class="fa fa-angle-down"></i>
				</a>
				<ul class="dropdown-menu">
					<li>
						<a href="extra_profile.html">
							<i class="fa fa-user"></i> <fmt:message key="OZ_TT_AD_MN_myprofile" />
						</a>
					</li>
					<li>
						<a href="javascript:;" id="trigger_fullscreen">
							<i class="fa fa-arrows"></i> <fmt:message key="OZ_TT_AD_MN_fullScreen" />
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/OZ_TT_AD_LG/logout">
							<i class="fa fa-key"></i> <fmt:message key="OZ_TT_AD_MN_logout" />
						</a>
					</li>
				</ul>
			</li>
			<!-- END USER LOGIN DROPDOWN -->
		</ul>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->

<!-- LEFT MENU START -->
<div class="page-container">
	<div class="page-sidebar-wrapper">

	<div class="page-sidebar navbar-collapse collapse">

		<!-- BEGIN SIDEBAR MENU -->

		<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">

			<li class="sidebar-toggler-wrapper">

				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				<div class="sidebar-toggler hidden-phone">

				</div>

				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

			</li>

			<li class="start">
				<a href="${ctx}/main/init">
					<i class="fa fa-home"></i>
					<span class="title">
						<fmt:message key="OZ_TT_AD_MN_myinfo" />
					</span>
				</a>
			</li>
			<li id="orderLi">
				<a href="javascript:;">
					<i class="fa fa-shopping-cart"></i>
					<span class="title">
						<fmt:message key="OZ_TT_AD_MN_order" />
					</span>
					<span class="arrow ">
					</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="${pageContext.request.contextPath}/OZ_TT_AD_OL/init">
							<i class="fa fa-list-ol"></i>
							<fmt:message key="OZ_TT_AD_MN_orderList" />
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="javascript:;">
					<i class="fa fa-barcode"></i>
					<span class="title">
						<fmt:message key="OZ_TT_AD_MN_goods" />
					</span>
					<span class="arrow ">
					</span>
				</a>
			</li>
			<li>
				<a href="javascript:;">
					<i class="fa fa-sitemap"></i>
					<span class="title">
						<fmt:message key="OZ_TT_AD_MN_classfication" />
					</span>
					<span class="arrow ">
					</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="${pageContext.request.contextPath}/OZ_TT_AD_CL/init">
							<i class="fa fa-list-ol"></i>
							<fmt:message key="OZ_TT_AD_CL_title" />
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/OZ_TT_AD_CD/new">
							<i class="fa fa-plus"></i>
							<fmt:message key="OZ_TT_AD_CD_title" />
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="javascript:;">
					<i class="fa fa-group"></i>
					<span class="title">
						<fmt:message key="OZ_TT_AD_MN_group" />
					</span>
					<span class="arrow ">
					</span>
				</a>
			</li>
			<li>
				<a href="javascript:;">
					<i class="fa fa-user"></i>
					<span class="title">
						<fmt:message key="OZ_TT_AD_MN_member" />
					</span>
					<span class="arrow ">
					</span>
				</a>
			</li>
		</ul>
		<!-- END SIDEBAR MENU -->

	</div>

</div>
	<!-- 页面内容 START -->
	<sitemesh:write property='body' />
	<!-- 页面内容 END -->
</div>
<!-- LEFT MENU END -->

	<%@ include file="../commonjsFooter.jsp"%> 
</body>
<!-- END BODY -->
<script type="text/javascript">
	var currentPath = window.location.pathname;
	if (currentPath.indexOf("OZ_TT_AD_OL") > 0) {
		$("#orderLi").find("span.arrow").addClass("open");
		$("#orderLi").addClass("active")
		$("#orderLi").click();
	}

</script>
</html>