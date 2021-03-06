<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2018/2/15
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>后台首页| Bootstrap 4 Web App </title>
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
    <!-- / aside -->

    <!-- content -->
    <div id="content" class="app-content box-shadow-z3" role="main">
        <div class="app-header info box-shadow-z4 navbar-md">
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
                    &copy; Copyright <strong>Flatkit</strong> <span class="hidden-xs-down">- Built with Love v1.1.3</span>
                    <a ui-scroll-to="content"><i class="fa fa-long-arrow-up p-x-sm"></i></a>
                </div>
                <div class="nav">
                    <a class="nav-link" href="../">About</a>
                    <a class="nav-link" href="http://themeforest.net/user/flatfull/portfolio?ref=flatfull">Get it</a>
                </div>
            </div>
        </div>
        <div class="app-body" id="view">

            <!-- ############ PAGE START-->
            <div class="padding">
                <div class="margin">
                    <h5 class="mb-0 _300">Hi Jone, Welcome back</h5>
                    <small class="text-muted">Awesome uikit for your next Material Design project</small>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="box p-a">
                            <div class="pull-left m-r">
            <span class="w-40 warn text-center rounded">
              <i class="material-icons">shopping_basket</i>
            </span>
                            </div>
                            <div class="clear">
                                <h4 class="m-0 text-md"><a href>75 <span class="text-sm">Sales</span></a></h4>
                                <small class="text-muted">6 waiting payment.</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="box-color p-a primary">
                            <div class="pull-right m-l">
            <span class="w-40 dker text-center rounded">
              <i class="material-icons">local_shipping</i>
            </span>
                            </div>
                            <div class="clear">
                                <h4 class="m-0 text-md"><a href>40 <span class="text-sm">Orders</span></a></h4>
                                <small class="text-muted">38 Shipped.</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="box p-a">
                            <div class="pull-right m-l">
            <span class="w-40 accent text-center rounded">
              <i class="material-icons">people</i>
            </span>
                            </div>
                            <div class="clear">
                                <h4 class="m-0 text-md"><a href>6,000 <span class="text-sm">Members</span></a></h4>
                                <small class="text-muted">632 activities post.</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3">
                        <div class="box-color p-a accent">
                            <div class="pull-left m-r">
            <span class="w-40 dker text-center rounded">
              <i class="material-icons">comment</i>
            </span>
                            </div>
                            <div class="clear">
                                <h4 class="m-0 text-md"><a href>69 <span class="text-sm">Comments</span></a></h4>
                                <small class="text-muted">5 approved.</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row no-gutter box">
                    <div class="col-sm-8">
                        <div class="box-header">
                            <h3>Activities</h3>
                            <small>Your last activity is posted 4 hours ago</small>
                        </div>
                        <div class="box-body">
                            <div ui-jp="plot" ui-refresh="app.setting.color" ui-options="
	              [
	                { 
	                  data: [[1, 6.1], [2, 6.3], [3, 6.4], [4, 6.6], [5, 7.0], [6, 7.7], [7, 8.3]], 
	                  bars: { show: true, barWidth: 0.2, align: 'left', lineWidth: 1, fillColor: { colors: [{ opacity: 0.6 }, { opacity: 1}] } } 
	                },
	                { 
	                  data: [[1, 5.5], [2, 5.7], [3, 6.4], [4, 7.0], [5, 7.2], [6, 7.3], [7, 7.5]], 
	                  bars: { show: true, barWidth: 0.2, align: 'right', lineWidth: 1, fillColor: { colors: [{ opacity: 0.6 }, { opacity: 1}] } } 
	                }
	              ], 
	              {
	                colors: ['#0cc2aa','#fcc100'],
	                series: { shadowSize: 3 },
	                xaxis: { show: true, font: { color: '#ccc' }, position: 'bottom' },
	                yaxis:{ show: true, font: { color: '#ccc' }},
	                grid: { hoverable: true, clickable: true, borderWidth: 0, color: 'rgba(120,120,120,0.5)' },
	                tooltip: true,
	                tooltipOpts: { content: '%x.0 is %y.4',  defaultTheme: false, shifts: { x: 0, y: -40 } }
	              }
	            " style="height:200px" >
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 dker">
                        <div class="box-header">
                            <h3>Reports</h3>
                        </div>
                        <div class="box-body">
                            <p class="text-muted m-b-md">Dales nisi nec adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis</p>
                            <button class="md-btn md-raised m-b-sm p-x success">Read more</button>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-xl-4">
                        <div class="box">
                            <div class="box-header">
                                <h3>Your tasks</h3>
                                <small>Calculated in last 7 days</small>
                            </div>
                            <div class="box-tool">
                                <ul class="nav">
                                    <li class="nav-item inline">
                                        <a class="nav-link">
                                            <i class="material-icons md-18">&#xe863;</i>
                                        </a>
                                    </li>
                                    <li class="nav-item inline dropdown">
                                        <a class="nav-link" data-toggle="dropdown">
                                            <i class="material-icons md-18">&#xe5d4;</i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-scale pull-right">
                                            <a class="dropdown-item" href>This week</a>
                                            <a class="dropdown-item" href>This month</a>
                                            <a class="dropdown-item" href>This week</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item">Today</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="text-center b-t">
                                <div class="row-col">
                                    <div class="row-cell p-a">
                                        <div class="inline m-b">
                                            <div ui-jp="easyPieChart" class="easyPieChart" ui-refresh="app.setting.color" data-redraw='true' data-percent="55" ui-options="{
	                      lineWidth: 8,
	                      trackColor: 'rgba(0,0,0,0.05)',
	                      barColor: '#0cc2aa',
	                      scaleColor: 'transparent',
	                      size: 100,
	                      scaleLength: 0,
	                      animate:{
	                        duration: 3000,
	                        enabled:true
	                      }
	                    }">
                                                <div>
                                                    <h5>55%</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            Finished
                                            <small class="block m-b">320</small>
                                            <a href class="btn btn-sm white rounded">Manage</a>
                                        </div>
                                    </div>
                                    <div class="row-cell p-a dker">
                                        <div class="inline m-b">
                                            <div ui-jp="easyPieChart" class="easyPieChart" ui-refresh="app.setting.color" data-redraw='true' data-percent="45" ui-options="{
	                      lineWidth: 8,
	                      trackColor: 'rgba(0,0,0,0.05)',
	                      barColor: '#fcc100',
	                      scaleColor: 'transparent',
	                      size: 100,
	                      scaleLength: 0,
	                      animate:{
	                        duration: 3000,
	                        enabled:true
	                      }
	                    }">
                                                <div>
                                                    <h5>45%</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            Remaining
                                            <small class="block m-b">205</small>
                                            <a href class="btn btn-sm white rounded">Manage</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-4">
                        <div class="box">
                            <div class="box-header">
                                <h3>Your projects</h3>
                                <small>Calculated in last 30 days</small>
                            </div>
                            <div class="box-tool">
                                <ul class="nav">
                                    <li class="nav-item inline">
                                        <a class="nav-link">
                                            <i class="material-icons md-18">&#xe863;</i>
                                        </a>
                                    </li>
                                    <li class="nav-item inline dropdown">
                                        <a class="nav-link" data-toggle="dropdown">
                                            <i class="material-icons md-18">&#xe5d4;</i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-scale pull-right">
                                            <a class="dropdown-item" href>This week</a>
                                            <a class="dropdown-item" href>This month</a>
                                            <a class="dropdown-item" href>This week</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item">Today</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="box-body">
                                <div ui-jp="plot" ui-refresh="app.setting.color" ui-options="
	              [
	                { data: [[1, 3], [2, 2.6], [3, 3.2], [4, 3], [5, 3.5], [6, 3], [7, 3.5]], 
	                  points: { show: true, radius: 0}, 
                  	  splines: { show: true, tension: 0.45, lineWidth: 2, fill: 0.2 } 
	                },
	                { data: [[1, 3.6], [2, 3.5], [3, 6], [4, 4], [5, 4.3], [6, 3.5], [7, 3.6]], 
	                  points: { show: true, radius: 0}, 
                  	  splines: { show: true, tension: 0.45, lineWidth: 2, fill: 0.1 } 
	                }
	              ], 
	              {
	                colors: ['#fcc100','#0cc2aa'],
	                series: { shadowSize: 3 },
	                xaxis: { show: true, font: { color: '#ccc' }, position: 'bottom' },
	                yaxis:{ show: true, font: { color: '#ccc' },  min: 2},
	                grid: { hoverable: true, clickable: true, borderWidth: 0, color: 'rgba(120,120,120,0.5)' },
	                tooltip: true,
	                tooltipOpts: { content: '%x.0 is %y.4',  defaultTheme: false, shifts: { x: 0, y: -40 } }
	              }
	            " style="height:200px" >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-4">
                        <div class="box">
                            <div class="box-header">
                                <h3>Your Sales</h3>
                                <small>A general overview of your sales</small>
                            </div>
                            <div class="box-tool">
                                <ul class="nav">
                                    <li class="nav-item inline">
                                        <a class="nav-link">
                                            <i class="material-icons md-18">&#xe863;</i>
                                        </a>
                                    </li>
                                    <li class="nav-item inline dropdown">
                                        <a class="nav-link" data-toggle="dropdown">
                                            <i class="material-icons md-18">&#xe5d4;</i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-scale pull-right">
                                            <a class="dropdown-item" href>This week</a>
                                            <a class="dropdown-item" href>This month</a>
                                            <a class="dropdown-item" href>This week</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item">Today</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="box-body">
                                <div ui-jp="plot" ui-refresh="app.setting.color" ui-options="
	              [
	                { data: [[1, 2], [2, 4], [3, 5], [4, 7], [5, 6], [6, 4], [7, 5], [8, 4]] },
	                { data: [[1, 2], [2, 3], [3, 2], [4, 5], [5, 4], [6, 3], [7, 4], [8, 2]] }
	              ], 
	              {
	                bars: { show: true, fill: true,  barWidth: 0.3, lineWidth: 2, order: 1, fillColor: { colors: [{ opacity: 0.2 }, { opacity: 0.2}] }, align: 'center'},
	                colors: ['#0cc2aa','#fcc100'],
	                series: { shadowSize: 3 },
	                xaxis: { show: true, font: { color: '#ccc' }, position: 'bottom' },
	                yaxis:{ show: true, font: { color: '#ccc' }},
	                grid: { hoverable: true, clickable: true, borderWidth: 0, color: 'rgba(120,120,120,0.5)' },
	                tooltip: true,
	                tooltipOpts: { content: '%x.0 is %y.4',  defaultTheme: false, shifts: { x: 0, y: -40 } }
	              }
	            " style="height:200px" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-8">
                        <div class="box">
                            <div class="box-header">
                                <h3>Feeds <span class="label success">5</span></h3>
                            </div>
                            <div class="box-body">
                                <div class="streamline b-l m-l-md">
                                    <div class="sl-item">
                                        <div class="sl-left">
                                            <img src="/static/B4/assets/images/a0.jpg" class="img-circle">
                                        </div>
                                        <div class="sl-content">
                                            <div class="sl-date text-muted">2 minutes ago</div>
                                            <div class="sl-author">
                                                <a href>Peter Joo</a>
                                            </div>
                                            <div>
                                                <p>Consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat. Vestibulum ullamcorper sodales nisi nec condimentum. Mauris convallis mauris at pellentesque volutpat. Phasellus at ultricies neque, quis malesuada augue. Donec eleifend</p>
                                            </div>
                                            <div class="sl-footer">
                                                <a href data-toggle="collapse" data-target="#reply-1">
                                                    <i class="fa fa-fw fa-mail-reply text-muted"></i> Reply
                                                </a>
                                            </div>
                                            <div class="box collapse m-0 b-a" id="reply-1">
                                                <form>
                                                    <textarea class="form-control no-border" rows="3" placeholder="Type something..."></textarea>
                                                </form>
                                                <div class="box-footer clearfix">
                                                    <button class="btn btn-info pull-right btn-sm">Post</button>
                                                    <ul class="nav nav-pills nav-sm">
                                                        <li class="nav-item"><a class="nav-link" href><i class="fa fa-camera text-muted"></i></a></li>
                                                        <li class="nav-item"><a class="nav-link" href><i class="fa fa-video-camera text-muted"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sl-item">
                                        <div class="sl-left">
                                            <img src="/static/B4/assets/images/a2.jpg" class="img-circle">
                                        </div>
                                        <div class="sl-content">
                                            <div class="sl-date text-muted">8:30</div>
                                            <div class="sl-author">
                                                <a href>Moke</a>
                                            </div>
                                            <div>
                                                <p>Just followed <a href class="text-info">Jacob</a> and she followed you too.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sl-item">
                                        <div class="sl-left">
                                            <img src="/static/B4/assets/images/a3.jpg" class="img-circle">
                                        </div>
                                        <div class="sl-content">
                                            <div class="sl-date text-muted">Sat, 5 Mar</div>
                                            <div class="sl-author">
                                                <a href>Moke</a>
                                            </div>
                                            <blockquote>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante soe aiea ose dos soois.</p>
                                                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                            </blockquote>


                                            <div class="sl-item">
                                                <div class="sl-left">
                                                    <img src="/static/B4/assets/images/a2.jpg" class="img-circle">
                                                </div>
                                                <div class="sl-content">
                                                    <div class="sl-date text-muted">Sun, 11 Feb</div>
                                                    <p><a href class="text-info">Jessi</a> assign you a task <a href class="text-info">Mockup Design</a>.</p>
                                                </div>
                                            </div>
                                            <div class="sl-item">
                                                <div class="sl-left">
                                                    <img src="/static/B4/assets/images/a5.jpg" class="img-circle">
                                                </div>
                                                <div class="sl-content">
                                                    <div class="sl-date text-muted">Thu, 17 Jan</div>
                                                    <p>Follow up to close deal</p>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="box">
                            <div class="box-header">
                                <h4>Just followed you</h4>
                            </div>
                            <div class="list-group no-radius no-borders">
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm success"></span>
                                    <img src="/static/B4/assets/images/a2.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Jonathan Morina</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm success"></span>
                                    <img src="/static/B4/assets/images/a3.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Mason Yarnell</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm warning"></span>
                                    <img src="/static/B4/assets/images/a4.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Mike Mcalidek</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm danger"></span>
                                    <img src="/static/B4/assets/images/a5.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Cris Labiso</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a6.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Daniel Sandvid</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a7.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Helder Oliveira</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a8.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Jeff Broderik</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a9.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Daniel Sandvid</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a0.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Helder Oliveira</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a2.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Jeff Broderik</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a8.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Jeff Broderik</span>
                                </a>
                                <a class="list-group-item text-ellipsis">
                                    <span class="w-8 rounded m-r-sm dker"></span>
                                    <img src="/static/B4/assets/images/a9.jpg" class="w-24 m-r-sm img-circle">
                                    <span>Daniel Sandvid</span>
                                </a>
                            </div>
                            <div class="p-a">
                                <a href="#" class="btn white btn-xs rounded m-b-sm">See all</a>
                            </div>
                        </div>
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
                        <span class="text">...</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / -->

    <!-- ############ LAYOUT END-->

</div>
<!-- build:js /static/B4/script/sapp.html.js -->
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

