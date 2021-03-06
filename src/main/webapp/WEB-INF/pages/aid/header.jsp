<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!-- 页面头部 -->
    <header class="main-header">

        <!-- Logo -->
        <a href="javascript:return false;" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>数据</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>数据</b>后台管理</span>
        </a>


        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/static/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">${username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${pageContext.request.contextPath}/static/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    ${username} - 数据管理员
                                    <small>最后登录 11:20AM</small>
                                </p>
                            </li>
                            <!-- Menu Body
                    <li class="user-body">
                        <div class="row">
                            <div class="col-xs-4 text-center">
                                <a href="#">Followers</a>
                            </div>
                            <div class="col-xs-4 text-center">
                                <a href="#">Sales</a>
                            </div>
                            <div class="col-xs-4 text-center">
                                <a href="#">Friends</a>
                            </div>
                        </div>
                    </li>-->
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="${pageContext.request.contextPath}/forget/page" class="btn btn-default btn-flat">修改密码</a>
                                </div>
                                <div class="pull-right">
                                    <a href="javascript:quit();" id="quit" class="btn btn-default btn-flat">退出登录</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
<script>
    function quit(){
        layer.confirm('确定要退出吗？',function (index) {
            $.ajax({
                type:'get',
                url:'${pageContext.request.contextPath}/login/quit',
                dataType:'json',
                success:function (data){
                    if (data.code===200){
                        location.href='${pageContext.request.contextPath}/login/page';
                    }
                }
            })
        })
    }
</script>
<!-- 页面头部 /-->