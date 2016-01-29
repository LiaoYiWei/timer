<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>查询job</title>
</head>
<body>
<div id="page-wrapper">
    <%--只适合数据量少的table使用这种方式--%>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">查询Job</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    任务列表
                </div>
                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="dataTables">
                            <thead>
                            <tr class="info">
                                <th>序号</th>
                                <th>任务名称</th>
                                <th>下次执行时间</th>
                                <th>上次执行时间</th>
                                <th>开始时间</th>
                                <th>结束时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="list" items="${list}" varStatus="status">
                                <tr>
                                    <td>${status.index + 1}</td>
                                    <td>${list.TRIGGER_NAME}</td>
                                    <td>${list.next_fire_time}</td>
                                    <td>${list.prev_fire_time}</td>
                                    <td>${list.start_time}</td>
                                    <td>${list.end_time}</td>
                                    <td>
                                        <button type="button" class="btn btn-success">开始</button>
                                        <button type="button" class="btn btn-warning">暂停</button>
                                        <button type="button" class="btn btn-danger">删除</button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
