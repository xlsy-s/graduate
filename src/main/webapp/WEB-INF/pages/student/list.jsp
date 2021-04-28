<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>学生信息列表</title>
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
    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">
        <!--模态窗口-->
        <div class="tab-pane" id="tab-model">
            <div id="myModal" class="modal modal-open" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">增加学生</h4>
                        </div>
                        <form role="form">
                            <div class="modal-body">
                            <div class="box-body">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="studentName" class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-3">
                                            <div class="input-group date">
                                                <div class="input-group-addon">
                                                    <i class="fa  fa-user"></i>
                                                </div>
                                                <input id="studentName" name="studentName" type="text" class="form-control pull-right" placeholder="请输入学生名字">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="studentAge" class="col-sm-2 control-label">年龄</label>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-pencil-square-o"></i>
                                                    </div>
                                                    <input id="studentAge" name="studentAge" type="text" class="form-control pull-right" placeholder="请输入年龄">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">性别</label>
                                        <div class="col-sm-2">
                                            <input value="0" name="teacherGender" type="radio" />女
                                        </div>
                                        <input value="1" name="teacherGender" type="radio" />男
                                    </div>

                                    <div class="form-group">
                                        <label for="studentFaculty" class="col-sm-2 control-label">院系</label>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-bank (alias)"></i>
                                                    </div>
                                                    <select id="studentFaculty" name="studentFaculty" class="form-control pull-right">
                                                        <option selected="selected">没有数据</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="studentCourse" class="col-sm-2 control-label">课程</label>
                                        <div class="col-sm-3">
                                            <div class="input-group">
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-file-o"></i>
                                                    </div>
                                                    <select id="studentCourse" name="studentCourse" class="form-control pull-right">
                                                        <option selected="selected">没有数据</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-success" data-dismiss="modal">保存</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>

                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </div>
        <!--模态窗口/-->
        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                基础数据
                <small>学生列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index/page"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">基础数据</a></li>
                <li class="active">学生列表</li>
            </ol>
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
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <!--data-toggle="modal" data-target="#myModal" 连接模态窗口-->
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" title="添加学生"><i class="fa fa-file-o"></i>添加</button>
                                    <button type="button" class="btn btn-danger" title="删除" onclick="javascript:Del()"><i class="fa fa-trash-o"></i> 批量删除</button>
                                    <button type="button" class="btn btn-default" title="刷新" onclick="javascript:location.replace(location.href);"><i class="fa fa-refresh"></i> 刷新</button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input id="search" type="text" class="form-control input-sm" placeholder="搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right:0px;">
                                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="sorting_asc">学号</th>
                                <th class="sorting_desc">名字</th>
                                <th class="sorting_desc">性别</th>
                                <th class="sorting_asc sorting_asc_disabled">年龄</th>
                                <th class="sorting_desc sorting_desc_disabled">所在院系</th>
                                <th class="sorting_desc sorting_desc_disabled">所在班级</th>
                                <th class="sorting_desc sorting_desc_disabled">辅导员</th>
                                <th class="sorting_desc sorting_desc_disabled">入校时间</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody id="t-body">
                            <tr>
                                <td><input name="ids" id="1" type="checkbox"></td>
                                <td>1</td>
                                <td>王五</td>
                                <td>男</td>
                                <td>20</td>
                                <td>信科</td>
                                <td>云计算2班</td>
                                <td>张三</td>
                                <td>2020-6-5</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" data-target="#my-Modal">编辑/详情</button>
                                    <button type="button"  class="btn bg-olive btn-xs" >删除</button>
                                </td>
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
                        <div id="pageTotal" class="form-group form-inline">
                            总共2 页，共14 条数据
                        </div>
                    </div>
                    <div  class="box-tools pull-right">
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
    <!-- @@close -->
    <!-- 内容区域 /-->
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
        // datetime picker
        $('#dateTimePicker').datetimepicker({
            format: "mm/dd/yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        });
    });

    // 获取学生数据
    $(function () {
        let gender=["女","男"]
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/student/list",
            dataType: "json",
            success:function (data) {
                console.log(data.data)
                if(data.code === 200){
                    // 获取成功清空预留数据
                    $('#t-body').empty();
                    $(data.data.list).each(function () {
                        let tr=$('<tr>\n' +
                            '         <td><input name="ids" value="'+this.id+'" class="icheckbox_square-blue" type="checkbox"></td>\n' +
                            '         <td>'+this.id+'</td>\n' +
                            '         <td>'+this.studentName+'</td>\n' +
                            '         <td>'+gender[this.studentGender]+'</td>\n' +
                            '         <td>'+this.studentAge+'</td>\n' +
                            '         <td>'+this.studentFacultyId+'</td>\n' +
                            '         <td>'+this.studentClassId+'</td>\n' +
                            '         <td>'+this.studentTeacherId+'</td>\n' +
                            '         <td>'+this.studentTime+'</td>\n' +
                            '         <td class="text-center">\n' +
                            '           <a type="button" class="btn bg-olive btn-xs" href=${pageContext.request.contextPath}/student/data/'+this.id+'>编辑/详情</a>\n' +
                            '           <button  type="button" class="btn bg-olive btn-xs" onclick="javascript:del('+this.id+')">删除</button>\n' +
                            '         </td>\n' +
                            '</tr>');
                        $('#t-body').append(tr);
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
        let gender=["女","男"]
        let param = {page:Page,size:Size}
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/student/list",
            data: param,
            dataType: "json",
            success:function (data) {
                if(data.code === 200){
                    // 获取成功清空预留数据
                    $('#t-body').empty();
                    $(data.data.list).each(function () {
                        let tr=$('<tr>\n' +
                            '         <td><input name="ids" value="'+this.id+'" class="icheckbox_square-blue" type="checkbox"></td>\n' +
                            '         <td>'+this.id+'</td>\n' +
                            '         <td>'+this.studentName+'</td>\n' +
                            '         <td>'+gender[this.studentGender]+'</td>\n' +
                            '         <td>'+this.studentAge+'</td>\n' +
                            '         <td>'+this.studentFacultyId+'</td>\n' +
                            '         <td>'+this.studentClassId+'</td>\n' +
                            '         <td>'+this.studentTeacherId+'</td>\n' +
                            '         <td>'+this.studentTime+'</td>\n' +
                            '         <td class="text-center">\n' +
                            '           <a type="button" class="btn bg-olive btn-xs" href=${pageContext.request.contextPath}/student/data/'+this.id+'>编辑/详情</a>\n' +
                            '           <button  type="button" class="btn bg-olive btn-xs" onclick="javascript:del('+this.id+')">删除</button>\n' +
                            '         </td>\n' +
                            '</tr>');
                        $('#t-body').append(tr);
                    });
                }
            }
        })
    }



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
        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操
        $("#selall").click(function() {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });

    // 回车监听事件
    $(document).keyup(function (e) {
        if(e.keyCode == 13){
            if($("#search").val().length === 0){
                return false;
            }
            else{
                console.log("这时候发动ajax请求")
                return false
            }
        }
    })
    // 删除事件
    function del(id) {
        console.log(id)
        layer.confirm("确定要移除该学生吗？",function () {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/student/data/status/"+id,
                dataType: "json",
                success: function (data) {
                    layer.msg(data.msg,function () {
                        if(data.code==200){
                            window.location.reload();
                        }
                    })
                }
            })
        })
    }
    // 批量删除事件
    function Del() {
        console.log("触发了事件")
        let ids = [];
        $("input[name='ids']:checked").each(function(i){
            ids.push($(this).val())
        })
        if (ids.length==0){
            layer.msg("请选择需要移除的学生！")
            return false
        }
        else{
            layer.confirm("确定是否移除选中的学生们？",function () {
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/student/data/status/del",
                    data: {ids:ids},
                    dataType: "json",
                    success: function (data) {
                        layer.msg(data.msg,function () {
                            if(data.code===200){
                                window.location.reload();
                            }
                        })
                    }
                })
            })
        }

    }
</script>
</body>

</html>
<!---->