<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><fmt:message key="OZ_TT_GB_SH_title" /></title>
<%@ include file="./commoncssHead.jsp"%>

</head>
<!-- Head END -->


<!-- Body BEGIN -->
<body>
	<div class="main" id="mainDiv">
		<div class="container">
			<ul class="breadcrumb">

			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<div class="col-md-12 col-sm-12">
					<h1>
						<fmt:message key="OZ_TT_GB_SH_shipmethod" />
					</h1>
					<div class="content-page">
						<div class="row">
							<fieldset>
								<legend>
									<fmt:message key="OZ_TT_GB_SH_methodsel" />
								</legend>
								<div class="form-group col-sm-12">
									<div class="clearfix">
										<div class="btn-group" data-toggle="buttons">
											<label class="btn red active" style="margin-left:50px"> 
												<input class="toggle" type="radio"> <fmt:message key="OZ_TT_GB_SH_selfpick" />
											</label>
											<label class="btn red" style="margin-left:50px">
												<input class="toggle" type="radio"> <fmt:message key="OZ_TT_GB_SH_simpleexpress" />
											</label>
											<label class="btn red" style="margin-left:50px">
												<input class="toggle" type="radio"> <fmt:message key="OZ_TT_GB_SH_con" />
											</label>
										</div>
									</div>
								</div>
							</fieldset>
							<fieldset>
								<legend>
									<fmt:message key="OZ_TT_GB_SH_contentAdd" />
								</legend>
								<div class="form-group col-sm-12">
									<div class="col-sm-2 pull-right">
										<a href="#address-pop-up" class="btn btn-default fancybox-fast-view"><fmt:message key="OZ_TT_GB_SH_newAddress" /></a>
									</div>
								</div>
								
								<div class="form-group col-sm-12">
									<ul>
										<li>地址1</li>
										<li>地址1</li>
										<li>地址1</li>
										<li>地址1</li>
										<li>地址1</li>
										<li>地址1</li>
										
									</ul>
								
								</div>
								
								
							</fieldset>
						</div>
					</div>
				</div>
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>

	<%@ include file="./commonjsFooter.jsp"%>
	<%@ include file="./commonaddress.jsp"%>
	<script type="text/javascript">
	
		reloadAddress();
		function reloadAddress(){
			
		}
		//这里重新加载画面的高度
		var viewHeight = window.screen.height;
		var offTop = $("#mainDiv").offset().top;
		if ($("#mainDiv").height() < viewHeight - offTop - 62) {
			$("#mainDiv").height(viewHeight - offTop - 62);
		}
		
		// 更新地址
		function getAddress(str) {
			
		}
	</script>
</body>
<!-- END BODY -->
</html>