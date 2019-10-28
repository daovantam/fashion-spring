<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%--
  Created by IntelliJ IDEA.
  User: Laptop88
  Date: 10/11/2019
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="<c:url value="/template/assets/css/normalize.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/assets/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/assets/css/font-awesome.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/assets/css/themify-icons.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/assets/css/flag-icon.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/assets/css/cs-skin-elastic.css"/>"/>
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="<c:url value="/template/assets/scss/style.css"/>"/>
    <link href="<c:url value="/template/assets/css/lib/vector-map/jqvmap.min.css"/>" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
</head>
<body>

<%@include file="/common/admin/menu.jsp"%>

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">

    <!-- Header-->
    <%@ include file="/common/admin/header.jsp"%>
    <!-- Header-->

    <!-- .content -->
    <dec:body>
    <!-- .content -->
</div><!-- /#right-panel -->

<!-- Right Panel -->

<script src="<c:url value="/template/assets/js/vendor/jquery-2.1.4.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="<c:url value="/template/assets/js/plugins.js"/>"></script>
<script src="<c:url value="/template/assets/js/main.js"/>"></script>


<script src="<c:url value="/template/assets/js/lib/chart-js/Chart.bundle.js"/>"></script>
<script src="<c:url value="/template/assets/js/dashboard.js"/>"></script>
<script src="<c:url value="/template/assets/js/widgets.js"/>"></script>
<script src="<c:url value="/template/assets/js/lib/vector-map/jquery.vmap.js"/>"></script>
<script src="<c:url value="/template/assets/js/lib/vector-map/jquery.vmap.min.js"/>"></script>
<script src="<c:url value="/template/assets/js/lib/vector-map/jquery.vmap.sampledata.js"/>"></script>
<script src="<c:url value="/template/assets/js/lib/vector-map/country/jquery.vmap.world.js"/>"></script>
<script>
    ( function ( $ ) {
        "use strict";

        jQuery( '#vmap' ).vectorMap( {
            map: 'world_en',
            backgroundColor: null,
            color: '#ffffff',
            hoverOpacity: 0.7,
            selectedColor: '#1de9b6',
            enableZoom: true,
            showTooltip: true,
            values: sample_data,
            scaleColors: [ '#1de9b6', '#03a9f5' ],
            normalizeFunction: 'polynomial'
        } );
    } )( jQuery );
</script>

</body>
</html>
