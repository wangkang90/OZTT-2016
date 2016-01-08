<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>商品详情</title>
  <%@ include file="./commoncssHead.jsp"%>
  <!-- Head END -->
  <script>  		
  		/* 商品显示画面 */
  	  	function gotoList(str){
  	  		location.href = "${ctx}/OZ_TT_TP_PL/search?listCount=&classId="+str+"&pageNo=";
  	  	}
	
  </script>
</head>


<!-- Body BEGIN -->
<body>
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
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
			</ul>

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
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
                    <img src="${ctx}/assets/temp/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive" data-BigImgSrc="assets/temp/products/model7.jpg">
                  </div>
                  <div class="product-other-images">
                    <a href="#" class="active"><img alt="Berry Lace Dress" src="${ctx}/assets/temp/products/model3.jpg"></a>
                    <a href="#"><img alt="Berry Lace Dress" src="${ctx}/assets/temp/products/model4.jpg"></a>
                    <a href="#"><img alt="Berry Lace Dress" src="${ctx}/assets/temp/products/model5.jpg"></a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6">
                  <h1>Cool green dress with red bell</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>47.00</strong>
                      <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat 
Nostrud duis molestie at dolore.</p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">Size:</label>
                      <select class="form-control input-sm">
                        <option>L</option>
                        <option>M</option>
                        <option>XL</option>
                      </select>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">Color:</label>
                      <select class="form-control input-sm">
                        <option>Red</option>
                        <option>Blue</option>
                        <option>Black</option>
                      </select>
                    </div>


                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="botton"><fmt:message key="common_addtocart"/></button>
                  </div>
                  
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#Description" data-toggle="tab"><fmt:message key="OZ_TT_TP_PD_des"/></a></li>
                    <li><a href="#Information" data-toggle="tab"><fmt:message key="OZ_TT_TP_PD_info"/></a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="Description">
                      
                    </div>
                    <div class="tab-pane fade" id="Information">
                      
                    </div>
                    <div class="tab-pane fade" id="Reviews">
                      
                    </div>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

      </div>
    </div>

    <%@ include file="./commonjsFooter.jsp"%>
    
</body>
</html>