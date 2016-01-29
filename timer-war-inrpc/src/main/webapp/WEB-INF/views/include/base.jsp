<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Cache-Control" content="no-store"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="后台管理模块">
<meta name="author" content="潘清清">

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<c:set var="ctxStaticBootstrap" value="${pageContext.request.contextPath}/static/bootstrap"/>

<!-- develop use -->
<!-- Bootstrap Core CSS -->
<link type="text/css" href="${ctxStaticBootstrap}/bootstrap_components/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<!-- MetisMenu CSS -->
<link type="text/css" href="${ctxStaticBootstrap}/bootstrap_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet" />
<!-- Timeline CSS -->
<link type="text/css" href="${ctxStatic}/bootstrap_sb_admin/css/timeline.css" rel="stylesheet" />
<!-- DataTables CSS -->
<link href="${ctxStaticBootstrap}/bootstrap_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
<!-- Custom CSS -->
<link type="text/css" href="${ctxStatic}/bootstrap_sb_admin/css/sb-admin-2.css" rel="stylesheet" />
<!-- Morris Charts CSS -->
<link type="text/css" href="${ctxStaticBootstrap}/bootstrap_components/morrisjs/morris.css" rel="stylesheet" />
<!-- Custom Fonts CSS -->
<link type="text/css" href="${ctxStaticBootstrap}/bootstrap_components/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- timer CSS -->
<link type="text/css" href="${ctx}/css/timer.css" rel="stylesheet" />
<!-- spinners CSS -->
<link type="text/css" href="${ctx}/css/spinners.css" rel="stylesheet" />
<!-- validationEngine CSS -->
<link href="${ctxStatic}/validation/css/validationEngine.jquery.css" rel="stylesheet"/>

<!-- production use -->
<!-- Bootstrap Core CSS -->
<%--<link href="${ctxStaticBootstrap}/bootstrap_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<!-- Custom Fonts -->
<%--<link href="${ctxStaticBootstrap}/bootstrap_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">--%>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script type="text/javascript" src="${ctxStatic}/ie9/html5shiv.js"></script>
<script type="text/javascript" src="${ctxStatic}/ie9/respond.min.js"></script>
<![endif]-->
<!-- jQuery -->
<script type="text/javascript" src="${ctxStaticBootstrap}/bootstrap_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script type="text/javascript" src="${ctxStaticBootstrap}/bootstrap_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script type="text/javascript" src="${ctxStaticBootstrap}/bootstrap_components/metisMenu/dist/metisMenu.min.js"></script>
<!-- Morris Charts JavaScript -->
<script type="text/javascript" src="${ctxStaticBootstrap}/bootstrap_components/raphael/raphael-min.js"></script>
<script type="text/javascript" src="${ctxStaticBootstrap}/bootstrap_components/morrisjs/morris.min.js"></script>
<%--<script type="text/javascript" src="../js/morris-data.js"></script>--%>
<!-- Custom Theme JavaScript -->
<script src="${ctxStatic}/bootstrap_sb_admin/js/sb-admin-2.js"></script>
<!-- validationEngine JavaScript -->
<script src="${ctxStatic}/validation/js/languages/jquery.validationEngine-zh_CN.js"></script>
<script src="${ctxStatic}/validation/js/jquery.validationEngine.js"></script>
<!-- timer JS -->
<script src="${ctx}/js/timer.js"></script>
<!-- DataTables JavaScript -->
<script src="${ctxStaticBootstrap}/bootstrap_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="${ctxStaticBootstrap}/bootstrap_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>


