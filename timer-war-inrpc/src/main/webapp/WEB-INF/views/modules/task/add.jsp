<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>增加定时任务</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">新增定时任务</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    请填写如下表格
                </div>
                <div class="panel-body">
                    <div class="row">

                        <div class="col-lg-6">
                            <form class="form-horizontal" id="baseForm" action="${ctx}/task.shtml?action=doAdd"
                                  role="form" method="post">
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="name">任务名称</label>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required]" id="name" name="name" type="text"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="url">任务地址</label>
                                    <%--验证不用h5的,用验证插件
                                    <input class="form-control" id="url" name="url" type="url"/>--%>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required,custom[url]]" id="url" name="url" type="text"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="method">任务调用方式</label>
                                    <div class="col-lg-9">
                                        <select class="form-control validate[required]" id="method" name="method">
                                            <option value="0">post</option>
                                            <option value="1">get</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3">请求时间</label>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required,custom[integer]]" id="connectTime" name="connectTime" type="text"/>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-success">提交</button>
                                <button type="reset" class="btn btn-danger">重置</button>
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
