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
	<!-- <link rel="stylesheet" type="text/css" href="../demo.css"> -->
	
	<style>
  		.black_overlay{  
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
  		}  
  		.white_content {  
  			display: none;  
  			position: absolute;  
  			top: 0%;  
  			left: 0%;  
  			width: 100%;  
  			height: 100%;  
  			padding: 16px;  
  			border: 16px solid orange;  
  			background-color: white;  
  			z-index:1002;  
  			overflow: auto;  
  		}  
  	</style>

	<script type="text/javascript">
		function getSelected(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				/* $.messager.alert('Info', row.username+":"+row.userpass); */
				$('#personName').text(row.username);
				document.getElementById('tt').style.display='block';document.getElementById('fade').style.display='block';
			}
		}
	</script>
  </head>
  
  <body>
  	
	<!-- <div id="light" class="white_content">
    	<p id="p1"></p>
    	<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a>
    </div> -->

</div>
	<div id="fade" class="black_overlay"></div>
	<h2>Complex Layout</h2>
	<p>This sample shows how to create a complex layout.</p>
	<div style="margin:20px 0;">
		<button class="easyui-linkbutton" onclick="getSelected()">GetSelected</button>
	</div>
	<div style="margin:20px 0;"></div>
	<div class="easyui-layout" style="width:100%;height:80%;">
		<div data-options="region:'north'" style="height:50px"></div>
		<div data-options="region:'south',split:true" style="height:50px;"></div>
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
					<table id="dg" class="easyui-datagrid"
							data-options="url:'/ManageDemo/users',method:'get',singleSelect:true,fit:true,fitColumns:true">
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
