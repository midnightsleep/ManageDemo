<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>index</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="static/jquery.min.js"></script>
	<script type="text/javascript" src="static/jquery.easyui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
	
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:68px">
		<jsp:include page="top.jsp" flush="true"/> 
	</div>
	<!-- <div data-options="region:'west',split:true,title:'导航'" style="width:15%;">
		<iframe id="iframe" name="iframe" src="/ManageDemo/left" width="100%" height="100%" frameborder="0" scrolling="yes"></iframe>
	</div>
	<div data-options="region:'center',title:'Center'">
		<iframe id="iframe" name="iframe" src="/ManageDemo/main" width="100%" height="100%" frameborder="0" scrolling="yes"></iframe>
	</div> -->
	

	<div data-options="region:'center',title:'Center'">
		<jsp:include page="easyUI.jsp" flush="true"/> 
	</div>
</body>

</html>
