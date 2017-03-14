<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="http://xiaodai.wuxixiangdangdang.com/images/css/metinfo_box.css?5286" rel="stylesheet" />
    <link href="http://xiaodai.wuxixiangdangdang.com/images/css/nanoscroller.css?5286" rel="stylesheet" />
	
	<script type="text/javascript" src="http://xiaodai.wuxixiangdangdang.com/images/js/jQuery1.7.2.js?5286"></script>
	<script type="text/javascript" src="http://xiaodai.wuxixiangdangdang.com/images/js/cookie.js?5286"></script>
	<script type="text/javascript" src="http://xiaodai.wuxixiangdangdang.com/images/js/jquery.nanoscroller.js?5286"></script>
	
	
	<script type="text/javascript">
    var lang = 'cn';
    var atop = '';
    var user_msg = new Array();
    user_msg['jsx1'] = '载入中...';
    user_msg['langtips1'] = '当前后台管理的网站语言：';
    $(function () {
        var clang = $.cookie('clang');
        if (clang) {
            window.location.href = 'index.php?lang=' + clang;
            $.cookie('clang', null);
        }
    });
    //宽窄版切换
    $(document).ready(function () {
        $("#kzqie").click(function () {
            var my = $(this);
            if (my.text() == '宽版') {
                $('#content,#top .topnbox').animate({ width: '99%' }, 380);
                $.ajax({ url: 'include/config.php?lang=cn&met_kzqie=1', type: "POST" });
                my.attr('title', '切换到窄版');
                my.text('窄版');
                setTimeout("topwidth(400)", 100);
            } else {
                $('#content,#top .topnbox').animate({ width: '1000px' }, 380);
                $.ajax({ url: 'include/config.php?lang=cn&met_kzqie=0', type: "POST" });
                my.attr('title', '宽版');
                my.text('宽版');
                setTimeout("topwidth(400)", 400);
            }
        });
    });
</script>
<style>
    #content, #top .topnbox {
        width: 99%;
    }

    #top .floatr li a span {
        behavior: url(http://xiaodai.wuxixiangdangdang.com/images/iepngfix.htc);
    }
</style>
	
  </head>
  
  <body style="text-align: center;">
    <div id="top">
            <div class="topnbox">
                <div class="floatr">
                    <div class="top-r-box">
                        <div class="top-right-boxr">
                            <div class="top-r-t">
                                <ol class="rnav">

                                    <li class="list">您好 <a href="http://xiaodai.wuxixiangdangdang.com/root/user/geren.aspx" id="mydata" title="编辑 admin 的个人资料" target='main' class='tui'>admin</a></li>
                                    <li class="line">|</li>
                                    <li class="list"><a href="http://xiaodai.wuxixiangdangdang.com/root/user/geren.aspx" target='main'>修改资料</a></li>
                                    <li class="line">|</li>
                                    <li class="list"><a href="http://xiaodai.wuxixiangdangdang.com/root/user/pwd.aspx" target='main'>修改密码</a></li>
                                    <li class="line">|</li>
                                    <li class="list"><a target="_top" href="http://xiaodai.wuxixiangdangdang.com/root/logout.aspx" id="outhome" title="退出" class='tui'>退出</a></li>
                                  
                                </ol>
                            </div>
                            <div class="top-r-t">

                                                  <ol class="rnav">

                                    <li class="list"><a href="../file/响当当小额贷款管理系统操作手册.docx"  title="响当当小额贷款管理系统操作手册" >下载操作手册</a></li> <li class="list"><a href="http://wpa.qq.com/msgrd?v=3&uin=3208726319&site=qq&menu=yes" target="_blank" title="在线帮助" ><img src="../images/online.gif"   style="vertical-align:middle;display:inline-block; margin-bottom:6px;  margin-left:10px; " />&nbsp;在线帮助</a></li>
                                </ol>
                                <div class="clear"></div>
                            </div>

                        </div>
                        <div></div>
                        <div class="nav">
                            <ul id="topnav">

                                <li id="metnav_1" class="list">
                                    <a href="javascript:;" id="nav_1" class="onnav" hidefocus="true">
                                        <span class="c7"></span>
                                        <p>贷款管理</p>
                                    </a>
                                </li>
                                  
                                <li id="metnav_3" class="list" >
                                    <a href="javascript:;" id="nav_3"  hidefocus="true">
                                        <span class="c1"></span>
                                        <p>催收管理</p>
                                    </a>
                                </li>
                                

                                <li id="metnav_6" class="list" >
                                    <a href="javascript:;" id="nav_6"  hidefocus="true">
                                        <span class="c6"></span>
                                        <p>统计分析</p>
                                    </a>
                                </li>
                                

                                <li id="metnav_7" class="list">
                                    <a href="javascript:;" id="nav_7"  hidefocus="true">
                                        <span class="c3"></span>
                                        <p>我要推广</p>
                                    </a>
                                </li>

                                
                                <li id="metnav_5" class="list">
                                    <a href="javascript:;" id="nav_5" hidefocus="false">
                                        <span class="c5"></span>
                                        <p>系统设置</p>
                                    </a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="floatl">
                    <a href="main.aspx" hidefocus="true" id="met_logo">
                        <img src="http://xiaodai.wuxixiangdangdang.com/images/logoen.gif" /></a>
                </div>
            </div>
        </div>


</body>
</html>
