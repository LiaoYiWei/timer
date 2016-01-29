<%@ page contentType="text/html;charset=UTF-8" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top navbar_color" role="navigation" style="margin-bottom: 0">

    <!-- navbar-header -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${ctx}/home.shtml?action=toHome">
            <span class="label label-primary">定时任务管理系统</span>
        </a>
    </div>
    <!-- navbar-header -->

    <!-- navbar-left -->
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="#"><i class="fa fa-clock-o fa-fw"></i>定时任务<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${ctx}/task.shtml?action=toList">查询任务</a>
                        </li>
                        <li>
                            <a href="${ctx}/task.shtml?action=toAdd">增加任务</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-qrcode fa-fw"></i>Job任务<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${ctx}/job.shtml?action=toList">查询Job</a>
                        </li>
                        <li>
                            <a href="${ctx}/job.shtml?action=toAdd">增加Job</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- navbar-left -->

</nav>

