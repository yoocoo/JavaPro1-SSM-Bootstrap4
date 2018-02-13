<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2018/2/13
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Bootstrap4-login</title>
    <meta name="description" content="Admin, Dashboard, Bootstrap, Bootstrap 4, Angular, AngularJS" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- for ios 7 style, multi-resolution icon of 152x152 -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
    <link rel="apple-touch-icon" href="/static/B4/assets/images/logo.png">
    <meta name="apple-mobile-web-app-title" content="Flatkit">
    <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="shortcut icon" sizes="196x196" href="/static/B4/assets/images/logo.png">

    <!-- style -->
    <link rel="stylesheet" href="/static/B4/assets/animate.css/animate.min.css" type="text/css" />
    <link rel="stylesheet" href="/static/B4/assets/glyphicons/glyphicons.css" type="text/css" />
    <link rel="stylesheet" href="/static/B4/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="/static/B4/assets/material-design-icons/material-design-icons.css" type="text/css" />

    <link rel="stylesheet" href="/static/B4/assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
    <!-- build:css /static/B4/assets/styles/app.min.css -->
    <link rel="stylesheet" href="/static/B4/assets/styles/app.css" type="text/css" />
    <!-- endbuild -->
    <link rel="stylesheet" href="/static/B4/assets/styles/font.css" type="text/css" />
    <script type="text/javascript">
        // function keyLogin() {
        //     if (event.keyCode == 13)  //回车键的键值为13
        //         document.getElementById("btn_login").click();
        // }//调用登录按钮的登录事件
        function checkLoginInfo() {
            if ("" == $("#u").val()) {  //u标签的值为空
                $("#u").tips({ // .tips 是js提示标签的调用方法，具体的轮廓如上面的登陆页面的提示标签
                    side: 2,
                    msg: '用户名不得为空',//提示信息
                    bg: '#B22222',//提示的背景颜色
                    time: 3//提示呈现的时间
                });
                $("#u").focus();  //让u标签获取输入焦点
                return false;  //返回false，打断js的执行
            }
            if ($("#p").val() == "") {

                $("#p").tips({
                    side: 2,
                    msg: '密码不得为空',
                    bg: '#B22222',
                    time: 3
                });
                $("#p").focus();
                return false;
            }
            return true;
        }

        function webLogin() {
            if (checkLoginInfo()) {
                var name = $("#u").val();
                //                var是申明一个变量的关键字，accountName为变量名，
                //                $("#u")是找到一个标签ID为"u"的标签，.val() 是获取对应ID标签的值
                var pwd = $("#p").val();
                $.ajax({   //使用jquery下面的ajax开启网络请求
                    type: "POST",  //http请求方式为POST
                    url: '<%=request.getContextPath()%>/userAction/login',   //请求接口的地址
                    data: {loginId: name, pwd: pwd},   //存放的数据，服务器接口字段为accountName和password，分别对应用户登录名和密码
                    dataType: 'json',   //当这里指定为json的时候，获取到了数据后会自己解析的，只需要 返回值.字段名称 就能使用了
                    cache: false,  //不用缓存
                   success: window.location.href = "<%=request.getContextPath()%>/mvc/home"//跳转到主页

                <%--success: function (data) { //请求成功，http状态码为200。返回的数据已经打包在data中了--%>
                        <%--if (data.code == 1) {  //获判断json数据中的code是否为1，登录的用户名和密码匹配，通过效验，登陆成功--%>
                            <%--// window.location.href = data.data.nextUrl; //跳转到主页--%>
                            <%--window.location.href = "<%=request.getContextPath()%>/mvc/home"; //跳转到主页--%>


                        <%--} else {--%>
                            <%--alert(data.msg);--%>
                            <%--$("#u").focus();--%>
                        <%--}--%>
                    <%--}--%>
                });
            }
        }

    </script>
</head>
<body>
<div class="app" id="app">

    <!-- ############ LAYOUT START-->
    <div class="center-block w-xxl w-auto-xs p-y-md">
        <div class="navbar">
            <div class="pull-center">
                <div ui-include="'/static/B4views/blocks/navbar.brand.html'"></div>
            </div>
        </div>
        <div class="p-a-md box-color r box-shadow-z1 text-color m-a">
            <div class="m-b text-sm">
                用户信息登陆
            </div>
            <%--<form name="form">--%>
            <form action="" name="loginform"
                  <%--accept-charset="utf-8"--%>
                  id="login_form"
                  class="loginForm"
                  <%--method="post"--%>
            >
                <div class="md-form-group float-label">
                    <input type="text"  id="u" name="loginId" class="md-input" ng-model="user.email" required>
                    <label>账户名</label>
                </div>
                <div class="md-form-group float-label">
                    <input type="password"  id="p" name="pwd" class="md-input" ng-model="user.password" required>
                    <label>密码</label>
                </div>
                <div class="m-b-md">
                    <label class="md-check">
                        <input type="checkbox"><i class="primary"></i> Keep me signed in
                    </label>
                </div>
                <button type="submit" onclick="webLogin();" class="btn primary btn-block p-x-md">登陆</button>
            </form>
        </div>

        <div class="p-v-lg text-center">
            <div class="m-b"><a ui-sref="access.forgot-password" href="forgot-password.html" class="text-primary _600">Forgot password?</a></div>
            <div>Do not have an account? <a ui-sref="access.signup" href="signup.html" class="text-primary _600">Sign up</a></div>
        </div>
    </div>

    <!-- ############ LAYOUT END-->

</div>
<!-- build:js scripts/app.html.js -->
<!-- jQuery -->
<script src="/static/B4/libs/jquery/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
<script src="/static/B4/libs/jquery/tether/dist/js/tether.min.js"></script>
<script src="/static/B4/libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
<script src="/static/B4/libs/jquery/underscore/underscore-min.js"></script>
<script src="/static/B4/libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js"></script>
<script src="/static/B4/libs/jquery/PACE/pace.min.js"></script>

<script src="/static/B4/scripts/config.lazyload.js"></script>

<script src="/static/B4/scripts/palette.js"></script>
<script src="/static/B4/scripts/ui-load.js"></script>
<script src="/static/B4/scripts/ui-jp.js"></script>
<script src="/static/B4/scripts/ui-include.js"></script>
<script src="/static/B4/scripts/ui-device.js"></script>
<script src="/static/B4/scripts/ui-form.js"></script>
<script src="/static/B4/scripts/ui-nav.js"></script>
<script src="/static/B4/scripts/ui-screenfull.js"></script>
<script src="/static/B4/scripts/ui-scroll-to.js"></script>
<script src="/static/B4/scripts/ui-toggle-class.js"></script>

<script src="/static/B4/scripts/app.js"></script>

<!-- ajax -->
<script src="/static/B4/libs/jquery/jquery-pjax/jquery.pjax.js"></script>
<script src="/static/B4/scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
