<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'person.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="static/jquery.min.js"></script>
	<script type="text/javascript" src="static/jquery.easyui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
    <div id="tt" class="easyui-tabs white_content" data-options="fit:true">
    <div title="详情">

        <form id="FF">

            <fieldset style="border:1px solid #ccc;">
                <legend>申请人信息</legend>
                <table width="100%" border="0" cellpadding="3" cellspacing="0" class="MTable">
                    <tbody>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 昵称</td>
                            <td id="nickName">
                               ${nname}
                            </td>

                            <td width="120" align="right"><span class="Red"></span> 申请人名称</td>
                            <td id="personName">
                                李梅
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 手机号</td>
                            <td id="phone">
                                15277100579
                            </td>

                            <td width="120" align="right"><span class="Red"></span> 状态</td>
                            <td id="status">
                                正常
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> QQ</td>
                            <td id="qqNumber">

                            </td>
                            <td width="120" align="right"><span class="Red"></span> 常住地址</td>
                            <td id="address">

                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 学历</td>
                            <td>

                            </td>
                            <td width="120" align="right"><span class="Red"></span> 电子邮箱</td>
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 真实姓名</td>
                            <td>

                            </td>
                            <td width="120" align="right"><span class="Red"></span> 认证手机号</td>
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 当前余额</td>
                            <td>
                                0.00
                            </td>
                            <td width="120" align="right"><span class="Red"></span> 入网时期</td>
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 社会关系</td>
                            <td>
                                朋友
                            </td>
                            <td width="120" align="right"><span class="Red"></span> 亲属关系</td>
                            <td>
                                父母
                            </td>
                        </tr>
                        <tr>

                            <td width="120" align="right"><span class="Red"></span>社会关系姓名 </td>
                            <td>
                                张静
                            </td>
                            <td width="120" align="right"><span class="Red"></span> 亲属关系姓名</td>
                            <td>
                                李会娟
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 社会关系人电话</td>
                            <td>
                                15777102547
                            </td>
                            <td width="120" align="right"><span class="Red"></span> 亲属关系人电话</td>
                            <td>
                                13892736615
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 婚姻</td>
                            <td colspan="3">
                                未婚
                            </td>

                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 身份证正面</td>
                            <td>
                                <img src="/UpLoad/Pic/2017-03/52dab2e5-ff87-4f74-99fb-dbe66d87c319.jpg" style="width:80px;height:80px;" onclick="OpenWindow('/UpLoad/Pic/2017-03/52dab2e5-ff87-4f74-99fb-dbe66d87c319.jpg')" />
                            </td>
                            <td width="120" align="right"><span class="Red"></span> 身份证反面</td>
                            <td>
                                <img src="/UpLoad/Pic/2017-03/ed1c2117-bc8e-48f9-8e19-418af400d82a.jpg" style="width:80px;height:80px;" onclick="OpenWindow('/UpLoad/Pic/2017-03/ed1c2117-bc8e-48f9-8e19-418af400d82a.jpg')" />
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="right"><span class="Red"></span> 手持身份证</td>
                            <td colspan="3">
                                <img src="/UpLoad/Pic/2017-03/86051b56-cbfd-4ba4-ad79-5acb43357244.jpg" style="width:80px;height:80px;" onclick="OpenWindow('/UpLoad/Pic/2017-03/86051b56-cbfd-4ba4-ad79-5acb43357244.jpg')" />
                            </td>
                        </tr>
                </table>
                </fieldset>
                <fieldset style="border:1px solid #ccc;">
                    <legend>详情</legend>
                    <table>
                        <tbody>
                            <tr>
                                <td width="120" align="right"><span class="Red"></span> <label for="Type">借款类型</label></td>
                                <td>
                                    普通借款
                                </td>

                                <td width="120" align="right"><span class="Red"></span> <label for="LoanNO">借款编号</label></td>
                                <td>
                                    MlVu-3722547802
                                </td>
                            </tr>
                            <tr>
                                <td width="120" align="right"><span class="Red"></span> <label for="LoanId">借款金额</label></td>
                                <td>
                                    500.00
                                </td>

                                <td width="120" align="right"><span class="Red"></span> <label for="TermId">借款期限</label></td>
                                <td>
                                    7
                                </td>
                            </tr>
                            <tr>
                                <td width="120" align="right"><span class="Red"></span> <label for="AddTime">申请时间</label></td>
                                <td>
                                    2017-03-14
                                </td>

                                <td width="120" align="right"><span class="Red"></span> <label for="PalyTime">打款日</label></td>
                                <td>
                                    0001-01-01
                                </td>
                            </tr>
                            <tr>
                                <td width="120" align="right"><span class="Red"></span> <label for="RepayTime">约定还款日</label></td>
                                <td>
                                   2017-03-21
                                </td>

                                <td width="120" align="right"><span class="Red"></span> <label for="Status">借款状态</label></td>
                                <td>
                                    审核失败
                                </td>
                            </tr>
                            <tr>
                                <td width="120" align="right"><span class="Red"></span> <label for="Applyfee">快速申请费</label></td>
                                <td>
                                    20.00
                                </td>

                                <td width="120" align="right"><span class="Red"></span> <label for="Interest">息费</label></td>
                                <td>
                                    1.00
                                </td>
                            </tr>
                            <tr>
                                <td width="120" align="right"><span class="Red"></span> <label for="Userfee">用户管理费</label></td>
                                <td>
                                    9.00
                                </td>

                                <td width="120" align="right"><span class="Red"></span> <label for="BackM">到期应还</label></td>
                                <td>
                                    530.00
                                </td>
                            </tr>
                            <tr>

                                <td width="120" align="right"><span class="Red"></span> <label for="CoupID">优惠劵</label></td>
                                <td colspan="3">
                                    0
                                </td>
                            </tr>
                    </table>
                </fieldset>
