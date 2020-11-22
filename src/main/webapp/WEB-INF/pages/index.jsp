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
    <jsp:include page="${pageContext.request.contextPath}aid/header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="${pageContext.request.contextPath}aid/beside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">
        <img src="${pageContext.request.contextPath}/static/img/center.jpg" alt="背景图" height="100%" width="100%">
    </div>

    <!-- 内容区域 /-->


    <!-- 底部导航 -->
    <jsp:include page="${pageContext.request.contextPath}aid/under.jsp"></jsp:include>
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
        setSidebarActive("admin-index");
    });
</script>
</body>

</html>
<!---->