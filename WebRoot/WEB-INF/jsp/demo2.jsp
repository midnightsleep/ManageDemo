<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="static/css/GridManager.css">
	<script type="text/javascript" src="static/js/GridManager.js"></script>
    <title>GridManager:使用动态数据渲染</title>
    <base href="<%=basePath%>">
    <style>
		html, body{
			width: 100%;
			height: 100%;
			overflow-x:hidden;
			margin: 0px;
			padding: 0px;
		}
        .plugin-action{
            display: inline-block;
            color: steelblue;
            margin-right: 10px;
            cursor: pointer;
        }
        .plugin-action:hover{
            text-decoration:underline;
        }
		.search-area{
			padding: 10px 20px;
			border: 1px solid #ccc;
			background: #efefef;
		}
		.search-area .sa-ele{
			display: inline-block;
			margin-right: 20px;
			font-size: 12px;
		}
		.search-area .sa-ele .se-title{
			display: inline-block;
			margin-right: 10px;
		}
		.search-area .sa-ele .se-con{
			display: inline-block;
			width:180px;
			height: 24px;
			border: 1px solid #ccc;
			padding: 0px 4px;
			line-height: 24px;
		}
		.search-area .sa-ele .search-action, .search-area .sa-ele .reset-action{
			display: inline-block;
			width:80px;
			height: 26px;
			border: 1px solid #ccc;
			background: #e8e8e8;
			padding: 0px 4px;
			line-height: 26px;
			text-align: center;
			cursor: pointer;
			margin-right: 10px;
		}
		.search-area .sa-ele .search-action:hover, .search-area .sa-ele .reset-action:hover{
			opacity: 0.7;
		}
    </style>
</head>

<body>
	<div class="search-area">
		<div class="sa-ele">
			<label class="se-title">accountId:</label>
			<input class="se-con" name="accountId"/>
		</div>
		<div class="sa-ele">
			<label class="se-title">name:</label>
			<input class="se-con" name="name"/>
		</div>
		<div class="sa-ele">
			<label class="se-title">idCard:</label>
			<input class="se-con" name="idCard"/>
		</div>
		<div class="sa-ele">
			<button class="search-action">搜索</button>
			<button class="reset-action">重置</button>
		</div>
	</div>
	<br/>
	<table></table>
<script type="text/javascript">
	function tes(){
		alert("---");
	}
	var table = document.querySelector('table');
	table.GM({
		supportRemind: true
		,gridManagerName: 'test'
//			,disableCache:true
		,isCombSorting: true
		,height: '300px'
		,supportAjaxPage:true
		,supportSorting: true
		,ajax_url: '/ManageDemo/loans'
//		,ajax_url: 'http://127.0.0.1:1314/learnLinkManager/getLearnLinkList'
//			,ajax_headers: {'header-test': 'baukh'}
		,ajax_type: 'POST'
		,query: {}
		,pageSize:10
		,columnData: [{
				key: 'accountId',
				remind: 'the accountId',
				width: '100px',
				text: 'accountId',
				sorting: ''
			},{
				key: 'name',
				remind: 'the name',
				text: 'name'
			},{
				key: 'idCard',
				remind: 'the idCard',
				text: 'idCard'
			},{
				key: 'createDate',
				remind: 'the createDate',
				width: '100px',
				text: '创建时间',
				sorting: 'DESC',
				template: function(createDate, rowObject){
					return new Date(createDate).format('YYYY-MM-DD HH:mm:ss');
				}
			},{
				key: 'lastDate',
				remind: 'the lastDate',
				width: '100px',
				text: '最后修改时间',
				sorting: '',
				template: function(lastDate, rowObject){
					return new Date(lastDate).format('YYYY-MM-DD HH:mm:ss');
				}
			},{
				key: 'action',
				remind: 'the action',
				width: '100px',
				text: '操作',
				template: function(action, rowObject){
					return '<span class="plugin-action edit-action" onclick="tes()" learnLink-id="'+rowObject.id+'" >编辑</span>'
							+'<span class="plugin-action del-action" learnLink-id="'+rowObject.id+'">删除</span>';
				}
			}
		]
		// 分页前事件
		,pagingBefore: function(query){
			console.log('pagingBefore', query);
		}
		// 分页后事件
		,pagingAfter: function(data){
			console.log('pagingAfter', data);
		}
		// 排序前事件
		,sortingBefore: function (data) {
			console.log('sortBefore', data);
		}
		// 排序后事件
		,sortingAfter: function (data) {
			console.log('sortAfter', data);
		}
		// 宽度调整前事件
		,adjustBefore: function (event) {
			console.log('adjustBefore', event);
		}
		// 宽度调整后事件
		,adjustAfter: function (event) {
			console.log('adjustAfter', event);
		}
		// 拖拽前事件
		,dragBefore: function (event) {
			console.log('dragBefore', event);
		}
		// 拖拽后事件
		,dragAfter: function (event) {
			console.log('dragAfter', event);
		}
	});

	// 日期格式化,不是插件的代码,只用于处理时间格式化
	Date.prototype.format = function(fmt){
		var o = {
			"M+": this.getMonth() + 1, //月份
			"D+": this.getDate(), //日
			"d+": this.getDate(), //日
			"H+": this.getHours(), //小时
			"h+": this.getHours(), //小时
			"m+": this.getMinutes(), //分
			"s+": this.getSeconds(), //秒
			"q+": Math.floor((this.getMonth() + 3) / 3), //季度
			"S": this.getMilliseconds() //毫秒
		};
		if (/([Y,y]+)/.test(fmt)){
			fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		}
		for (var k in o){
			if(new RegExp("(" + k + ")").test(fmt)){
				fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
			}
		}
		return fmt;
	};

	// 绑定搜索事件
	document.querySelector('.search-action').addEventListener('click', function () {
		var _query = {
			name: document.querySelector('[name="name"]').value,
			info: document.querySelector('[name="info"]').value,
			url: document.querySelector('[name="url"]').value
		};
		table.GM('setQuery', _query).GM('refreshGrid', function () {
			console.log('搜索成功...');
		});
	});

	// 绑定重置
	document.querySelector('.reset-action').addEventListener('click', function () {
		document.querySelector('[name="name"]').value = '';
		document.querySelector('[name="info"]').value = '';
		document.querySelector('[name="url"]').value = '';
	});
</script>

</body>
</html>
