<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>查询定时任务</title>
    <script type="text/javascript">
        function delete_content(id, name) {
            $("#delete_content").text("请确认是否删除名称为:" + name);
            $("#delete_form").attr("action", "${ctx}"+"/task.shtml?action=doDelete&id=" + id);
        }
    </script>
</head>
<body>
<div id="page-wrapper">
    <%--只适合数据量少的table使用这种方式--%>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">查询任务</h1>
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
                                <th>名称</th>
                                <th>创建日期</th>
                                <th>更新日期</th>
                                <th>任务方式</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="l" items="${list}" varStatus="status">
                                <tr>
                                    <td>${status.index + 1}</td>
                                    <td>${l.name}</td>
                                    <td><fmt:formatDate value="${l.createTime}" type="both" dateStyle="default" timeStyle="default"></fmt:formatDate></td>
                                    <td><fmt:formatDate value="${l.updateTime}" type="both" dateStyle="default" timeStyle="default"></fmt:formatDate></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${l.method == 1}">Post</c:when>
                                            <c:otherwise>Get</c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-success"><a class="a_white" href="${ctx}/task.shtml?action=doView&id=${l.id}">查看</a></button>
                                        <button type="button" id="editButton" class="btn btn-warning"><a class="a_white" href="${ctx}/task.shtml?action=toUpdate&id=${l.id}">编辑</a></button>
                                        <button type="button" onclick="javascript:delete_content('${l.id}','${l.name}');" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">删除</button>
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
