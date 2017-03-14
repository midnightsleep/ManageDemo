<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>Document</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="static/css/GridManager.css">
    <script type="text/javascript" src="static/js/GridManager.js"></script>

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
            <label class="se-title">acountid:</label>
            <input class="se-con" name="acountId"/>
        </div>
        <div class="sa-ele">
            <label class="se-title">name:</label>
            <input class="se-con" name="name"/>
        </div>

        <div class="sa-ele">
            <button class="search-action">搜索</button>
            <button class="reset-action">重置</button>
        </div>
    </div>
    <br/>
    <table></table>
<script type="text/javascript">
    var table = document.querySelector('table');
    table.GM({
        supportRemind: true
        ,gridManagerName: 'test'
       // ,disableCache:true
        ,isCombSorting: true
        ,height: '300px'
        ,supportAjaxPage:true
        ,supportSorting: true
        ,ajax_url: '/ManageDemo/users'
//      ,ajax_url: 'http://127.0.0.1:1314/learnLinkManager/getLearnLinkList'
 //       ,ajax_headers: {'Access-Control-Allow-Origin': '*'}
        ,ajax_type: 'GET'
        ,query: {}
        ,pageSize:10
        ,columnData: [{
                key: 'acountId',
                remind: 'the name',
                width: '100px',
                text: 'acountId',
                sorting: ''
            },{
                key: 'userpass',
                remind: 'the info',
                text: '密码',
                sorting: ''
            },{
				key: 'action',
				remind: 'the action',
				width: '100px',
				text: '操作',
				template: function(action, rowObject){
					return '<span class="plugin-action edit-action" learnLink-id="'+rowObject.id+'">编辑</span>'
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


      //绑定搜索事件
    document.querySelector('.search-action').addEventListener('click', function () {
        var _query = {
            name: document.querySelector('[name="username"]').value,
            info: document.querySelector('[name="userpass"]').value,
        };
        table.GM('setQuery', _query).GM('refreshGrid', function () {
            console.log('搜索成功...');
        });
    });

    // 绑定重置
    document.querySelector('.reset-action').addEventListener('click', function () {
        document.querySelector('[name="username"]').value = '';
        document.querySelector('[name="userpass"]').value = '';
    });
</script>
</body>
</html>