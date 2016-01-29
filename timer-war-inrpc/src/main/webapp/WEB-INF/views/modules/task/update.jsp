<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>修改定时任务</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">修改定时任务</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    请修改如下表格
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <form class="form-horizontal" id="baseForm" action="${ctx}/task.shtml?action=doUpdate" role="form" method="post">
                                <input type="hidden" id="id" name="id" value="${entity.id}" />
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="name">任务名称</label>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required]" id="name" name="name" type="text" value="${entity.name}"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="url">任务地址</label>
                                    <%--验证不用h5的,用验证插件
                                    <input class="form-control" id="url" name="url" type="url"/>--%>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required,custom[url]]" id="url" name="url" type="text" value="${entity.url}"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="method">任务调用方式</label>
                                    <div class="col-lg-9">
                                        <select class="form-control validate[required]" id="method" name="method">
                                            <option value="1" <c:if test="${entity.method ==1}">selected</c:if>>post</option>
                                            <option value="2" <c:if test="${entity.method ==2}">selected</c:if>>get</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3">请求时间</label>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required,custom[integer]]" id="connectTime" name="connectTime" type="text" value="${entity.connectTime}"/>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-success">提交</button>
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
