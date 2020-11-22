<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>首页</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- 页面meta /-->
    <link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/static/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="/static/plugins/morris/morris.css">
    <link rel="stylesheet" href="/static/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="/static/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="/static/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="/static/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="/static/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="/static/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="/static/plugins/select2/select2.css">
    <link rel="stylesheet" href="/static/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="/static/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="/static/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="/static/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <link rel="stylesheet" href="/static/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="/static/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="/static/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="/static/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <script src="/static/plugins/jQuery/jquery-3.5.0.min.js"></script>
    <script src="/static/plugins/jQueryUI/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/plugins/raphael/raphael-min.js"></script>
    <script src="/static/plugins/morris/morris.min.js"></script>
    <script src="/static/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="/static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/static/plugins/knob/jquery.knob.js"></script>
    <script src="/static/plugins/daterangepicker/moment.min.js"></script>
    <script src="/static/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="/static/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
    <script src="/static/plugins/datepicker/bootstrap-datepicker.js"></script>
    <script src="/static/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
    <script src="/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="/static/plugins/fastclick/fastclick.js"></script>
    <script src="/static/plugins/iCheck/icheck.min.js"></script>
    <script src="/static/plugins/adminLTE/js/app.min.js"></script>
    <script src="/static/plugins/treeTable/jquery.treetable.js"></script>
    <script src="/static/plugins/select2/select2.full.min.js"></script>
    <script src="/static/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <script src="/static/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
    <script src="/static/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
    <script src="/static/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
    <script src="/static/plugins/bootstrap-markdown/js/markdown.js"></script>
    <script src="/static/plugins/bootstrap-markdown/js/to-markdown.js"></script>
    <script src="/static/plugins/ckeditor/ckeditor.js"></script>
    <script src="/static/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="/static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="/static/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <script src="/static/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="/static/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="/static/plugins/chartjs/Chart.min.js"></script>
    <script src="/static/plugins/flot/jquery.flot.min.js"></script>
    <script src="/static/plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="/static/plugins/flot/jquery.flot.pie.min.js"></script>
    <script src="/static/plugins/flot/jquery.flot.categories.min.js"></script>
    <script src="/static/plugins/ionslider/ion.rangeSlider.min.js"></script>
    <script src="/static/plugins/bootstrap-slider/bootstrap-slider.js"></script>
    <script src="/static/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="/static/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="/static/plugins/layer/layer.js"></script>
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <div class="wrapper">

        <!-- 页面头部 -->
        <header class="main-header">


            <!-- Logo -->
            <a href="javascript:return false;" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>商品</b></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>商品</b>展示列表</span>
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
                            <a href="${pageContext.request.contextPath}/login/page">
                                <span class="hidden-xs">亲，请登录</span>
                            </a>
                        </li>
                        <li class="dropdown user user-menu">
                            <a href="${pageContext.request.contextPath}/register/page">
                                <span class="hidden-xs">免费注册</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- 页面头部 /-->

        <!-- 导航侧栏 -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
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
                        <a href="${pageContext.request.contextPath}/home/page">
                            <i class="fa fa-dashboard"></i>
                            <span>首页</span>
                        </a>
                    </li>

                    <!-- 菜单 -->

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- 导航侧栏 /-->

        <!-- 内容区域 -->
        <div class="content-wrapper">
            <!-- 内容头部 -->
            <section class="content-header">
                <h1>
                    产品展示
                    <small>数据列表</small>
                </h1>
            </section>
            <!-- 内容头部 /-->

            <!-- 正文区域 -->
            <section class="content">

                <!-- .box-body -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">列表</h3>
                    </div>

                    <div class="box-body">

                        <!-- 数据表格 -->
                        <div class="table-box">

                            <!--工具栏-->
                            <div style="float: left">
                                <div class="box-tools pull-right">
                                    <div class="has-feedback">
                                        <input type="text" class="form-control input-sm" placeholder="搜索">
                                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                    </div>
                                </div>
                            </div>

                            <!--工具栏/-->

                            <!--数据列表-->
                            <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                <thead>
                                <tr>
                                    <th class="sorting_asc">产品ID</th>
                                    <th class="sorting_desc">产品名</th>
                                    <th class="sorting_asc sorting_asc_disabled">出发城市</th>
                                    <th class="sorting_desc sorting_desc_disabled">出发时间</th>
                                    <th class="sorting">产品描述</th>
                                    <th class="sorting">价格</th>
                                    <th class="text-center sorting">产品状态</th>
                                </tr>
                                </thead>
                                <tbody id="data-body">
                                <tr>
                                    <td>1</td>
                                    <td>Internet Explorer 4.0</td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center" style="background-color: #799c52;color: white">开启</td>
                                </tr>

                                </tbody>
                                <!--
                            <tfoot>
                            <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                            </tr>
                            </tfoot>-->
                            </table>
                            <!--数据列表/-->

                        </div>
                        <!-- 数据表格 /-->


                    </div>
                    <!-- /.box-body -->

                    <!-- .box-footer-->
                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                总共2 页，共14 条数据
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">首页</a>
                                </li>
                                <li><a href="#">上一页</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">下一页</a></li>
                                <li>
                                    <a href="#" aria-label="Next">尾页</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.box-footer-->
                </div>
            </section>
            <!-- 正文区域 /-->
        </div>

        <!-- 内容区域 /-->
        <!-- 底部导航 -->
        <jsp:include page="${pageContext.request.contextPath}aid/under.jsp"></jsp:include>
        <!-- 底部导航 /-->
    </div>
</div>
<script>
    $(function () {
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/product/list/page",
            dataType:"json",
            success:function (data) {
                if (data.code===200){
                    $('#data-body').empty();
                    $(data.data).each(function () {
                        let tr=$('<tr>\n' +
                            '                                    <td>'+this.id+'</td>\n' +
                            '                                    <td>'+this.productName+'</td>\n' +
                            '                                    <td>'+this.cityName+'</td>\n' +
                            '                                    <td>'+this.departureTime+'</td>\n' +
                            '                                    <td>'+this.productDesc+'</td>\n' +
                            '                                    <td>'+this.productPrice+'</td>\n' +
                            '                                    <td class="text-center" style="background-color: #799c52;color: white">开启</td>\n' +
                            '                                </tr>')
                        $("#data-body").append(tr);
                    })
                }
            }
        })
    })
</script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });

        // datetime picker
        $('#dateTimePicker').datetimepicker({
            format: "mm/dd/yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        });
    });
    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function() {
        // 激活导航位置
        setSidebarActive("admin-index");
        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
    });
</script>
</body>

</html>
<!---->