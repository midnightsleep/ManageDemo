<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>left</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link
	href="http://xiaodai.wuxixiangdangdang.com/images/css/metinfo_box.css?5286"
	rel="stylesheet" />
<link
	href="http://xiaodai.wuxixiangdangdang.com/images/css/nanoscroller.css?5286"
	rel="stylesheet" />

<script type="text/javascript"
	src="http://xiaodai.wuxixiangdangdang.com/images/js/jQuery1.7.2.js?5286"></script>
<script type="text/javascript"
	src="http://xiaodai.wuxixiangdangdang.com/images/js/cookie.js?5286"></script>
<script type="text/javascript"
	src="http://xiaodai.wuxixiangdangdang.com/images/js/jquery.nanoscroller.js?5286"></script>


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
#content,#top .topnbox {
	width: 99%;
}

#top .floatr li a span {
	behavior: url(http://xiaodai.wuxixiangdangdang.com/images/iepngfix.htc);
}
</style>

</head>

<body>
	<div class="floatl" id="metleft">
		<div class="floatl_box">
			<div class="nav_list" id="leftnav">
				<div class="fast">
					<a href="main.aspx" title="网站首页">网站首页</a>
				</div>

				<ul id="ul_1">

					<li><a href="index.jsp" target='main' hidefocus="true">工作台</a>
					</li>


					<li style="display: "><a href="daikuan/info.aspx"
						target='main' hidefocus="true">新增贷款</a>
					</li>


					<li><a href="kehu/list.aspx" target='main' hidefocus="true">客户管理</a>
					</li>
					<li><a href="daikuan/list.aspx" target='main' hidefocus="true">待审批贷款管理</a>
					</li>

					<li><a href="huankuan/list.aspx" target='main'
						hidefocus="true">还款管理</a>
					</li>

					<li><a href="huankuan/bulianglist.aspx" target='main'
						hidefocus="true">逾期客户</a>
					</li>
					<li><a href="huankuan/shangmenlist.aspx" target='main'
						hidefocus="true">上门客户</a>
					</li>
					<li><a href="kehu/daizhang.aspx" target='main'
						hidefocus="true">坏账客户</a>
					</li>
					<li><a href="huankuan/jqlist.aspx" target='main'
						hidefocus="true">结清客户</a>
					</li>
					<li><a href="kehu/heimingdan.aspx" target='main'
						hidefocus="true">黑名单客户</a>
					</li>



				</ul>

				<ul style="display: none;" id="ul_5">

					<li style="display: "><a href="system/companyInfo.aspx"
						target="main" hidefocus="true">公司信息</a>
					</li>
					<li style="display: "><a href="product/list.aspx"
						target='main' hidefocus="true">产品类型管理</a>
					</li>
					<li><a href="user/list.aspx" target='main' hidefocus="true">员工账号管理</a>
					</li>

					<li style="display: "><a href="system/smsConfig.aspx"
						target="main" hidefocus="true">短信设置</a>
					</li>
					<li style="display: "><a href="system/smsYuJine.aspx"
						target="main" hidefocus="true">短信余额</a>
					</li>
					<li style="display: "><a href="user/LoginLoglist.aspx"
						target='main' hidefocus="true">登录日志管理</a>
					</li>
					<li style="display: "><a href="system/contract.aspx"
						target="_blank" hidefocus="true">合同模板管理</a>
					</li>
					<li><a href="zidian/list.aspx?types=Hunyin" target='main'
						hidefocus="true">数据字典</a>
					</li>





				</ul>

				<ul id="ul_3">


					<li><a href="huankuan/fenqilist.aspx" target='main'
						hidefocus="true">当天需还款客户</a>
					</li>



				</ul>


				<ul id="ul_6">


					<li><a href="kaohe/list.aspx" target='main' hidefocus="true">统计分析</a>
					</li>


				</ul>

				<ul id="ul_7">


					<li><a href="system/shareLink.aspx" target='main'
						hidefocus="true">推广链接</a>
					</li>


				</ul>
			</div>
			<div class="claer"></div>

			<div class="left_footer">
				<div class="left_footer_box" style="display: none">
					<a href="#" target="_blank"></a>
				</div>
			</div>
		</div>
	</div>
	<div class="floatr" id="metright">
		<div class="iframe">
			<div class="min">
				<iframe frameborder="0" id="main" name="main" src="index.aspx"
					scrolling="no"></iframe>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	</div>
	</div>
	<div class="footer">Powered by <b><a href="#" target="_blank"></a></b> &copy;2010-2017 &nbsp;</div>
    <script src="http://xiaodai.wuxixiangdangdang.com/images/js/metinfo.js?5286" type="text/javascript"></script>
    <script type="text/javascript">

        function zsyfunc() {
            $('#update_content_back').height($(document).height());
            $('#update_content_back').width($(document).width());
            $('#update_contents').css('left', $(window).width() / 2 - $('#update_contents').width() / 2);
            $('#update_contents').css('top', $(window).height() / 2 - $('#update_contents').height() / 2 + $("html,body").scrollTop() + $("body").scrollTop());
        }

        $().ready(function () {
            
            $("#nav_1").click();
            
        });

        $(window).on('resize', function (e) {
            zsyfunc();
        });
    </script>
	

</body>
</html>
