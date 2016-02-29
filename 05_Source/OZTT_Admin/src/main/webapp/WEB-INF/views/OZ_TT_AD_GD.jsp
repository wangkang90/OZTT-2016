<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><fmt:message key="OZ_TT_AD_GD_title" /></title>
  <script type="text/javascript">
  
  	function backToGoodsList(){
		var pageNo = $("#pageNo").val();
		if (pageNo == "") {
			location.href= "${pageContext.request.contextPath}/OZ_TT_AD_GL/init";
		} else {
			location.href= "${pageContext.request.contextPath}/OZ_TT_AD_GL/pageSearch?pageNo="+pageNo;
		}
		
	}
  	function saveGoods(){
  		if (!validateForm()) return;
  		var targetForm = document.forms['olForm'];
		targetForm.action = "${pageContext.request.contextPath}/OZ_TT_AD_GD/save";
		targetForm.method = "POST";
		targetForm.submit();
  	}
  	
  	var E0002 = '<fmt:message key="E0002" />';
  	function validateForm(){
		cleanFormError();
		var goodsName = $("#goodsName").val();
		var classId = $("#classId").val();
		var goodsThumbnail = $("#goodsThumbnail").val();
		var goodsNormalPic = $("#goodsNormalPic").val();
		var costPrice = $("#costPrice").val();
		var sortOrder = $("#sortOrder").val();
		if (goodsName == "") {
			var message = E0002.replace("{0}", '<fmt:message key="OZ_TT_AD_GD_goodsname" />')
			showErrorSpan($("#goodsName"), message);
			return false;
		}
		if (classId == "") {
			var message = E0002.replace("{0}", '<fmt:message key="OZ_TT_AD_GD_class" />')
			showErrorSpan($("#classId"), message);
			return false;
		}
		if (goodsThumbnail == "") {
			var message = E0002.replace("{0}", '<fmt:message key="OZ_TT_AD_GD_goodsThumbnail" />')
			//showErrorSpan($("#goodsThumbnailDiv"), message);
			return false;
		}
		if (goodsNormalPic == "") {
			var message = E0002.replace("{0}", '<fmt:message key="OZ_TT_AD_GD_goodsNormalPic" />')
			//showErrorSpan($("#goodsNormalPicDiv"), message);
			return false;
		}
		if (costPrice == "") {
			var message = E0002.replace("{0}", '<fmt:message key="OZ_TT_AD_GD_costPrice" />')
			showErrorSpan($("#costPrice"), message);
			return false;
		}
		if (sortOrder == "") {
			var message = E0002.replace("{0}", '<fmt:message key="OZ_TT_AD_GD_sortOrder" />')
			showErrorSpan($("#sortOrder"), message);
			return false;
		}
		return true;
	}
  	
  	function outfileDelete(fileId){
  		alert(fileId);
  	}
  
  </script>
</head>
<body>
	<!-- BEGIN CONTENT -->

	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="#">
								<fmt:message key="COMMON_HOME" />
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<fmt:message key="OZ_TT_AD_MN_goods" />
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<fmt:message key="OZ_TT_AD_GD_title" />
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<form:form cssClass="form-horizontal" action="" method="post" id="olForm" modelAttribute="ozTtAdGdDto" commandName="ozTtAdGdDto" role="form">
			<div class="form-body">
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_goodsname" /></label>
					<div class="col-md-3">
						<form:input type="text" path="goodsName" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_class" /></label>
					<div class="col-md-3">
						<form:select class="form-control" path="classId">
							<form:option value=""></form:option>
							<c:forEach var="seList" items="${ classficationList }">
                   				<form:option value="${ seList.classid }">${ seList.classid } : ${ seList.classname }</form:option>
                   			</c:forEach>
						</form:select>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_goodsBrand" /></label>
					<div class="col-md-3">
						<form:input type="text" path="goodsBrand" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_goodsDesc" /></label>
					<div class="col-md-3">
						<form:input type="text" path="goodsDesc" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_goodsComments" /></label>
					<div class="col-md-3">
						<form:input type="text" path="goodsComments" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_goodsThumbnail" /></label>
					<div class="col-md-3">
						<form:hidden path="goodsThumbnail"/>
						<input id="fileThumbnailPic" type="file" name="file" class="file" data-max-file-count="1"/>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_goodsNormalPic" /></label>
					<div class="col-md-10">
						<form:hidden path="goodsNormalPic"/>
						<input id="fileNormalPic" type="file" multiple name="file" class="file" data-overwrite-initial="false" data-min-file-count="1">
					</div>					
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_onSaleFlg" /></label>
					<div class="radio-list col-md-3">
						<label class="radio-inline">
						<form:radiobutton path="onSaleFlg" value="0"></form:radiobutton>
						 <fmt:message key="COMMON_NO" />
						 </label>
						<label class="radio-inline">
						<form:radiobutton path="onSaleFlg" value="1"></form:radiobutton>
						 <fmt:message key="COMMON_YES" />
						 </label>
					</div>
									
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_hotSaleFlg" /></label>
					<div class="radio-list col-md-3">
						<label class="radio-inline">
						<form:radiobutton path="hotSaleFlg" value="0"></form:radiobutton>
						 <fmt:message key="COMMON_NO" />
						 </label>
						<label class="radio-inline">
						<form:radiobutton path="hotSaleFlg" value="1"></form:radiobutton>
						 <fmt:message key="COMMON_YES" />
						 </label>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_newSaleFlg" /></label>
					<div class="radio-list col-md-3">
						<label class="radio-inline">
						<form:radiobutton path="newSaleFlg" value="0"></form:radiobutton>
						 <fmt:message key="COMMON_NO" />
						 </label>
						<label class="radio-inline">
						<form:radiobutton path="newSaleFlg" value="1"></form:radiobutton>
						 <fmt:message key="COMMON_YES" />
						 </label>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_costPrice" /></label>
					<div class="col-md-3">
						<form:input type="text" path="costPrice" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_GD_sortOrder" /></label>
					<div class="col-md-3">
						<form:input type="text" path="sortOrder" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-7"></div>
				</div>
				<h4 class="form-section"></h4>
				<div class="form-group">
					 <div class="col-md-6 textleft">
						<button type="button" class="btn green mybtn" onclick="backToGoodsList()">
								<i class="fa fa-reply"></i>&nbsp;<fmt:message key="COMMON_BACK" />
						</button>
					 </div>
					 <div class="col-md-6 textright">
					 	<button type="button" class="btn green mybtn" onclick="saveGoods()">
							<i class="fa fa-save"></i>&nbsp;<fmt:message key="COMMON_SAVE" />
						</button>
					 </div>
				</div>
			</div>
			<form:input path="no" type="hidden"/>
			<form:input path="goodsId" type="hidden"/>
			<form:input path="pageNo" type="hidden"/>
			</form:form>

		</div>
	</div>
	<!-- END CONTENT -->
</body>
</html>