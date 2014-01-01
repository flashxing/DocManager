<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="文献管理系统的登录页面">
    <meta name="author" content="DannyXu">
   
    <title>登录页面</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">

    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
<!--
body {
 background-image: url(images/body-bg.png);
}
.container {
 margin:200px 400px 600px 500px;
 margin: 40px auto 0;
}
</style>
  </head>

  <body>
 <div class="navbar navbar-fixed-top" style="background:#000; height:80px;">
	<div class="navbar-inner" style="background:#000; height:80px;">
		<div class="container1">	
			<a style="font-size: 24px;" href="./">文献管理系统</a>
		</div> <!-- /container -->
	</div> <!-- /navbar-inner -->	
</div> <!-- /navbar -->
    <div class="container">

      <form action="login.action" method="post" class="form-login" role="form">
        <h2 class="form-login-heading">请登录</h2>
		<input type="text" name="username" class="form-control" placeholder="账号" required autofocus>
        <input type="password" name="password" class="form-control" placeholder="密码" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> 下次自动登录
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>