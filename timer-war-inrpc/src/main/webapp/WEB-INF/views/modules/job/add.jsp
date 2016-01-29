<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>增加Job</title>
</head>
<body>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">新增Job</h1>
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
                            <form class="form-horizontal" id="baseForm" action="${ctx}/job.shtml?action=doAdd" role="form" method="post">
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="triggerName">trigger名称</label>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required]" id="triggerName" name="triggerName" type="text"/>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3" for="triggerGroup">trigger组</label>
                                    <div class="col-lg-9">
                                        <select class="form-control validate[required]" id="triggerGroup" name="triggerGroup">
                                            <c:forEach var="l" items="${taskList}">
                                                <option value="${l.id}">${l.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label col-lg-3">Cron表达式</label>
                                    <div class="col-lg-9">
                                        <input class="form-control validate[required]" id="cronExpression" name="cronExpression" type="text"/>
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