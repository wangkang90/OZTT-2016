<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><fmt:message key="OZ_TT_AD_GL_title" /></title>
  
  <script type="text/javascript">
  	function searchGoods(){
  		var targetForm = document.forms['olForm'];
		targetForm.action = "${pageContext.request.contextPath}/OZ_TT_AD_GL/search";
		targetForm.method = "POST";
		targetForm.submit();
  	}
  	
  	function pageSelected(pageNo){
  		var targetForm = document.forms['olForm'];
		targetForm.action = "${pageContext.request.contextPath}/OZ_TT_AD_GL/pageSearch?pageNo="+pageNo;
		targetForm.method = "POST";
		targetForm.submit();
  	}
  	
  	function toDetail(goodsId){
  		var pageNo = $("#pageNo").val();
  		var targetForm = document.forms['olForm'];
		targetForm.action = "${pageContext.request.contextPath}/OZ_TT_AD_GD/init?goodsId="+goodsId+"&pageNo="+pageNo;
		targetForm.method = "POST";
		targetForm.submit();
  	}
  	
  	function newGoods(){
  		var targetForm = document.forms['olForm'];
		targetForm.action = "${pageContext.request.contextPath}/OZ_TT_AD_GD/init";
		targetForm.method = "POST";
		targetForm.submit();
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
								<fmt:message key="OZ_TT_AD_GL_title" />
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<form:form cssClass="form-horizontal" action="" method="post" id="olForm" modelAttribute="ozTtAdGlDto" commandName="ozTtAdGlDto" role="form">
			<div class="form-body">
				<div class="form-group">
					<label class="col-md-1 control-label textleft"><fmt:message key="OZ_TT_AD_GL_goodsname" /></label>
					<div class="col-md-3">
						<form:input type="text" path="goodsName" class="input-medium form-control"></form:input>
					</div>
					
					<label class="col-md-1 control-label"><fmt:message key="OZ_TT_AD_GL_ishotsale" /></label>
					<div class="radio-list col-md-3">
						<label class="radio-inline">
						<form:radiobutton path="isHotSale" id="isHotSaleId0" value="0"></form:radiobutton>
						 <fmt:message key="COMMON_NO" />
						 </label>
						<label class="radio-inline">
						<form:radiobutton path="isHotSale" id="isHotSaleId1" value="1"></form:radiobutton>
						 <fmt:message key="COMMON_YES" />
						 </label>
						 <label class="radio-inline">
							<form:radiobutton path="isHotSale" value=""></form:radiobutton>
						 	<fmt:message key="COMMON_ALL" />
						 </label>
					</div>
					
					<label class="col-md-1 control-label"><fmt:message key="OZ_TT_AD_GL_isnewsale" /></label>
					<div class="radio-list col-md-3">
						<label class="radio-inline">
						<form:radiobutton path="isNewSale" id="isNewSaleId0" value="0"></form:radiobutton>
						 <fmt:message key="COMMON_NO" />
						 </label>
						<label class="radio-inline">
						<form:radiobutton path="isNewSale" id="isNewSaleId1" value="1"></form:radiobutton>
						 <fmt:message key="COMMON_YES" />
						 </label>
						 <label class="radio-inline">
							<form:radiobutton path="isNewSale" value=""></form:radiobutton>
						 	<fmt:message key="COMMON_ALL" />
						 </label>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-md-6 textleft">
						<button type="button" class="btn green mybtn" onclick="newGoods()"><i class="fa fa-search"></i><fmt:message key="COMMON_NEW" /></button>
					</div>
					<div class="col-md-6 textright">
						<button type="button" class="btn green mybtn" onclick="searchGoods()"><i class="fa fa-search"></i><fmt:message key="COMMON_SEARCH" /></button>
					</div>
					
				</div>
				
				<h4 class="form-section"></h4>
				
				<div class="table-scrollable">
					<table class="table table-striped table-bordered table-hover">
					<thead>
					<tr>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_goodsid" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_goodsname" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_goodsdesc" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_onsale" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_ishot" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_isnew" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_GL_DE_cost" />
						</th>
						<th scope="col">
							 <fmt:message key="COMMON_CONTROL" />
						</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="goodsItem" items="${ pageInfo.resultList }">
					<tr>
						<td>
							 ${goodsItem.goodsId }
						</td>
						<td>
							 ${goodsItem.goodsName }
						</td>
						<td>
							 ${goodsItem.goodsDesc }
						</td>
						<td>
							 <c:if test="${goodsItem.onSaleFlg == '1'}">
							 	<fmt:message key="COMMON_YES" />
							 </c:if>
							 <c:if test="${goodsItem.onSaleFlg == '0'}">
							 	<fmt:message key="COMMON_NO" />
							 </c:if>
						</td>
						<td>
							 <c:if test="${goodsItem.hotSaleFlg == '1'}">
							 	<fmt:message key="COMMON_YES" />
							 </c:if>
							 <c:if test="${goodsItem.hotSaleFlg == '0'}">
							 	<fmt:message key="COMMON_NO" />
							 </c:if>
						</td>
						<td>
							 <c:if test="${goodsItem.newSaleFlg == '1'}">
							 	<fmt:message key="COMMON_YES" />
							 </c:if>
							 <c:if test="${goodsItem.newSaleFlg == '0'}">
							 	<fmt:message key="COMMON_NO" />
							 </c:if>
						</td>
						<td>
							 ${goodsItem.costPrice }
						</td>
						<td>
							<button type="button" class="btn green mybtn" onclick="toDetail('${goodsItem.goodsId}')">
								<i class="fa fa-info"></i>&nbsp;<fmt:message key="COMMON_DETAIL" />
							</button>
						</td>
					</tr>
					</c:forEach>
					</tbody>
					</table>
				</div>
				
			</div>
			<!-- BEGIN PAGINATOR -->
			<c:if test="${pageInfo.totalSize > 0}">
            <c:if test="${pageInfo.firstPage > 0 || pageInfo.prevPage > 0 || pageInfo.nextPage > 0 || pageInfo.lastPage >0}">
            <div class="row">
              <div class="col-md-4 col-sm-4 items-info"></div>
              <div class="col-md-8 col-sm-8">
                <ul class="pagination pull-right">
                  <c:choose>
					<c:when test="${pageInfo.firstPage > 0}"><li class="prev"><a href="javascript:pageSelected('${pageInfo.firstPage}')" title="第一页"><i class="fa fa-angle-double-left"></i></a></li></c:when>
					<c:otherwise><li class="prev disabled"><a href="javascript:void(0);" title="第一页"><i class="fa fa-angle-double-left"></i></a></li></c:otherwise>
				  </c:choose>
				  <c:choose>
					<c:when test="${pageInfo.prevPage < pageInfo.currentPage}"><li class="prev"><a href="javascript:pageSelected('${pageInfo.prevPage}')" title="上一页"><i class="fa fa-angle-left"></i></a></li></c:when>
					<c:otherwise><li class="prev disabled"><a href="javascript:void(0);" title="上一页"><i class="fa fa-angle-left"></i></a></li></c:otherwise>
				  </c:choose>
				  <c:forEach var="u" items="${pageInfo.pageList}">
					<c:choose>
					<c:when test="${pageInfo.currentPage == u}">
						<li><span>${u}</span></li>
					</c:when>
					<c:otherwise>
						<li><a href="javascript:pageSelected('${u}')">${u}</a></li>
					</c:otherwise>
					</c:choose>
				  </c:forEach>
				  
				  <c:choose>
					<c:when test="${pageInfo.nextPage > pageInfo.currentPage}"><li class="next"><a href="javascript:pageSelected('${pageInfo.nextPage}')" title="下一页"><i class="fa fa-angle-right"></i></a></li></c:when>
					<c:otherwise><li class="next disabled"><a href="javascript:void(0)" title="下一页"><i class="fa fa-angle-right"></i></a></li></c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${pageInfo.lastPage > 0}"><li class="next"><a href="javascript:pageSelected( '${pageInfo.lastPage}')" title="最后页"><i class="fa fa-angle-double-right"></i></a></li></c:when>
					<c:otherwise><li class="next disabled"><a href="javascript:void(0)" title="最后页"><i class="fa fa-angle-double-right"></i></a></li></c:otherwise>
				</c:choose>
               
                </ul>
              </div>
            </div>
            </c:if>
            <!-- END PAGINATOR -->
			<input type="hidden" value="${pageInfo.currentPage}" id="pageNo">
			</c:if>
			</form:form>
		</div>
	</div>
	<!-- END CONTENT -->
	
</body>
</html>