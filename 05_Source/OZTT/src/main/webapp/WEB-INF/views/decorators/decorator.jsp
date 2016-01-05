<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><sitemesh:write property='title' /></title>
  <sitemesh:write property='head' />
</head>
<!-- Head END -->
<script>

	var errorHtml = "<span id=\"spanError\" class=\"error\" onmouseover=\"makeMesDiv(this)\" onmouseout=\"removeMesDiv()\"><img src=\"${ctx}/images/error.png\"/></span>";
	
	function cleanFormError(){
		$("#spanError").remove();
	}
	
	function showErrorSpan(obj, msg){
		$(obj).after(errorHtml);
		$(obj).next().append(msg);
	}
	
	function login(){
		location.href = "${pageContext.request.contextPath}/OZ_TT_TP_LG/init";
	}
</script>

<!-- Body BEGIN -->
<body>
    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
                        
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                        <li><a onclick="login();return false;">Log In</a></li>
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div role="navigation" class="navbar header no-margin">
        <div class="container">
            <div class="navbar-header">
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <a href="index.html" class="navbar-brand"><img src="<c:url value='/assets/img/logo_red.png' />" alt="Metronic Shop UI"></a><!-- LOGO -->
            </div>
            <!-- BEGIN CART -->
            <div class="cart-block">
                <div class="cart-info">
                    <a href="javascript:void(0);" class="cart-info-count">3 items</a>
                    <a href="javascript:void(0);" class="cart-info-value">$1260</a>
                </div>
                <i class="fa fa-shopping-cart"></i>
                <!-- BEGIN CART CONTENT -->
                <div class="cart-content-wrapper">
                  <div class="cart-content">
                    <ul class="scroller" style="height: 250px;">
                      <li>
                        <a href="item.html"><img src="<c:url value='/assets/temp/cart-img.jpg' />" alt="Rolex Classic Watch" width="37" height="34"></a>
                        <span class="cart-content-count">x 1</span>
                        <strong><a href="item.html">Rolex Classic Watch</a></strong>
                        <em>$1230</em>
                        <a href="javascript:void(0);" class="del-goods"><i class="fa fa-times"></i></a>
                      </li>
                      <li>
                       <a href="item.html"><img src="<c:url value='/assets/temp/cart-img.jpg' />" alt="Rolex Classic Watch" width="37" height="34"></a>
                        <span class="cart-content-count">x 1</span>
                        <strong><a href="item.html">Rolex Classic Watch</a></strong>
                        <em>$1230</em>
                        <a href="javascript:void(0);" class="del-goods"><i class="fa fa-times"></i></a>
                      </li>
                    </ul>
                    <div class="text-right">
                      <a href="shopping-cart.html" class="btn btn-default">View Cart</a>
                      <a href="checkout.html" class="btn btn-primary">Checkout</a>
                    </div>
                  </div>
                </div>
                <!-- END CART CONTENT -->
            </div>
            <!-- END CART -->
            <!-- BEGIN NAVIGATION -->
            <div class="collapse navbar-collapse mega-menu">
                <ul class="nav navbar-nav">
                	<c:forEach var="beanList" items="${ menucategory }">
                    <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" data-delay="0" data-close-others="false" data-target="product-list.html" href="product-list.html">
                         ${ beanList.fatherClass.classname }
                        <i class="fa fa-angle-down"></i>
                      </a>
                      <!-- BEGIN DROPDOWN MENU -->
                      <ul class="dropdown-menu" aria-labelledby="mega-menu">
                        <li>
                          <div class="nav-content">
                            <!-- BEGIN DROPDOWN MENU - COLUMN -->
                            <c:forEach var="childrenList" items="${ beanList.childrenClass }">
                            <div class="nav-content-col">
                              <h3>${ childrenList.fatherClass.classname }</h3>
                              <ul>
                              <c:forEach var="childrenNextList" items="${ childrenList.childrenClass }">
                              	<li><a href="product-list.html">${ childrenNextList.fatherClass.classname }</a></li>
                              </c:forEach>
                              </ul>
                            </div>
                            <!-- END DROPDOWN MENU - COLUMN -->
                           </c:forEach>
                          </div>
                        </li>
                      </ul>
                      <!-- END DROPDOWN MENU -->
                    </li>
                    </c:forEach>
                    <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" data-delay="0" data-close-others="false" data-target="product-list.html" href="product-list.html">
                        <fmt:message key="indexNew"/>
                        <i class="fa fa-angle-down"></i>
                      </a>
                      <!-- BEGIN DROPDOWN MENU -->
                      <ul class="dropdown-menu" aria-labelledby="mega-menu-catalogue">
                        <li>
                          <div class="nav-content">
                          	
                          	<c:forEach var="goodslist" items="${ arrlist }">
                            <div class="product-item">
                              <div class="pi-img-wrapper">
                                <a onclick="goToItem('${goodslist.goodsid }')"><img src="<c:url value='${goodslist.goodsnormalpic }' />" class="img-responsive" alt="${goodslist.goodsname }"></a>
                              </div>
                              <h3><a onclick="goToItem('${goodslist.goodsid }')">${goodslist.goodsname }</a></h3>
                              <div class="pi-price">${goodslist.costprice }<fmt:message key="common_yuan"/></div>
                              <a onclick="addCart('${goodslist.goodsid }')" class="btn btn-default add2cart">
                              	<fmt:message key="index_addtocart"/>
                              </a>
                            </div>
                            </c:forEach>
                          </div>
                        </li>
                      </ul>
                      <!-- END DROPDOWN MENU -->
                    </li>
                    <!-- BEGIN TOP SEARCH -->
                    <li class="menu-search">
                        <span class="sep"></span>
                        <i class="fa fa-search search-btn"></i>
                        <div class="search-box">
                            <form action="#">
                                <div class="input-group">
                                    <input type="text" placeholder="Search" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="submit">
                                        	<fmt:message key="indexSearch"/>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div> 
                    </li>
                    <!-- END TOP SEARCH -->
                </ul>
            </div>
            <!-- END NAVIGATION -->
        </div>
    </div>
    <!-- END HEADER -->

    
	<sitemesh:write property='body' />
    

        

    <!-- BEGIN FOOTER -->
    <footer>
    <div class="footer padding-top-15">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-6 col-sm-6 padding-top-10">
            <fmt:message key="mainFooter"/>
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-6 col-sm-6">
            <ul class="list-unstyled list-inline pull-right margin-bottom-15">
              <li><img src="<c:url value='/assets/img/payments/PayPal.jpg' />" alt="We accept PayPal" title="We accept PayPal"></li>
            </ul>
          </div>
          <!-- END PAYMENTS -->
        </div>
      </div>
    </div>
    </footer>
    <!-- END FOOTER -->
    
</body>
<!-- END BODY -->
</html>