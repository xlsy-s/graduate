<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/10/18
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册页面</title>
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
    <script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/plugins/iCheck/icheck.min.js"></script>
    <script src="/static/plugins/layer/layer.js"></script>
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <b>忘记</b>密码
    </div>
    <div class="register-box-body">
        <form method="post" id="forget">
            <div class="form-group has-feedback">
                <input type="text" title="电话" id="phone" name="phone" class="form-control" placeholder="手机号" autocomplete="off">
                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" title="新密码" id="passwd" name="password" class="form-control" placeholder="新密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" title="确认密码" id="passwds" name="passwords" class="form-control" placeholder="确认密码">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="row">
                <!-- /.col -->
                <div class="col-xs-4">
                    <input  type="submit" value="更改密码" class="btn btn-primary btn-block btn-flat"/>
                </div>
                <div class="col-xs-4"></div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <input  type="reset" value="重置" class="btn btn-danger btn-block btn-flat"/>
                </div>
            </div>
        </form>
        <div class="row">
            <div class="col-lg-4" style="padding-top: 2px;position: absolute;">
                <a href="${pageContext.request.contextPath}/login/page">返回登录页</a>
            </div>
        </div>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->
<script>
    $(function() {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
        // 正则
        // 手机
        let phone = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
        // 密码
        let pPattern = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
        let Re = [phone,pPattern]
        let prompt = [
            "不合法，请检测后再次输入",
            "最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符"]
        $('input[type=submit]').click(function () {
            // 判断表单是否为空与是否合法
            let information = $("input[class='form-control']")
            for(let i = 0;i<information.length;i++){
                // 判断表单是否为空
                if(information[i].value.length===0){
                    layer.msg(information[i].title+"不能为空！");
                    information[i].focus();
                    return false;
                }
                // 判断表单是否合法
                else if(information.val().length != 0){
                    if(!information[i].value.match(Re[i])){
                        layer.msg(information[i].title+prompt[i])
                        information[i].focus();
                        return false;
                    }
                }
            }
            // 密码
            let passwd = $('#passwd');
            // 确定密码
            let passwds = $('#passwds');
            if (passwd.val() != passwds.val()) {
                alert("两次密码不一致！请检查后重试！")
                $('#passwds').focus();
                return false;
            }
            // 如果表单不为空并且合法两次密码都相同就发动ajax请求
            else{
                $.ajax({
                    type:'post',
                    url:"${pageContext.request.contextPath}/forget/update",
                    data: $('#forget').serializeArray(),
                    dataType:'json',
                    success:function (data) {
                        layer.msg(data.msg,function () {
                            if(data.code===200){
                                location.href="${pageContext.request.contextPath}/login/page";
                            }
                        })
                    }
                })
                return false;
            }
        })
    });

</script>
</body>

</html>
<!---->