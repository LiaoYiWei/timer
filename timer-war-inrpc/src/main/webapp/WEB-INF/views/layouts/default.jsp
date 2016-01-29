<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title><sitemesh:title/></title>
    <%@include file="/WEB-INF/views/include/base.jsp" %>
    <sitemesh:head/>
</head>
<body>
<div id="wrapper">
    <%@include file="/WEB-INF/views/include/header.jsp" %>
    <sitemesh:body/>
</div>

<%--modal jsp--%>
<%@include file="/WEB-INF/views/include/modal.jsp" %>

<%-- <%@include file="/WEB-INF/views/include/footer.jsp"%> --%>
</body>
</html>
