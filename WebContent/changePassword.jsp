<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>修改密码</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/change.css" rel="stylesheet" /> 

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
body {
 background-image: url(images/body-bg.png);
}
.container {
 margin:200px 400px 600px 500px;
 margin: 40px auto 0;
}

-->
</style>
  </head>
  
  <body>
    <div class="navbar navbar-fixed-top" style="background:#000; height:80px;">
	<div class="navbar-inner" style="background:#000; height:80px;">
		<div class="container1">	
			<a style="font-size: 24px;" href="./">Doc_Management管理系统</a>
		</div> <!-- /container -->
	</div> <!-- /navbar-inner -->	
</div> <!-- /navbar -->


<div id="login-container">	
	<div id="login-header">
		
		<h3>修改密码</h3>
		
	</div> <!-- /login-header -->
	
	<div id="login-content" class="clearfix">
	
	<form action="login.jsp" />
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="old_password">旧密码</label>
						<div class="controls">
							<input type="text" class="" id="username" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password1">新密码</label>
						<div class="controls">
							<input type="password" class="" id="password1" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password2">确认新密码</label>
						<div class="controls">
							<input type="password" class="" id="password2" />
						</div>
					</div>
				</fieldset>
				
				
				<div class="pull-right">
					<button type="submit" class="btn btn-warning btn-large">
						确认
					</button>
				</div>
			</form>
			
		</div> <!-- /login-content -->
	
</div> <!-- /login-wrapper -->


  </body>
</html>
