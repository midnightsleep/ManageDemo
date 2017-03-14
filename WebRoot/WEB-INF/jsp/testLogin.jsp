<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <base href="<%=basePath%>">
    <title>Document</title>
</head>
<body>
    <form action="login.do" method="post" accept-charset="utf-8">
        用户名：<input type="text" name="username" id="username"><br><br>
          密码：<input type="password" name="pwd" id="pwd"><br>
          ${error}<br>
          
         
        <input type="submit" name="" value="提交">
    </form>
</body>
</html>