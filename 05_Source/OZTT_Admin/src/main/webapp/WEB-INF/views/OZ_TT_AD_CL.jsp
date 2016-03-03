<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><fmt:message key="OZ_TT_AD_CL_title" /></title>
  
  <script type="text/javascript">
		function toDetail(classId) {
			location.href = "${pageContext.request.contextPath}/OZ_TT_AD_CD/detail?classNo="+classId;
		}
		
		function newClassfication(){
			location.href = "${pageContext.request.contextPath}/OZ_TT_AD_CD/detail";
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
								<fmt:message key="OZ_TT_AD_MN_classfication" />
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<fmt:message key="OZ_TT_AD_OL_menu" />
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<form:form cssClass="form-horizontal" action="" method="post" id="olForm" modelAttribute="" commandName="" role="form">
			<div class="form-body">
				<div class="form-group">
					<label class="col-md-2 control-label textleft"><fmt:message key="OZ_TT_AD_CL_category" /></label>
					<div class="col-md-3">
						<select class="bs-select input-medium form-control">
							<optgroup label="">
								<option value=""></option>
							</optgroup>
							<c:forEach var="faList" items="${ categoryList }">
								<optgroup label="${faList.fatherClass.classid }：${faList.fatherClass.classname }">
									<c:forEach var="chList" items="${ faList.childrenClass }">
									<option value="${ chList.fatherClass.classid }">${ chList.fatherClass.classid }：${ chList.fatherClass.classname }</option>
									</c:forEach>
								</optgroup>
                   				
                   			</c:forEach>
							
						</select>
						
					</div>
					
					
					<div class="col-md-7">
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12 textright">
						<button type="button" class="btn green mybtn" onclick="newClassfication()"><i class="fa fa-plus"></i><fmt:message key="COMMON_NEW" /></button>
					</div>	
				</div>
				
				<h4 class="div_empty"></h4>
				
				<div class="table-scrollable">
					<table class="table table-striped table-bordered table-hover">
					<thead>
					<tr>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_classId" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_className" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_sortOrder" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_fatherClassId" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_fatherClassName" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_openFlg" />
						</th>
						<th scope="col">
							 <fmt:message key="OZ_TT_AD_OL_DE_control" />
						</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="item" items="${ itemList }">
					<tr>
						<td>
							 ${item.classId }
						</td>
						<td>
							 ${item.className }
						</td>
						<td>
							 ${item.sortOrder }
						</td>
						<td>
							 ${item.fatherClassId }
						</td>
						<td>
							 ${item.fatherClassName }
						</td>
						<td>
							 ${item.openFlgView }
						</td>
						<td>
							 <button type="button" class="btn green mybtn" onclick="toDetail('${item.no}')">
								<i class="fa fa-info"></i>&nbsp;<fmt:message key="COMMON_MODIFY" />
							</button>
						</td>	
					</tr>
					</c:forEach>
					</tbody>
					</table>
				</div>
				
			</div>
			</form:form>
			
		</div>
	</div>
	<!-- END CONTENT -->
</body>
</html>