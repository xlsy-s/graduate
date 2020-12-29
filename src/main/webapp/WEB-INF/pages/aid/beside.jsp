<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${pageContext.request.contextPath}/static/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${username}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- search form -->
            <!--<form action="#" method="get" class="sidebar-form">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="搜索...">
            <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
            </button>
          </span>
        </div>
    </form>-->
            <!-- /.search form -->


            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">菜单</li>
                <li id="admin-index">
                    <a href="${pageContext.request.contextPath}/index/page">
                        <i class="fa fa-dashboard"></i>
                        <span>首页</span>
                    </a>
                </li>

                <!-- 菜单 -->

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-gears (alias)"></i> <span>系统管理</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <li id="admin-profile">
                            <a href="all-admin-profile.html">
                                <i class="fa fa-circle-o"></i> 用户管理
                            </a>
                        </li>

                        <li id="admin-invoice">
                            <a href="all-admin-invoice.html">
                                <i class="fa fa-circle-o"></i> 角色管理
                            </a>
                        </li>

                        <li id="admin-invoice-print">
                            <a href="all-admin-invoice-print.html">
                                <i class="fa fa-circle-o"></i> 资源权限管理
                            </a>
                        </li>
                        <li id="admin-access-log">
                            <a href="all-admin-invoice-print.html">
                                <i class="fa fa-circle-o"></i> 访问日志
                            </a>
                        </li>

                    </ul>
                </li>



                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i> <span>基础数据</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <li id="charts-flot">
                            <a href="${pageContext.request.contextPath}/product/page">
                                <i class="fa fa-circle-o"></i> 商品管理
                            </a>
                        </li>

                        <li id="charts-inline">
                            <a href="all-charts-inline.html">
                                <i class="fa fa-circle-o"></i> 订单管理
                            </a>
                        </li>

                    </ul>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
<!-- 导航侧栏 /-->