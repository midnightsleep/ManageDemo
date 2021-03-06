<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'easyUI.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="static/jquery.min.js"></script>
	<script type="text/javascript" src="static/jquery.easyui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="static/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="static/themes/icon.css">
	<!-- <script src="http://xianjin.ahceshi.com/JS/XB.js"></script>
    <link href="http://xianjin.ahceshi.com/images/H/Main.css" rel="stylesheet" /> -->
	
	<!-- <link rel="stylesheet" type="text/css" href="../demo.css"> -->
	
	<style>
  		/* .light{  
  			display: none;  
  			position: absolute;  
  			top: 0%;  
  			left: 0%;  
  			width: 100%;  
  			height: 100%;  
  			background-color: black;  
  			z-index:1001;  
  			-moz-opacity: 0.8;  
  			opacity:.80;  
  			filter: alpha(opacity=80);  
  		}  */ 
  		/* #light {  
  			display: none;  
  			position: absolute;  
  			top: 0%;  
  			left: 0%;  
  			width: 100%;  
  			height: 100%;  
  			
  			 
  			 
  		} */
  	</style>

	<script type="text/javascript">
		function getSelected(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$('#iframe').attr('src','/ManageDemo/person?name='+row.username);
				document.getElementById('light').style.display='block';
					
			}
		}
		
		/* 点击x关掉弹出的div */
		function closeWin(){
			document.getElementById('light').style.display='none';
		}
	</script>
  </head>
  
  <body>
  	
	<!-- <div id="light" class="white_content">
    	<p id="p1"></p>
    	<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a>
    </div>
	<div id="fade" class="black_overlay"></div> -->
	
	<div id="light" class="panel window easyui-draggable" style="display: none; width: 998px%; left: 216px; top: 13px; z-index: 9126; position: absolute;">
		<div class="panel-header panel-header-noborder window-header" style="width: 988px;">
			<div class="panel-title">详情</div>
			<div class="panel-tool">
				<a href="javascript:void(0)" onclick="closeWin()" class="panel-tool-close"></a>
			</div></div>
			<div id="W1" class="NoScroll panel-body panel-body-noborder window-body" title="" style="width: 986px; height: 607px;">
				<iframe id="iframe" name="iframe" src="" width="100%" height="100%" frameborder="0" scrolling="yes"></iframe>
			</div>
		</div>
	</div>
	
	
	<div class="easyui-layout" style="width:100%;height:85%;">
		<div data-options="region:'north'" style="height:30px">
			<button class="easyui-linkbutton" onclick="getSelected()">查看详细</button>
		</div>
		<!-- <div data-options="region:'south',split:true" style="height:50px;"></div> -->
		<!-- <div data-options="region:'east',split:true" title="East" style="width:180px;">
			<ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true,dnd:true"></ul>
		</div> -->
		<div data-options="region:'west',split:true" title="West" style="width:100px;">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="Title1" style="padding:10px;">
					content1
				</div>
				<div title="Title2" data-options="selected:true" style="padding:10px;">
					content2
				</div>
				<div title="Title3" style="padding:10px">
					content3
				</div>
			</div>
		</div>
		<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
			<div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
				<!-- <div title="About" data-options="href:'_content.html'" style="padding:10px"></div> -->
				<div title="DataGrid" style="padding:5px">
					<table id="dg" rownumbers="true" pagination="true" class="easyui-datagrid"
							url="/ManageDemo/users"
							data-options="method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr>
								<th data-options="field:'username'" width="80">username</th>
								<!-- <th data-options="field:'userpass'" width="100">userpass</th> -->
								<!-- <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
								<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
								<th data-options="field:'attr1'" width="150">Attribute</th>
								<th data-options="field:'status',align:'center'" width="50">Status</th> -->
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
