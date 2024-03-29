<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台管理界面</title>
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

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="beside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                日志管理 <small>全部日志</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/login/page"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">日志管理</a></li>
                <li class="active">全部日志</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content"> <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="刷新"
                                            onclick="window.location.reload();">
                                        <i class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm"
                                       placeholder="搜索"> <span
                                    class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right: 0px"><input id="selall" type="checkbox" class="icheckbox_square-blue"></th>
                                <th class="sorting_asc">ID</th>
                                <th class="sorting">访问时间</th>
                                <th class="sorting">访问用户</th>
                                <th class="sorting">访问IP</th>
                                <th class="sorting">资源URL</th>
                                <th class="sorting">执行时间</th>
                                <th class="sorting">访问方法</th>
                            </tr>
                            </thead>
                            <tbody id="dataBody">
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>${syslog.id}</td>
                                    <td>${syslog.visitTimeStr }</td>
                                    <td>${syslog.username }</td>
                                    <td>${syslog.ip }</td>
                                    <td>${syslog.url}</td>
                                    <td>${syslog.executionTime}毫秒</td>
                                    <td>${syslog.method}</td>
                                </tr>
                            </tbody>
                        </table>
                        <!--数据列表/-->


                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div id="pageTotal" class="form-group form-inline">
                            总共2 页，共14 条数据
                        </div>
                    </div>
                    <div class="box-tools pull-right">
                        <ul id="Pages" class="pagination">
                            <li><a href="#" aria-label="Previous">首页</a></li>
                            <li><a href="#">上一页</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">下一页</a></li>
                            <li><a href="#" aria-label="Next">尾页</a></li>
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
    <jsp:include page="under.jsp"></jsp:include>
    <!-- 底部导航 /-->

</div>

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
        setSidebarActive("log");
    });
    $(function () {
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/log/page/list",
            dataType: "json",
            success:function (data) {
                console.log(data)
                if(data.code === 200){
                    // 获取成功清空预留数据
                    $('#dataBody').empty();
                    $(data.data.list).each(function () {
                        let tr=$('<tr>\n' +
                            '                                    <td><input name="ids" type="checkbox"></td>\n' +
                            '                                    <td>'+this.id+'</td>\n' +
                            '                                    <td>'+this.visitTime+'</td>\n' +
                            '                                    <td>'+this.username+'</td>\n' +
                            '                                    <td>'+this.ip+'</td>\n' +
                            '                                    <td>'+this.url+'</td>\n' +
                            '                                    <td>'+this.executionTime+'毫秒</td>\n' +
                            '                                    <td>'+this.method+'</td>\n' +
                            '                                </tr>')
                        $('#dataBody').append(tr);
                    });
                    // 显示总条数与总页数
                    $('#pageTotal').text('总共'+data.data.pages+'页，共'+data.data.total+'条数据');
                    // 清空原来的数据
                    $('#Pages').empty();
                    $('#Pages').append(
                        '<li><a href="javascript:getDate('+1+','+data.data.pageSize+')" aria-label="Previous">首页</a></li>'
                    );
                    $('#Pages').append(
                        '<li><a href="javascript:getDate('+(data.data.pageNum-1)+','+data.data.pageSize+')">上一页</a></li>'
                    )
                    $(data.data.navigatepageNums).each(function () {
                        $('#Pages').append('<li><a href="javascript:getDate('+this+','+data.data.pageSize+')">'+this+'</a></li>')
                    })
                    $('#Pages').append(
                        '<li><a href="javascript:getDate('+(data.data.pageNum+1)+','+data.data.pageSize+')">下一页</a></li>'
                    )
                    $('#Pages').append(
                        '<li><a href="javascript:getDate('+data.data.pages+','+data.data.pageSize+')" aria-label="Next">尾页</a></li>'
                    );
                }
            }
        })
    })
    // 分页获取
    function getDate(Page,Size) {
        let param = {pageNum:Page,pageSize:Size}
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/log/page/list",
            data: param,
            dataType: "json",
            success:function (data) {
                console.log(data)
                if(data.code === 200){
                    // 获取成功清空预留数据
                    $('#dataBody').empty();
                    $(data.data.list).each(function () {
                        let tr=$('<tr>\n' +
                            '                                    <td><input name="ids" type="checkbox"></td>\n' +
                            '                                    <td>'+this.id+'</td>\n' +
                            '                                    <td>'+this.visitTime+'</td>\n' +
                            '                                    <td>'+this.username+'</td>\n' +
                            '                                    <td>'+this.ip+'</td>\n' +
                            '                                    <td>'+this.url+'</td>\n' +
                            '                                    <td>'+this.executionTime+'毫秒</td>\n' +
                            '                                    <td>'+this.method+'</td>\n' +
                            '                                </tr>')
                        $('#dataBody').append(tr);
                    });
                }
            }
        })
    }
</script>
</body>

</html>
<!---->