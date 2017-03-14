<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="Chrome=1,IE=edge" />
<meta name="renderer" content="webkit" />
<title>
    登陆
</title>
<base href="<%=basePath%>">
<!--<base href="/">--><base href="."><!--[if IE]></base><![endif]-->

<link rel="stylesheet" type="text/css" href="http://xiaodai.wuxixiangdangdang.com/cssLogin/bootstrap.css" /><link rel="stylesheet" type="text/css" href="http://xiaodai.wuxixiangdangdang.com/cssLogin/font-awesome.css" /><link rel="stylesheet" type="text/css" href="http://xiaodai.wuxixiangdangdang.com/cssLogin/aw-font.css" /><link href="http://xiaodai.wuxixiangdangdang.com/cssLogin/common.css" rel="stylesheet" type="text/css" /><link href="http://xiaodai.wuxixiangdangdang.com/cssLogin/login.css" rel="stylesheet" type="text/css" />
<style>
A.A2:link {color: #ffffff;font-size:13px;}
A.A2:visited {color: #ffffff;font-size:13px;}
A.A2:active  {color: #ffffff;font-size:13px;}
A.A2:hover   {color: #999999;font-size:13px;}
</style>


<script type="text/javascript">
    var _80EC6EEB541A3D604A35006153BB9385 = '';
    var G_POST_HASH = _80EC6EEB541A3D604A35006153BB9385;
    var G_INDEX_SCRIPT = '';
    var G_SITE_NAME = '测试软件';
    var G_BASE_URL = '/';
    var G_STATIC_URL = '/';
    var G_UPLOAD_URL = '/';
    var G_USER_ID = 0;
    var G_USER_NAME = '';
    var G_UPLOAD_ENABLE = 'N';
    var G_UNREAD_NOTIFICATION = 0;
    var G_NOTIFICATION_INTERVAL = 100000;
    var G_CAN_CREATE_TOPIC = '';


    var isIE = !!window.ActiveXObject;
    var isIE6 = isIE && !window.XMLHttpRequest;
    //var isIE8=isIE&&!!document.documentMode;
    //var isIE7=isIE&&!isIE6&&!isIE8;
    if (isIE) {
        if (isIE6) {
            alert("您的浏览器版本太旧了，是13年前的版本了，这个界面比较新，需要升级浏览器才能访问！");
            window.location.href = "#";
        }//else if (isIE8){
        //alert("ie8");
        //}else if (isIE7){
        //alert("ie7");
        //}
    }

    </script>
<script src="http://xiaodai.wuxixiangdangdang.com/jsLogin/jquery.2.js" type="text/javascript"></script>

<!--[if lte IE 8]>
    <script type="text/javascript" src="js/respond.js"></script>
<![endif]-->
</head>
<body>
<div id="wrapper" class="clearfix">
    <div class="aw-login-wrap clearfix">
        <!-- 登陆框 -->
        <div class="aw-login-box pull-right">
            <div class="aw-mod">
                <div class="aw-mod-head">

                    <a href="javascript:void(0)" class="b-new-user pull-right">（标准版）</a>
                    <i class="fa fa-user"></i>
                    <span class="hidden-xs">登录</span>
                </div>
                <div class="aw-mod-body">
                    <form id="subform" name="subform"  method="post" action="login.do">
                        <input type="hidden" name="serverid" value="19">
                        <ul>
                            <li>
                                <label class="aw-label-icon pull-left" for="aw-login-user-name"><img  src="http://xiaodai.wuxixiangdangdang.com/imagesLogin/user.png" style="width:16px; height:18px;"/></label>
                                <input type="text" id="aw-login-user-name" class="form-control" placeholder="请输入登录账号" name="username">
                            </li>
                            <li>
                                <label class="aw-label-icon pull-left" for="aw-login-user-password"><img  src="http://xiaodai.wuxixiangdangdang.com/imagesLogin/key.png" style="width:18px; height:18px;"/></label>
                                <input type="password" id="aw-login-user-password" class="form-control" placeholder="密码" name="pwd">
                            </li>
                            <li class="last">
                                <input class="pull-right btn btn-large btn-success" type="submit" id="rptLogin" value="登录">

                            </li>
                        </ul>
                    </form>
                </div>
                <div class="aw-mod-footer">
                	${error}
                    <a href="#" class="pull-right" target="_blank"><i class="fa fa-chevron-right"></i></a>
                    <a href="javascript:(0)" style="color:red"></a>
                    </div>
            </div>
        </div>
        <!-- end 登陆框 -->
        <!-- 左侧文字介绍部分 -->
        <h1 class="hidden-xs">
            <a href="javascript:void(0)" title="返回首页" style="font-size:27px; font-weight:bolder"><img src="http://xiaodai.wuxixiangdangdang.com/imagesLogin/login.png" style="width:45px;height:45px;"/>管理系统</a>
            <p>提高办公效率，降低放贷风险。<br />贷前审核、贷中监控、贷后催款，全智能化对客户进行管理。</p>
        </h1>
        <div style="color:#ffffff;margin-top:170px;margin-left:50px;">
        <a href="javascript:void(0)" class="A2" title="">测试小额贷款综合业务管理平台：版权所有</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)','测试小额贷款管理系统')" class="A2" title="测试小额贷款管理系统"></a><br/><p></p>
        </div>

        <!-- end 左侧文字介绍部分 -->

        <div class="aw-login-box-bg hidden-xs">
        </div>
    </div>
    <!-- 背景切换 -->
    <div class="aw-bg-wrap hidden-xs">
        <ul id="aw-bg-loading">
            <li style="height: 580px; z-index: 2; opacity: 0; background-image: url(http://xiaodai.wuxixiangdangdang.com/imagesLogin/login_03.jpg);"></li>
            <li style="height: 580px; z-index: 1; opacity: 0; background-image: url(http://xiaodai.wuxixiangdangdang.com/imagesLogin/login_02.jpg);"></li>
            <li style="height: 580px; z-index: 1; opacity: 1; background-image: url(http://xiaodai.wuxixiangdangdang.com/imagesLogin/login_01.jpg);"></li>
        </ul>
    </div>
    <!-- end 背景切换 -->
</div>

<script type="text/javascript" src="http://xiaodai.wuxixiangdangdang.com/jsLogin/login.js"></script>
</body>
</html>
