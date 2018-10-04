<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2018/10/3
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- fluid app aside -->
<div class="left navside dark dk" data-layout="column">
    <div class="navbar no-radius">
        <!-- brand -->
        <a class="navbar-brand">
            <div ui-include="'../assets/images/logo.svg'"></div>
            <img src="../assets/images/logo.png" alt="." class="hide">
            <span class="hidden-folded inline">Bootstrap4</span>
        </a>
        <!-- / brand -->
    </div>
    <div class="hide-scroll" data-flex>
        <nav class="scroll nav-light">

            <ul class="nav" ui-nav>
                <li class="nav-header hidden-folded">
                    <small class="text-muted">Bootstrap菜单</small>
                </li>

                <li>
                    <a href="dashboard.html" >
                <span class="nav-icon">
                  <i class="material-icons">&#xe3fc;
                    <span ui-include="'../assets/images/i_0.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">首页</span>
                    </a>
                </li>

                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-label">
                  <b class="label rounded label-sm primary">5</b>
                </span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe5c3;
                    <span ui-include="'../assets/images/i_1.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">应用程序</span>
                    </a>
                    <ul class="nav-sub">
                        <li>
                            <a href="inbox.html" >
                                <span class="nav-text">收件箱</span>
                            </a>
                        </li>
                        <li>
                            <a href="contact.html" >
                                <span class="nav-text">会话</span>
                            </a>
                        </li>
                        <li>
                            <a href="calendar.html" >
                                <span class="nav-text">日历</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe8f0;
                    <span ui-include="'../assets/images/i_2.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">布局</span>
                    </a>
                    <ul class="nav-sub">
                        <li>
                            <a href="headers.html" >
                                <span class="nav-text">头布</span>
                            </a>
                        </li>
                        <li>
                            <a href="asides.html" >
                                <span class="nav-text">左侧边</span>
                            </a>
                        </li>
                        <li>
                            <a href="footers.html" >
                                <span class="nav-text">脚注</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="widget.html" >
                <span class="nav-icon">
                  <i class="material-icons">&#xe8d2;
                    <span ui-include="'../assets/images/i_3.svg'"></span>
                  </i>
                </span>
                        <!-- Widgets -->
                        <span class="nav-text">部件</span>
                    </a>
                </li>

                <li class="nav-header hidden-folded">
                    <!-- Components -->
                    <small class="text-muted">组件</small>
                </li>

                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-label">
                  <b class="label label-sm accent">8</b>
                </span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe429;
                    <span ui-include="'../assets/images/i_4.svg'"></span>
                  </i>
                </span>
                        <!-- UI kit -->
                        <span class="nav-text">UI 工具包</span>
                    </a>
                    <ul class="nav-sub nav-mega nav-mega-3">
                        <li>
                            <a href="arrow.html" >
                                <!-- Arrow -->
                                <span class="nav-text">提示语</span>
                            </a>
                        </li>
                        <li>
                            <a href="box.html" >
                                <span class="nav-text">盒会话</span>
                            </a>
                        </li>
                        <li>
                            <a href="button.html" >
                                <span class="nav-text">按钮</span>
                            </a>
                        </li>
                        <li>
                            <a href="color.html" >
                                <span class="nav-text">颜色选择</span>
                            </a>
                        </li>
                        <li>
                            <a href="dropdown.html" >
                                <span class="nav-text">下拉框</span>
                            </a>
                        </li>
                        <li>
                            <a href="grid.html" >
                                <span class="nav-text">网格</span>
                            </a>
                        </li>
                        <li>
                            <a href="icon.html" >
                                <span class="nav-text">图标</span>
                            </a>
                        </li>
                        <li>
                            <a href="label.html" >
                                <span class="nav-text">标签</span>
                            </a>
                        </li>
                        <li>
                            <a href="list.html" >
                                <span class="nav-text">列表组</span>
                            </a>
                        </li>
                        <li>
                            <a href="modal.html" >
                                <span class="nav-text">弹窗</span>
                            </a>
                        </li>
                        <li>
                            <a href="nav.html" >
                                <span class="nav-text">导航分页</span>
                            </a>
                        </li>
                        <li>
                            <a href="progress.html" >
                                <span class="nav-text">进度条</span>
                            </a>
                        </li>
                        <li>
                            <a href="social.html" >
                                <span class="nav-text">图标大全</span>
                            </a>
                        </li>
                        <li>
                            <a href="sortable.html" >
                                <span class="nav-text">有序菜单</span>
                            </a>
                        </li>
                        <li>
                            <a href="streamline.html" >
                                <span class="nav-text">简化流程</span>
                            </a>
                        </li>
                        <li>
                            <a href="timeline.html" >
                                <span class="nav-text">时间线</span>
                            </a>
                        </li>
                        <li>
                            <a href="map.vector.html" >
                                <span class="nav-text">世界地图</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-label"><b class="label no-bg">9</b></span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe3e8;
                    <span ui-include="'../assets/images/i_5.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">网页模板</span>
                    </a>
                    <ul class="nav-sub nav-mega">
                        <li>
                            <a href="profile.html" >
                                <span class="nav-text">个人简介</span>
                            </a>
                        </li>
                        <li>
                            <a href="setting.html" >
                                <span class="nav-text">修改页面</span>
                            </a>
                        </li>
                        <li>
                            <a href="search.html" >
                                <span class="nav-text">查询页面</span>
                            </a>
                        </li>
                        <li>
                            <a href="faq.html" >
                                <span class="nav-text">FAQ</span>
                            </a>
                        </li>
                        <li>
                            <a href="gallery.html" >
                                <span class="nav-text">相册库</span>
                            </a>
                        </li>
                        <li>
                            <a href="invoice.html" >
                                <span class="nav-text">发票账单</span>
                            </a>
                        </li>
                        <li>
                            <a href="price.html" >
                                <span class="nav-text">订购网页</span>
                            </a>
                        </li>
                        <li>
                            <a href="blank.html" >
                                <span class="nav-text">空白页</span>
                            </a>
                        </li>
                        <li>
                            <a href="signin.html" >
                                <span class="nav-text">登录页</span>
                            </a>
                        </li>
                        <li>
                            <a href="signup.html" >
                                <span class="nav-text">注册页</span>
                            </a>
                        </li>
                        <li>
                            <a href="forgot-password.html" >
                                <span class="nav-text">忘记密码</span>
                            </a>
                        </li>
                        <li>
                            <a href="lockme.html" >
                                <span class="nav-text">锁定屏幕</span>
                            </a>
                        </li>
                        <li>
                            <a href="404.html" >
                                <span class="nav-text">Error 404</span>
                            </a>
                        </li>
                        <li>
                            <a href="505.html" >
                                <span class="nav-text">Error 505</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe39e;
                    <span ui-include="'../assets/images/i_6.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">表单</span>
                    </a>
                    <ul class="nav-sub">
                        <li>
                            <a href="form.layout.html" >
                                <span class="nav-text">Form 布局</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.element.html" >
                                <span class="nav-text">Form 元素</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.validation.html" >
                                <span class="nav-text">Form 验证</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.select.html" >
                                <span class="nav-text">表单下拉框</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.editor.html" >
                                <span class="nav-text">文本编辑</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.picker.html">
                                <span class="nav-text">日期选择</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.wizard.html">
                                <span class="nav-text">表单向导</span>
                            </a>
                        </li>
                        <li>
                            <a href="form.dropzone.html" class="no-ajax" >
                                <span class="nav-text">文件上传</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe896;
                    <span ui-include="'../assets/images/i_7.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">表格</span>
                    </a>
                    <ul class="nav-sub">
                        <li>
                            <a href="static.html" >
                                <span class="nav-text">静态 table</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/actionLog/adminTable">
                                <span class="nav-text">Datatable</span>
                            </a>
                        </li>
                        <li>
                            <a href="footable.html" >
                                <span class="nav-text">Footable</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a>
                <span class="nav-caret">
                  <i class="fa fa-caret-down"></i>
                </span>
                        <span class="nav-label hidden-folded">
                  <b class="label label-sm info">N</b>
                </span>
                        <span class="nav-icon">
                  <i class="material-icons">&#xe1b8;
                    <span ui-include="'../assets/images/i_8.svg'"></span>
                  </i>
                </span>
                        <span class="nav-text">Charts</span>
                    </a>
                    <ul class="nav-sub">
                        <li>
                            <a href="chart.html" >
                                <span class="nav-text">Chart</span>
                            </a>
                        </li>
                        <li>
                            <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                                <span class="nav-text">Echarts</span>
                            </a>
                            <ul class="nav-sub">
                                <li>
                                    <a href="echarts-line.html" >
                                        <span class="nav-text">line</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="echarts-bar.html" >
                                        <span class="nav-text">Bar</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="echarts-pie.html" >
                                        <span class="nav-text">Pie</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="echarts-scatter.html" >
                                        <span class="nav-text">散点图</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="echarts-radar-chord.html" >
                                        <span class="nav-text">雷达 &amp; 和弦</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="echarts-gauge-funnel.html" >
                                        <span class="nav-text">仪表盘 &amp; 漏斗图</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="echarts-map.html" >
                                        <span class="nav-text">世界地图</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="nav-header hidden-folded">
                    <small class="text-muted">帮助</small>
                </li>

                <li class="hidden-folded" >
                    <a href="docs.html" >
                        <span class="nav-text">文档说明</span>
                    </a>
                </li>

            </ul>
        </nav>
    </div>
    <div class="b-t">
        <div class="nav-fold">
            <a href="profile.html">
          <span class="pull-left">
            <img src="../assets/images/a0.jpg" alt="..." class="w-40 img-circle">
          </span>
                <span class="clear hidden-folded p-x">
            <span class="block _500">Jean Reyes</span>
            <small class="block text-muted"><i class="fa fa-circle text-success m-r-sm"></i>online</small>
          </span>
            </a>
        </div>
    </div>
</div>


