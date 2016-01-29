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
<title><fmt:message key="OZ_TT_GB_OC_title"/></title>
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
			<div class="row">
				

			<!-- BEGIN CONTENT -->
          	<div class="col-md-12 col-sm-12">
            <h1><fmt:message key="OZ_TT_GB_OC_h1"/></h1>
            <div class="faq-page">
            	<c:forEach var="orderlist" items="${ pageInfo.resultList }">
	            <div class="panel panel-danger">
	               <div class="panel-heading">
	                  <h4 class="panel-title">
	                     <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_5">
	                     	${orderlist.orderId}&nbsp;&nbsp;&nbsp;&nbsp;${orderlist.orderDate}
	                     </a>
	                  </h4>
	               </div>
	               <div id="accordion1_5" class="panel-collapse collapse">
	                  <div class="panel-body">
	                  	<div class="table-wrapper-responsive">
	                  		<table summary="Shopping cart">
	                  			<c:forEach var="itemList" items="${ orderlist.itemList }">
	                  			<tr>
									<td class="shopping-cart-image"><a><img src="${itemList.goodsImage}" alt="${itemList.goodsName}"></a></td>
									<td class="shopping-cart-description"><h3><a onclick="toItem('${itemList.goodsId}')">${itemList.goodsName}</a></h3><p ></p></td>
									<td class="shopping-cart-quantity shopping-cart-price"><strong>123</strong></td>
									<td class="shopping-cart-price textright" style="padding-right:0px"><strong>123</strong></td>
									<td class="shopping-cart-total textright" style="padding-right:0px"><strong>123123</strong></td>
								</tr>
								</c:forEach>
	                  		</table>
	                  	</div>
	                  </div>
	               </div>
	            </div>
	            </c:forEach>
            </div>
            <!-- BEGIN PAGINATOR -->
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
          </div>
          <!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>

	<%@ include file="./commonjsFooter.jsp"%>
	<script type="text/javascript">


	//这里重新加载画面的高度
	var viewHeight = window.screen.height ;
	var offTop = $("#mainDiv").offset().top;
	if ($("#mainDiv").height() < viewHeight - offTop - 62) {
		$("#mainDiv").css("minHeight",viewHeight - offTop - 62);
	}
</script>
</body>
<!-- END BODY -->
</html>