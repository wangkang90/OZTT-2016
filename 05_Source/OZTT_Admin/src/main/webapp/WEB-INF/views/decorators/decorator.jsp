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
			<img src="${ctx}/assets/img/logo.png" alt="logo" class="img-responsive"/>
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
							<i class="fa fa-user"></i> My Profile
						</a>
					</li>
					<li>
						<a href="javascript:;" id="trigger_fullscreen">
							<i class="fa fa-arrows"></i> Full Screen
						</a>
					</li>
					<li>
						<a href="login.html">
							<i class="fa fa-key"></i> Log Out
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

						我的信息

					</span>

				</a>

			</li>

			<li>

				<a href="javascript:;">

					<i class="fa fa-shopping-cart"></i>

					<span class="title">

						E-Commerce

					</span>

					<span class="arrow ">

					</span>

				</a>

				<ul class="sub-menu">

					<li class="active">

						<a href="ecommerce_orders.html">

							<i class="fa fa-shopping-cart"></i>

							Orders

						</a>

					</li>

					<li>

						<a href="ecommerce_orders_view.html">

							<i class="fa fa-tags"></i>

							Order View

						</a>

					</li>

					<li>

						<a href="ecommerce_products.html">

							<i class="fa fa-sitemap"></i>

							Products

						</a>

					</li>

					<li>

						<a href="ecommerce_products_edit.html">

							<i class="fa fa-file-o"></i>

							Product Edit

						</a>

					</li>

				</ul>

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

</html>