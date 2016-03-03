<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><fmt:message key="OZ_TT_AD_GP_title" /></title>
  
  <script type="text/javascript">		
	  function showImgMain(str, image, goodsName) {
			$(str).parent().find("a").removeClass("active");
			$(str).addClass("active");
			
			$("#activeImage").attr("src", image);
			$("#activeImage").attr("alt", goodsName);
			$("#activeImage").attr("data-BigImgSrc", image);
		}
	  
	function backToList(){
		var pageNo = $("#pageNo").val();
		location.href = "${pageContext.request.contextPath}/OZ_TT_AD_GL/pageSearch?pageNo="+pageNo;
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
								<fmt:message key="OZ_TT_AD_MN_group" />
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<fmt:message key="OZ_TT_AD_GP_title" />
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			
			<!-- BEGIN CONTENT -->
		<div class="form-body">
				<div class="form-group">
					<div class="col-md-12 textright">
						<button type="button" class="btn green mybtn" onclick="backToList()">
								<i class="fa fa-reply"></i>&nbsp;<fmt:message key="COMMON_BACK" />
						</button>
					</div>	
				</div>
			
          <div class="col-md-9 col-sm-7">
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
                    <img src="${goodItemDto.firstImg}" alt="${goodItemDto.goods.goodsname}" class="img-responsive" data-BigImgSrc="${goodItemDto.firstImg}" id="activeImage">
                    <input type="hidden" value="${goodItemDto.goods.goodsthumbnail}" id="hiddenImage" />
                  </div>
                  <div class="product-other-images">
                  <c:forEach var="imgTh" items="${ goodItemDto.imgList }" varStatus="status">
                  		<c:if test="${ status.index == 0}">
                  			<a onclick="showImgMain(this,'${imgTh}','${goodItemDto.goods.goodsname}')" class="active"><img alt="${goodItemDto.goods.goodsname}" src="${imgTh}"></a>
                  		</c:if>
                  		<c:if test="${ status.index != 0}">
	                  		<a onclick="showImgMain(this,'${imgTh}','${goodItemDto.goods.goodsname}')"><img alt="${goodItemDto.goods.goodsname}" src="${imgTh}"></a>
                  		</c:if>
                  </c:forEach>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6">
                  <h1 id="goodsNameh1">${goodItemDto.goods.goodsname}</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong id="disPrice">${goodItemDto.disPrice}<fmt:message key="COMMON_YUAN"/></strong>
                      <em><span id="nowPrice">${goodItemDto.nowPrice}<fmt:message key="COMMON_YUAN"/></span></em>
                    </div>
                    <div class="availability">

                    </div>
                  </div>
                  <div class="description">
                    <p>${goodItemDto.validPeriodStart}~${goodItemDto.validPeriodEnd}</p>
                  </div>
                  <div class="description">
                    <p>${goodItemDto.goods.goodsdesc}</p>
                  </div>
                  <div class="product-page-options" id="productOptions">
                    


                  </div>
                  <div class="product-page-cart">
                    
                    
                 </div>
                  
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#Description" data-toggle="tab"><fmt:message key="OZ_TT_AD_GP_des"/></a></li>
                    <li><a href="#Information" data-toggle="tab"><fmt:message key="OZ_TT_AD_GP_info"/></a></li>
                    <li><a href="#Reviews" data-toggle="tab"><fmt:message key="OZ_TT_AD_GP_rule"/></a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="Description">
                      	${goodItemDto.productInfo}
                    </div>
                    <div class="tab-pane fade" id="Information">
                      	${goodItemDto.productDesc}
                    </div>
                    <div class="tab-pane fade" id="Reviews">
                      	${goodItemDto.sellerRule}
                    </div>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
          </div>
          </div>
		</div>
	</div>
	<!-- END CONTENT -->
	<input type="hidden" value="${pageNo}" id="pageNo"/>
</body>
</html>