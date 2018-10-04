<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2018/10/4
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>项目流程图</title>
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
</head>
<body>
<div class="app" id="app">

    <!-- ############ LAYOUT START-->

    <!-- aside -->
    <div id="aside" class="app-aside modal nav-dropdown">
        <%@ include file="/WEB-INF/jsp/template/asider.jsp" %>
    </div>
    <!-- / -->

    <!-- content -->
    <div id="content" class="app-content box-shadow-z0" role="main">
        <div class="app-header white box-shadow">
            <div class="navbar navbar-toggleable-sm flex-row align-items-center">
                <!-- Open side - Naviation on mobile -->
                <a data-toggle="modal" data-target="#aside" class="hidden-lg-up mr-3">
                    <i class="material-icons">&#xe5d2;</i>
                </a>
                <!-- / -->

                <!-- Page title - Bind to $state's title -->
                <div class="mb-0 h5 no-wrap" ng-bind="$state.current.data.title" id="pageTitle"></div>

                <!-- navbar collapse -->
                <div class="collapse navbar-collapse" id="collapse">
                    <!-- link and dropdown -->
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href data-toggle="dropdown">
                                <i class="fa fa-fw fa-plus text-muted"></i>
                                <span>New</span>
                            </a>
                            <div ui-include="'/static/B4/views/blocks/dropdown.new.html'"></div>
                        </li>
                    </ul>

                    <div ui-include="'/static/B4/views/blocks/navbar.form.html'"></div>
                    <!-- / -->
                </div>
                <!-- / navbar collapse -->

                <!-- navbar right -->
                <ul class="nav navbar-nav ml-auto flex-row">
                    <li class="nav-item dropdown pos-stc-xs">
                        <a class="nav-link mr-2" href data-toggle="dropdown">
                            <i class="material-icons">&#xe7f5;</i>
                            <span class="label label-sm up warn">3</span>
                        </a>
                        <div ui-include="'/static/B4/views/blocks/dropdown.notification.html'"></div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link p-0 clear" href="#" data-toggle="dropdown">
                  <span class="avatar w-32">
                    <img src="/static/B4/assets/images/a0.jpg" alt="/static/B4.">
                    <i class="on b-white bottom"></i>
                  </span>
                        </a>
                        <div ui-include="'/static/B4/views/blocks/dropdown.user.html'"></div>
                    </li>
                    <li class="nav-item hidden-md-up">
                        <a class="nav-link pl-2" data-toggle="collapse" data-target="#collapse">
                            <i class="material-icons">&#xe5d4;</i>
                        </a>
                    </li>
                </ul>
                <!-- / navbar right -->
            </div>
        </div>
        <div class="app-footer">
            <div class="p-2 text-xs">
                <div class="pull-right text-muted py-1">
                    &copy; Copyright <strong>Flatkit</strong> <span class="hidden-xs-down">- Built with Love v1.1.3</span>
                    <a ui-scroll-to="content"><i class="fa fa-long-arrow-up p-x-sm"></i></a>
                </div>
                <div class="nav">
                    <a class="nav-link" href="/static/B4/">About</a>
                    <a class="nav-link" href="http://themeforest.net/user/flatfull/portfolio?ref=flatfull">Get it</a>
                </div>
            </div>
        </div>
        <div ui-view class="app-body" id="view">

            <!-- ############ PAGE START-->
            <div class="padding">
                <ul class="timeline">
                    <li class="tl-header">
                        <div class="btn white" ui-toggle-class="timeline-center" ui-target=".timeline">中心位置</div>
                    </li>
                    <li class="tl-item">
                        <div class="tl-wrap b-info">
                            <span class="tl-date text-muted">2018年2月</span>
                            <div class="tl-content">
                                项目开始搭建
                            </div>
                        </div>
                    </li>
                    <li class="tl-item">
                        <div class="tl-wrap b-success">
                            <span class="tl-date text-muted">2018年2月-5月求职</span>
                            <div class="tl-content box-color text-color  p-a-sm">
                                <span class="arrow b-white left pull-top"></span>
                                <div>项目搁置</div>
                            </div>
                        </div>
                    </li>
                    <li class="tl-item tl-left">
                        <div class="tl-wrap b-primary">
                            <span class="tl-date text-muted">2018年10月</span>
                            <div class="tl-content box-color primary p-a-sm">
                                <span class="arrow b-primary left pull-top hidden-left"></span>
                                <span class="arrow b-primary right pull-top visible-left"></span>
                                <div class="text-lt">不抛弃不放弃</div>
                            </div>
                        </div>
                    </li>
                    <li class="tl-item">
                        <div class="tl-wrap b-primary">
                            <span class="tl-date text-muted">04.2014</span>
                            <div class="tl-content box-color text-color w-xl w-auto-xs">
                                <span class="arrow b-white left pull-top"></span>
                                <div class="text-lt p-x m-b-sm">With Title</div>
                                <div class="p-a b-t b-light">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat. Vestibulum ullamcorper
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="tl-item tl-left">
                        <div class="tl-wrap b-success">
                            <span class="tl-date text-muted">04.2014</span>
                            <div class="tl-content box-color info block">
                                <span class="arrow b-info left pull-top hidden-left"></span>
                                <span class="arrow b-info right pull-top visible-left"></span>
                                <div class="p-x m-b-sm font-bold">Block</div>
                                <div class="box-body b-t b-info">
                                    Consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat. Vestibulum ullamcorper
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="tl-header">
                        <div class="btn btn-sm white btn-rounded">2014</div>
                    </li>
                    <li class="tl-item">
                        <div class="tl-wrap b-primary">
                            <span class="tl-date text-muted">10.08.2013</span>
                            <div class="tl-content box-color text-color p-a-sm">
                                <span class="arrow b-white left pull-up hidden-left"></span>
                                <span class="arrow b-white right pull-up visible-left"></span>
                                <div class="text-lt">A good story to hear.</div>
                            </div>
                        </div>
                    </li>
                    <li class="tl-header">
                        <i class="ui-icon fa fa-twitter b-white b-2x info"></i>
                    </li>
                    <li class="tl-item tl-left">
                        <div class="tl-wrap b-warn">
                            <span class="tl-date text-muted">5.07.2013</span>
                            <div class="tl-content box-color text-color p-a-sm">
                                <span class="arrow b-white left pull-up hidden-left"></span>
                                <span class="arrow b-white right pull-up visible-left"></span>
                                <div class="text-lt">Yesterday is History</div>
                            </div>
                        </div>
                    </li>
                    <li class="tl-header">
                        <div class="btn btn-sm white btn-rounded">more</div>
                    </li>
                </ul>
            </div>

            <!-- ############ PAGE END-->

        </div>
    </div>
    <!-- / -->

    <!-- theme switcher -->
    <div id="switcher">
        <div class="switcher box-color dark-white text-color" id="sw-theme">
            <a href ui-toggle-class="active" target="#sw-theme" class="box-color dark-white text-color sw-btn">
                <i class="fa fa-gear"></i>
            </a>
            <div class="box-header">
                <a href="https://themeforest.net/item/flatkit-app-ui-kit/13231484?ref=flatfull" class="btn btn-xs rounded danger pull-right">BUY</a>
                <h2>Theme Switcher</h2>
            </div>
            <div class="box-divider"></div>
            <div class="box-body">
                <p class="hidden-md-down">
                    <label class="md-check m-y-xs"  data-target="folded">
                        <input type="checkbox">
                        <i class="green"></i>
                        <span class="hidden-folded">Folded Aside</span>
                    </label>
                    <label class="md-check m-y-xs" data-target="boxed">
                        <input type="checkbox">
                        <i class="green"></i>
                        <span class="hidden-folded">Boxed Layout</span>
                    </label>
                    <label class="m-y-xs pointer" ui-fullscreen>
                        <span class="fa fa-expand fa-fw m-r-xs"></span>
                        <span>Fullscreen Mode</span>
                    </label>
                </p>
                <p>Colors:</p>
                <p data-target="themeID">
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'primary', accent:'accent', warn:'warn'}">
                        <input type="radio" name="color" value="1">
                        <i class="primary"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'accent', accent:'cyan', warn:'warn'}">
                        <input type="radio" name="color" value="2">
                        <i class="accent"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'warn', accent:'light-blue', warn:'warning'}">
                        <input type="radio" name="color" value="3">
                        <i class="warn"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'success', accent:'teal', warn:'lime'}">
                        <input type="radio" name="color" value="4">
                        <i class="success"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'info', accent:'light-blue', warn:'success'}">
                        <input type="radio" name="color" value="5">
                        <i class="info"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'blue', accent:'indigo', warn:'primary'}">
                        <input type="radio" name="color" value="6">
                        <i class="blue"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'warning', accent:'grey-100', warn:'success'}">
                        <input type="radio" name="color" value="7">
                        <i class="warning"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'danger', accent:'grey-100', warn:'grey-300'}">
                        <input type="radio" name="color" value="8">
                        <i class="danger"></i>
                    </label>
                </p>
                <p>Themes:</p>
                <div data-target="bg" class="row no-gutter text-u-c text-center _600 clearfix">
                    <label class="p-a col-sm-6 light pointer m-0">
                        <input type="radio" name="theme" value="" hidden>
                        Light
                    </label>
                    <label class="p-a col-sm-6 grey pointer m-0">
                        <input type="radio" name="theme" value="grey" hidden>
                        Grey
                    </label>
                    <label class="p-a col-sm-6 dark pointer m-0">
                        <input type="radio" name="theme" value="dark" hidden>
                        Dark
                    </label>
                    <label class="p-a col-sm-6 black pointer m-0">
                        <input type="radio" name="theme" value="black" hidden>
                        Black
                    </label>
                </div>
            </div>
        </div>

        <div class="switcher box-color black lt" id="sw-demo">
            <a href ui-toggle-class="active" target="#sw-demo" class="box-color black lt text-color sw-btn">
                <i class="fa fa-list text-white"></i>
            </a>
            <div class="box-header">
                <h2>Demos</h2>
            </div>
            <div class="box-divider"></div>
            <div class="box-body">
                <div class="row no-gutter text-u-c text-center _600 clearfix">
                    <a href="dashboard.html"
                       class="p-a col-sm-6 primary">
                        <span class="text-white">Default</span>
                    </a>
                    <a href="dashboard.0.html"
                       class="p-a col-sm-6 success">
                        <span class="text-white">Zero</span>
                    </a>
                    <a href="dashboard.1.html"
                       class="p-a col-sm-6 blue">
                        <span class="text-white">One</span>
                    </a>
                    <a href="dashboard.2.html"
                       class="p-a col-sm-6 warn">
                        <span class="text-white">Two</span>
                    </a>
                    <a href="dashboard.3.html"
                       class="p-a col-sm-6 danger">
                        <span class="text-white">Three</span>
                    </a>
                    <a href="dashboard.4.html"
                       class="p-a col-sm-6 green">
                        <span class="text-white">Four</span>
                    </a>
                    <a href="dashboard.5.html"
                       class="p-a col-sm-6 info">
                        <span class="text-white">Five</span>
                    </a>
                    <div
                            class="p-a col-sm-6 lter">
                        <span class="text">/static/B4.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / -->

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

<script src="/static/B4/scriptsconfig.lazyload.js"></script>

<script src="/static/B4/scriptspalette.js"></script>
<script src="/static/B4/scriptsui-load.js"></script>
<script src="/static/B4/scriptsui-jp.js"></script>
<script src="/static/B4/scriptsui-include.js"></script>
<script src="/static/B4/scriptsui-device.js"></script>
<script src="/static/B4/scriptsui-form.js"></script>
<script src="/static/B4/scriptsui-nav.js"></script>
<script src="/static/B4/scriptsui-screenfull.js"></script>
<script src="/static/B4/scriptsui-scroll-to.js"></script>
<script src="/static/B4/scriptsui-toggle-class.js"></script>

<script src="/static/B4/scriptsapp.js"></script>

<!-- ajax -->
<script src="/static/B4/libs/jquery/jquery-pjax/jquery.pjax.js"></script>
<script src="/static/B4/scriptsajax.js"></script>
<!-- endbuild -->
</body>
</html>
