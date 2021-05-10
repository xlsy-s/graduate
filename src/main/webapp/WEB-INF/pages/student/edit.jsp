<%--
  Created by IntelliJ IDEA.
  User: 税家俊
  Date: 2021/4/26
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>学生详情信息列表</title>
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
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="../aid/header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="../aid/beside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">
        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                基础数据
                <small>学生详情信息</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index/page"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">基础数据</a></li>
                <li><a href="${pageContext.request.contextPath}/student/page?page=1&size=5">学生列表</a></li>
                <li class="active">学生详情信息</li>
            </ol>
        </section>
        <!-- 内容头部 /-->
        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">学生${studentById.studentName}详情信息</h3>
                </div>
                <div class="tab-content">
                    <!--基础控件-->
                    <form role="form" id="dataForm">
                        <security:csrfMetaTags/>
                        <input hidden="hidden" name="id" value="${studentById.id}"/>
                        <div class="row data-type">
                            <div class="col-md-2 title">学生姓名</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentName" title="学生姓名" class="form-control" placeholder="姓名" value="${studentById.studentName}">
                            </div>
                            <div class="col-md-2 title">性别</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentGender" title="性别" class="form-control" disabled="disabled" placeholder="男/女" value="${studentById.studentSex}">
                            </div>
                            <div class="col-md-2 title">年龄</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentAge" title="年龄" class="form-control" disabled="disabled" placeholder="年龄"  value="${studentById.studentAge}">
                            </div>
                            <div class="col-md-2 title">身高</div>
                            <div class="col-md-4 data">
                                <div class="input-group">
                                    <input type="number" name="studentHeight" title="身高" class="form-control" placeholder="身高" value="${studentById.studentHeight}">
                                    <span class="input-group-addon">cm</span>
                                </div>
                            </div>
                            <div class="col-md-2 title">出生年月</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentBirth" title="年龄" class="form-control" disabled="disabled" placeholder="出生年月"  value="${studentById.studentBirthDay}">
                            </div>
                            <div class="col-md-2 title">院系</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentFacultyId" title="院系" class="form-control" placeholder="院系" value="${studentById.studentFacultyId}">
                            </div>
                            <div class="col-md-2 title">专业</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentProfessionId" class="form-control" placeholder="专业" value="${studentById.studentProfessionId}">
                            </div>
                            <div class="col-md-2 title">班级</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentClassId" title="班级" class="form-control" placeholder="班级" value="${studentById.studentClassId}">
                            </div>
                            <div class="col-md-2 title">辅导员</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentTeacherId" title="辅导员" class="form-control" placeholder="辅导员" value="${studentById.studentTeacherId}">
                            </div>
                            <div class="col-md-2 title">入学时间</div>
                            <div class="col-md-4 data">
                                <input type="text" name="studentTime" title="入学时间" disabled="disabled" class="form-control" placeholder="入学时间" value="${studentById.studentTimeDay}">
                            </div>
                            <div class="col-md-10 col-lg-offset-1 data text-center">
                                <button type="button" class="btn btn-success" id="save">保存</button>
                                <a type="button" class="btn btn-default" href="${pageContext.request.contextPath}/student/page?page=1&size=5">返回</a>
                            </div>
                        </div>
                    </form>
                    <!--基础控件/-->
                </div>
            </div>
        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->



    <!-- 底部导航 -->
    <jsp:include page="../aid/under.jsp"></jsp:include>
    <!-- 底部导航 /-->

</div>


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
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
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
        setSidebarActive("student-list");
    });

    // 保存更改操作
    $('#save').click(function () {
        let header = $("meta[name='_csrf_header']").attr("content");
        let token = $("meta[name='_csrf']").attr("content");
        // 验证数据是否为空
        let info = $('input[class="form-control"]');
        for(let i = 0;i<info.length;i++) {
            // 判断表单是否为空
            if (info[i].value.length === 0) {
                layer.msg(info[i].title + "不能为空！");
                info[i].focus();
                return false;
            }
        }
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/student/data/update",
            data: $("#dataForm").serializeArray(),
            beforeSend: function(xhr){
                xhr.setRequestHeader(header, token);
            },
            dataType: "json",
            success: function (data) {
                layer.msg(data.msg,function () {
                    // 成功返会学生页
                    if(data.code===200){
                        location.href="${pageContext.request.contextPath}/student/page?page=1&size=5";
                    }
                })
            }
        });
    })
</script>
</body>

</html>
