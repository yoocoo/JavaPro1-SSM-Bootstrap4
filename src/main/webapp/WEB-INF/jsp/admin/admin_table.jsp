<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2018/2/16
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title> 数据表| Bootstrap 4 Web App </title>
    <meta name="description" content="Admin, Dashboard, Bootstrap, Bootstrap 4, Angular, AngularJS"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui"/>
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
    <link rel="stylesheet" href="/static/B4/assets/animate.css/animate.min.css" type="text/css"/>
    <link rel="stylesheet" href="/static/B4/assets/glyphicons/glyphicons.css" type="text/css"/>
    <link rel="stylesheet" href="/static/B4/assets/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="/static/B4/assets/material-design-icons/material-design-icons.css" type="text/css"/>

    <link rel="stylesheet" href="/static/B4/assets/bootstrap/dist/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="/static/B4/assets/datatable/dataTables.bootstrap4.min.css" type="text/css"/>
    <!-- build:css /static/B4/assets/styles/app.min.css -->
    <link rel="stylesheet" href="/static/B4/assets/styles/app.css" type="text/css"/>
    <!-- endbuild -->
    <link rel="stylesheet" href="/static/B4/assets/styles/font.css" type="text/css"/>
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
                            <div ui-include="'../views/blocks/dropdown.new.html'"></div>
                        </li>
                    </ul>
                    <div ui-include="'../views/blocks/navbar.form.html'"></div>
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
                        <div ui-include="'../views/blocks/dropdown.notification.html'"></div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link p-0 clear" href="#" data-toggle="dropdown">
                  <span class="avatar w-32">
                    <img src="/static/B4/assets/images/a0.jpg" alt="...">
                    <i class="on b-white bottom"></i>
                  </span>
                        </a>
                        <div ui-include="'../views/blocks/dropdown.user.html'"></div>
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
                    &copy; Copyright <strong>Flatkit</strong> <span
                        class="hidden-xs-down">- Built with Love v1.1.3</span>
                    <a ui-scroll-to="content"><i class="fa fa-long-arrow-up p-x-sm"></i></a>
                </div>
                <div class="nav">
                    <a class="nav-link" href="../">About</a>
                    <a class="nav-link" href="http://themeforest.net/user/flatfull/portfolio?ref=flatfull">Get it</a>
                </div>
            </div>
        </div>
        <div ui-view class="app-body" id="view">
            <!-- ############ PAGE START-->
            <div class="padding">
                <div class="box">
                    <div class="box-header">
                        <h2>日志数据列表</h2>
                    </div>
                    <div class="table-responsive">
                        <table id="tables" cellspacing="0" width="100%" class="table table-striped b-t b-b">
                            <thead>
                            <tr>
                                <th style="width:20%">sessionId</th>
                                <th style="width:25%">osName</th>
                                <th style="width:25%">broName</th>
                                <th style="width:15%">broVersion</th>
                                <th style="width:15%">description</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
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
                <a href="https://themeforest.net/item/flatkit-app-ui-kit/13231484?ref=flatfull"
                   class="btn btn-xs rounded danger pull-right">BUY</a>
                <h2>Theme Switcher</h2>
            </div>
            <div class="box-divider"></div>
            <div class="box-body">
                <p class="hidden-md-down">
                    <label class="md-check m-y-xs" data-target="folded">
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
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'primary', accent:'accent', warn:'warn'}">
                        <input type="radio" name="color" value="1">
                        <i class="primary"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'accent', accent:'cyan', warn:'warn'}">
                        <input type="radio" name="color" value="2">
                        <i class="accent"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'warn', accent:'light-blue', warn:'warning'}">
                        <input type="radio" name="color" value="3">
                        <i class="warn"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'success', accent:'teal', warn:'lime'}">
                        <input type="radio" name="color" value="4">
                        <i class="success"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'info', accent:'light-blue', warn:'success'}">
                        <input type="radio" name="color" value="5">
                        <i class="info"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'blue', accent:'indigo', warn:'primary'}">
                        <input type="radio" name="color" value="6">
                        <i class="blue"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'warning', accent:'grey-100', warn:'success'}">
                        <input type="radio" name="color" value="7">
                        <i class="warning"></i>
                    </label>
                    <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md"
                           data-value="{primary:'danger', accent:'grey-100', warn:'grey-300'}">
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
                        <span class="text">...</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / -->
    <!-- ############ LAYOUT END-->
