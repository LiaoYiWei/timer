<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>查看定时任务</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">查看定时任务</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    请查看如下表格
                </div>
                <div class="panel-body">
                    <div class="row">

                        <div class="col-lg-6">
                            <form class="form-horizontal" role="form" method="post">
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="name">任务名称</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="name" name="name" type="text" disabled value="${entity.name}"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="url">任务地址</label>
                                    <%--验证不用h5的,用验证插件
                                    <input class="form-control" id="url" name="url" type="url"/>--%>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="url" name="url" type="text" disabled value="${entity.url}"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="method">任务调用方式</label>
                                    <div class="col-lg-9">
                                        <select class="form-control" id="method" name="method" disabled>
                                            <option value="${entity.method}"><c:if test="${entity.method == 1}">post</c:if><c:if test="${entity.method == 2}">get</c:if></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3">请求时间</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" id="connectTime" name="connectTime" type="text" disabled value="${entity.connectTime}"/>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-success" onclick="javascript:history.go(-1);location.reload()">返回</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
