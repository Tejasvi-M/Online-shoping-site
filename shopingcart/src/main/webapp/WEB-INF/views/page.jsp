<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/resources/css" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>${title}</title>

<script>
window.menu = '${title}'
window.contextRoot='${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<!-- data table Style sheet -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
	<!-- Navigation -->
	<%@include file="./shared/navbar.jsp"%>

	<!-- Page Content saved as home.jsp -->
	<div class="container">
	<c:if test="${clickHome== true}">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${clickAbout == true}">
		<%@include file="about.jsp"%>
	</c:if>

	<c:if test="${clickContact == true}">
		<%@ include file="contact.jsp"%>
	</c:if>
	
		<c:if test="${clickAllProducts == true or clickCategoryProducts==true}">
		<%@ include file="listProducts.jsp"%>
	</c:if>
	
	</div>

	<!-- Footer -->
	<%@ include file="./shared/footer.jsp"%>
	<!-- jquery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>
	
	
	<!-- Data table jquery plugin -->
	<script src="${js}/jquery.dataTables.js"></script>
	<!-- javascript file for data table -->
	<script src="${js}/dataTables.bootstrap4.js"></script>
	<!-- Active menu highlight javascript -->
	<script src="${js}/menuhighlight.js"></script>
	</div>
</body>

</html>