</div>
<!-- build:js /static/B4/scripts/app.html.js -->
<!-- jQuery -->
<script src="/static/B4/libs/jquery/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
<script src="/static/B4/libs/jquery/tether/dist/js/tether.min.js"></script>
<script src="/static/B4/libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
<script src="/static/B4/libs/jquery/underscore/underscore-min.js"></script>
<script src="/static/B4/libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js"></script>
<script src="/static/B4/libs/jquery/PACE/pace.min.js"></script>

<script src="/static/B4/libs/js/datatable/jquery.dataTables.min.js"></script>
<script src="/static/B4/libs/js/datatable/dataTables.bootstrap4.min.js"></script>
<script src="/static/B4/libs/js/datatable/dataTables.buttons.min.js"></script>
<script src="/static/B4/libs/js/datatable/buttons.bootstrap4.min.js"></script>
<script src="/static/B4/libs/js/datatable/dataTables.select.min.js"></script>
<script src="/static/B4/libs/js/datatable/buttons.flash.min.js"></script>
<script src="/static/B4/libs/js/datatable/buttons.html5.min.js"></script>
<script src="/static/B4/libs/js/datatable/buttons.print.min.js"></script>
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
<script type="text/javascript">
    $(document).ready(function () {
        //DataTable
        $('#tables').DataTable({
            dom: 'Bfrtip',
            buttons: [
                {
                    extend: 'excel',
                    text: '下载Excel <i class="fa fa-cloud-download"> </i>',
                    className: 'btn bg-olive'
                },
                {
                    extend: 'print',
                    text: '<i class="fa fa-table"> </i> 打印表格',
                    className: 'btn bg-olive'
                },
                {
                    extend: 'pageLength',
                    text: '显示条数[/] <i class="fa  fa-stack-overflow"> </i>',
                    className: 'btn bg-olive',
                    language: {
                        buttons: {
                            pageLength: {
                                _: "显示 %d 项",
                                0: "显示所有"
                            }
                        }
                    }
                }],
            ajax: {
                url: "<%=request.getContextPath()%>/actionLog/list", //用户日志列表
                type: "POST",
                data: {}
            },
            serverSide: true,//开启服务器模式:启用服务器分页
            lengthChange: false,//是否允许用户改变表格每页显示的记录数
            ordering: false,//是否允许用户排序
            paging: true,//是否分页
            pagingType: "simple_numbers",//上一页、中间数字下一页、四个按钮还有页数按钮
            processing: true,//是否显示处理状态
            scrollX: true,//允许水平滚动
            searching: false,//是否开始本地搜索
            stateSave: true,//刷新时是否保存状态
            autoWidth: true,//自动计算宽度
            lengthMenu: [
                [10, 25, 50, 70, 100],
                ['10 行', '25 行', '50 行', '70行', '最大行数']
            ],
//            retrieve:true,//检索已存在的Datatables实例(retrieve)
            destroy: true, //Cannot reinitialise DataTable,解决重新加载表格内容问题,销毁Datatables实例(destroy)
            deferRender: true,//延迟渲染,在数据量较大时，可以提高效率
            columns: [
                {
                    data: "sessionId",
                    defaultContent: "<i>--</i>"
                },//再次条件查询后渲染时候，被隐藏了
                {data: "osName",defaultContent: "<i>--</i>"},
                {data: "broName", defaultContent: "<i>--</i>"},
                {
                    data: "broVersion",
                    defaultContent: "<i>--</i>"
                },
                {
                    data: "description",
                    defaultContent: "<i>--</i>"
                }
                // {
                //     data: "creatTime",
                //     "render": function (data, type, full, meta) {
                //         var dataStr = Date.parse(data);
                //         return new Date(dataStr).Format("yyyy-MM-dd ");
                //     }
                // },

            ],
            columnDefs: [
                // {
                //     "targets": 5,//编辑
                //     "data": null,//下面这行，添加了编辑按钮和，删除按钮
                //     "defaultContent": "<i>--</i>",
                //     "render": function (data, type, row) {
                //         return '<a href="" class="editor_edit">删除</a>'
                //     }
                // }
            ],
            "createdRow": function (row, data, dataIndex) {
                //每加载完一行的回调函数
                $('td', row).eq(1).css('font-weight', "bold").css("color", "green");//获取到具体行具体格的元素
                return row;
            }
        });
    });
    // // Apply the search
    //============================日期格式化=======================================================================
    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
</script>
<!-- endbuild -->
</body>
</html>

