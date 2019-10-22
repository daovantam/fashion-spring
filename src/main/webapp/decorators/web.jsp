<%--
  Created by IntelliJ IDEA.
  User: Laptop88
  Date: 10/11/2019
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>VIETPRO STORE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Animate.css -->
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/animate.css"/>"/>
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/icomoon.css"/>"/>
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/bootstrap.css"/>"/>

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/magnific-popup.css"/>"/>

    <!-- Flexslider  -->
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/flexslider.css"/>"/>

    <!-- Theme style  -->
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/style.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/fontend/css/custome.css"/>"/>


</head>
<body>

    <div class="colorlib-loader"></div>
    <div id="page">
        <nav class="colorlib-nav" role="navigation">
        <!--header -->
        <%@ include file="/common/web/header.jsp"%>
        <!--header -->
        </nav>

        <dec:body/>

        <!-- footer -->
        <%@include file="/common/web/footer.jsp"%>
        <!--end  footer -->
    </div>

    <!-- jQuery -->
    <script src="<c:url value="/template/fontend/js/jquery.min.js"/>"></script>
    <!-- jQuery Easing -->
    <script src="<c:url value="/template/fontend/js/jquery.easing.1.3.js"/>"></script>
    <!-- Bootstrap -->
    <script src="<c:url value="/template/fontend/js/bootstrap.min.js"/>"></script>
    <!-- Waypoints -->
    <script src="<c:url value="/template/fontend/js/jquery.waypoints.min.js"/>"></script>
    <!-- Flexslider -->
    <script src="<c:url value="/template/fontend/js/jquery.flexslider-min.js"/>"></script>

    <script src="<c:url value="/template/fontend/js/owl.carousel.min.js"/>"></script>
    <!-- Magnific Popup -->
    <script src="<c:url value="/template/fontend/js/jquery.magnific-popup.min.js"/>"></script>
    <script src="<c:url value="/template/fontend/js/magnific-popup-options.js"/>"></script>

    <!-- Stellar Parallax -->
    <script src="<c:url value="/template/fontend/js/jquery.stellar.min.js"/>"></script>
    <!-- Main -->
    <script src="<c:url value="/template/fontend/js/main.js"/>"></script>
</body>
</html>
