<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>商品一览</title>
  <%@ include file="./commoncssHead.jsp"%>
  <!-- Head END -->
  <script>
  		function selectListCount(str) {
  			
  		}
	
  </script>
</head>


<!-- Body BEGIN -->
<body>

    <div class="title-wrapper">
      <div class="container"><div class="container-inner">
        <h1><span>MEN</span> CATEGORY</h1>
        <em>Over 4000 Items are available here</em>
      </div></div>
    </div>

    <div class="main">
      <div class="container">
        
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <div class="sidebar col-md-3 col-sm-5">
          	<ul class="list-group margin-bottom-25 sidebar-menu">
            <c:forEach var="beanListC" items="${ menucategory }">
              <li class="list-group-item clearfix dropdown">
                <a href="<c:if test="${empty beanListC.childrenClass}">javascript:gotoList('${ beanListC.fatherClass.classid }');</c:if><c:if test="${not empty beanListC.childrenClass}">javascript:void(0);</c:if>">
                  <i class="fa fa-angle-right"></i>
                  ${ beanListC.fatherClass.classname }
                  <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                 <c:forEach var="childrenListC" items="${ beanListC.childrenClass }">
                  <li class="list-group-item dropdown clearfix">
                    <a href="<c:if test="${empty childrenListC.childrenClass}">javascript:gotoList('${ childrenListC.fatherClass.classid }');</c:if><c:if test="${not empty childrenListC.childrenClass}">javascript:void(0);</c:if>">
                    	<i class="fa fa-circle"></i> ${ childrenListC.fatherClass.classname } <i class="fa fa-angle-down"></i></a>
                      	<ul class="dropdown-menu">
                      	<c:forEach var="childrenNextListC" items="${ childrenListC.childrenClass }">
                        <li class="list-group-item dropdown clearfix">
                          <a href="javascript:gotoList('${ childrenNextListC.fatherClass.classid }');">
	                          <i class="fa fa-circle"></i> 
	                          ${ childrenNextListC.fatherClass.classname } 
	                          <i class="fa fa-angle-down"></i>
                          </a>
                        </li>
                        </c:forEach>
                      </ul>
                  </li>
                  </c:forEach>
            </ul>
              </li>
			</c:forEach>
			
			</br></br></br>

            <div class="sidebar-products clearfix">
              <h2><fmt:message key="OZ_TT_TP_PL_bestSellers"/></h2>
              <c:forEach var="hotSellerList" items="${ hotSellerList }">
              <div class="item">
                <a href="javascript:toItem('${hotSellerList.goodsid }')"><img src="${ hotSellerList.goodsnormalpic }" alt="${ hotSellerList.goodsname }"></a>
                <h3><a href="javascript:toItem('${hotSellerList.goodsid }')">${ hotSellerList.goodsname }</a></h3>
                <div class="price">${ hotSellerList.costprice }<fmt:message key="common_yuan"/></div>
              </div>
              </c:forEach>
            </div>
          </div>
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="row list-view-sorting clearfix">
              <div class="col-md-2 col-sm-2 list-view">
                <a href="#"><i class="fa fa-th-large"></i></a>
                <a href="#"><i class="fa fa-th-list"></i></a>
              </div>
              <div class="col-md-10 col-sm-10">
              	<div class="pull-left">
              		<label class="control-label">labelContent</label>
              	</div>
                <div class="pull-right">
                  <label class="control-label">Show:</label>
                  <select class="form-control input-sm" onchange="selectListCount(this)">
                    <option value="15" >15</option>
                    <option value="25">25</option>
                    <option value="50" selected="selected">50</option>
                    <option value="75">75</option>
                    <option value="100">100</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- BEGIN PRODUCT LIST -->
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <c:forEach var="goodslist" items="${ tgoodList }">
          		<div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="${goodslist.goodsnormalpic }" class="img-responsive" alt="${goodslist.goodsname }">
                    <div>
                      <a href="${goodslist.goodsnormalpic }" class="btn btn-default fancybox-button"><fmt:message key="common_zoom"/></a>
                      <a href="#product-pop-up" onclick="viewProductPopUp('${goodNewArr.goodsid }')" class="btn btn-default fancybox-fast-view"><fmt:message key="common_view"/></a>
                    </div>
                  </div>
                  <h3><a onclick="goToItem('${goodslist.goodsid }')">${goodslist.goodsname }</a></h3>
                  <div class="pi-price">${goodslist.costprice }<fmt:message key="common_yuan"/></div>
                  <a onclick="addCart('${goodslist.goodsid }')" class="btn btn-default add2cart"><fmt:message key="common_addtocart"/></a>
                  <c:if test="${goodslist.newsaleflg == '1' }">
                  	<div class="sticker sticker-new"></div>
                  </c:if>
                </div>
           		</div>
           	</c:forEach>
              <!-- PRODUCT ITEM END -->
            </div>
            <!-- END PRODUCT LIST -->
            <!-- BEGIN PAGINATOR -->
            <div class="row">
              <div class="col-md-4 col-sm-4 items-info"></div>
              <div class="col-md-8 col-sm-8">
                <ul class="pagination pull-right">
                  <li><a href="#">&laquo;</a></li>
                  <li><a href="#">1</a></li>
                  <li><span>2</span></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- END PAGINATOR -->
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
	<%@ include file="./commonpopup.jsp"%>
    <%@ include file="./commonjsFooter.jsp"%>
</body>
</html>