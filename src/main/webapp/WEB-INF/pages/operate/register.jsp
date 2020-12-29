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
        <b>新用户</b>注册
    </div>

    <div class="register-box-body">
        <form  id="register">
            <div class="form-group has-feedback">
                <input type="text" title="用户名" id="username" name="username" class="form-control" placeholder="用户名只能是4-6位的字母或者数字" autocomplete="off">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" title="姓名" id="name" name="name" class="form-control" placeholder="请输入您的姓名" autocomplete="off">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" title="电话" id="phone" name="phone" class="form-control" placeholder="手机号" autocomplete="off">
                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" title="密码" id="passwd" name="password" class="form-control" placeholder="密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" title="确认密码" id="passwds" name="passwords" class="form-control" placeholder="确认密码">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="row">
                <!-- /.col -->
                <div class="col-xs-4">
                    <input  type="submit" value="注册" class="btn btn-primary btn-block btn-flat"/>
                </div>
                <div class="col-xs-4"></div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <input  type="button" value="重置" class="btn btn-danger btn-block btn-flat"/>
                </div>
            </div>
        </form>
        <a href="${pageContext.request.contextPath}/login/page" class="text-center">我有账号，现在就去登录</a>
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
        // 用户名
        let ReUser = /^[a-zA-Z0-9]{4,6}$/
        // 姓名
        let cnPattern = /[\u4E00-\u9FA5]{2,4}/;
        // 手机
        let phone = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
        // 密码
        let pPattern = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
        let Re = [ReUser,cnPattern,phone,pPattern]
        let prompt = [
            "只能是4-6位的字母或者数字",
            "不合法，请检测后再次输入",
            "不合法，请检测后再次输入",
            "最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符"]
        $('input[type=submit]').click(function () {
            // 判断表单是否为空与是否合法
            let information = $("input[class='form-control']")
            for(let i = 0;i<information.length-1;i++){
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
                layer.msg("两次密码不一致！请检查后重试！")
                $('#passwds').focus();
                return false;
            }
            // 如果表单不为空并且合法两次密码都相同就发动ajax请求
            else{
                $.ajax({
                    type:'post',
                    url:"${pageContext.request.contextPath}/register/add",
                    data: $('#register').serializeArray(),
                    dataType:'json',
                    success:function (data) {
                        if(data.code===200){
                            layer.msg(data.msg)
                            location.href="${pageContext.request.contextPath}/login/page"
                        }
                        else{
                            layer.msg(data.msg);
                            $('#username').focus();
                        }
                    }
                })
                return false;
            }
        })
        // 重置事件
        $('input[type=button]').click(function () {
            let info = $('input[class="form-control"]')
            $(info).each(function () {
                this.value="";
            })
            layer.msg("重置成功！");
        })
    });

</script>
</body>

</html>
<!---->