</form>


    </div>
    <div title="学信网认证" id="datainfo">
        <table id="DataList">
            <tr><td>未认证</td></tr>
        </table>
    </div>
    <div title="身份证认证">

            <fieldset style="border:1px solid #ccc;">
            <legend>身份证认证</legend>
            <table width="100%" border="0" cellpadding="3" cellspacing="0" class="MTable">
                <tbody>
                    <tr>
                        <td width="120" align="right"><span class="Red"></span> 身份证号码</td>
                        <td>
                            610324199409091027
                        </td>

                        <td width="120" align="right"><span class="Red"></span> 姓名</td>
                        <td>
                            李梅
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right"><span class="Red"></span> 性别</td>
                        <td>
                            男
                        </td>
                        <td width="120" align="right"><span class="Red"></span> 添加时间</td>
                        <td>
                            2017-03-14
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right"><span class="Red"></span> 身份证正面</td>
                        <td>
                            <img src="/UpLoad/Pic/2017-03/52dab2e5-ff87-4f74-99fb-dbe66d87c319.jpg" style="width:80px;height:80px;" onclick="OpenWindow('/UpLoad/Pic/2017-03/52dab2e5-ff87-4f74-99fb-dbe66d87c319.jpg')" />
                        </td>
                        <td width="120" align="right"><span class="Red"></span> 身份证反面</td>
                        <td>
                            <img src="/UpLoad/Pic/2017-03/ed1c2117-bc8e-48f9-8e19-418af400d82a.jpg" style="width:80px;height:80px;" onclick="OpenWindow('/UpLoad/Pic/2017-03/ed1c2117-bc8e-48f9-8e19-418af400d82a.jpg')" />
                        </td>
                    </tr>
                    <tr>
                        <td width="120" align="right"><span class="Red"></span> 手持身份证</td>
                        <td colspan="3">
                            <img src="/UpLoad/Pic/2017-03/86051b56-cbfd-4ba4-ad79-5acb43357244.jpg" style="width:80px;height:80px;" onclick="OpenWindow('/UpLoad/Pic/2017-03/86051b56-cbfd-4ba4-ad79-5acb43357244.jpg')" />
                        </td>
                    </tr>

            </table>
        </fieldset>


</div>
    <div title="支付宝认证" id="datainfo">
        <table id="DataList3">
            <tr><td>未认证</td></tr>
        </table>
    </div>
    <div title="芝麻信用认证" id="datainfo">
        <table id="DataList4">
            <tr><td>未认证</td></tr>
        </table>
    </div>
    <div title="淘宝认证" id="datainfo">
        <table id="DataList5">
            <tr><td>未认证</td></tr>
        </table>
    </div>

    <div title="银行卡认证" id="datainfo">
        <table id="DataList6">
            <tr><td>未认证</td></tr>
        </table>
    </div>
    <div title="手机认证" id="datainfo">
        <table id="DataList7">
            <tr><td>未认证</td></tr>
        </table>
    </div>
  </body>
</html>
