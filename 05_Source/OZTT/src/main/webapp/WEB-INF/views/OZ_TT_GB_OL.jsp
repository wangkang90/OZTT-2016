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
<title><fmt:message key="OZ_TT_GB_OL_title"/></title>
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
            <h1><fmt:message key="OZ_TT_GB_OL_h1"/></h1>
            <div class="row">
            	<div style="margin-bottom:30px">
            		<table class="col-sm-12">
               			<tr>
							<td class="col-sm-1 textcenter">
								<select>
									<option>所有订单</option>
								</select>
							</td>
							<td class="col-sm-4 textcenter">订单详情</td>
							<td class="col-sm-2 textcenter">收货人</td>
							<td class="col-sm-1 textcenter" style="padding-right:0px">金额</td>
							<td class="col-sm-2 textcenter" style="padding-right:0px">订单状态</td>
							<td class="col-sm-2 textcenter" style="padding-right:0px">操作</td>
						</tr>
               		</table>
            	</div>
            	<c:forEach var="orderlist" items="${ pageInfo.resultList }" varStatus="status">
                 	<div class="col-sm-12 table-order">
                 		<table class="col-sm-12">
                 			<tr class="defaultBackColor">
								<td class="col-sm-5" colspan="2">${orderlist.orderDate} &nbsp;&nbsp;&nbsp;&nbsp;订单号：${orderlist.orderId}</td>
								<td class="col-sm-2">${orderlist.consignee }</td>
								<td class="col-sm-1"></td>
								<td class="col-sm-2 textcenter">${orderlist.orderStatus}</td>
								<td class="col-sm-2 textcenter"><a>详细</a></td>
							</tr>
                 			<c:forEach var="itemList" items="${ orderlist.itemList }">
                 			<tr>
								<td class="shopping-cart-image col-sm-1"><a><img src="${itemList.goodsImage}" alt="${itemList.goodsName}"></a></td>
								<td class="col-sm-3"><a onclick="toItem('${itemList.goodsId}')">${itemList.goodsName}</a>&nbsp;&nbsp;&nbsp;&nbsp;X${itemList.goodsQuantity}<p></p></td>
								<td class="col-sm-2 textcenter"></td>
								<td class="col-sm-1 textcenter" style="padding-right:0px"><strong>${itemList.goodsPrice}</strong></td>
								<td class="col-sm-2 textcenter" style="padding-right:0px"></td>
								<td class="col-sm-2 textcenter" style="padding-right:0px"></td>
							</tr>
						</c:forEach>
                 		</table>
                 	</div>
                 	
                 	
                 
	            </c:forEach>
            </div>
            </br>
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