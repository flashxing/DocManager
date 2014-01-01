<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <style type="text/css">
       .eg {width:60px;float:left;clear:both;font-size: 16px; height:20px;font-weight:bold;}
       .eg0{margin: 0px 0 20px 0px; height:20px;width:200px;}
       .eg1{margin: 20px 0 20px 0px; height:20px;}
       .eg2{margin: 0px 0 20px 0px; height:40px;width:200px;}
</style>
  </head> 
  <body>
    <form>
                <div><div class="eg">标题</div> <input type="text" class="eg0" name="title_name"/></div>
                <div><div class="eg">作者</div> <input type="text" class="eg0" name="author"/></div>
                <div><div class="eg">年份</div> <input type="text"  class="eg0" name="year"/></div>
                <div><div class="eg">页数</div> <input type="text"  class="eg0" name="pages"/></div>
                <div><div class="eg">出版社</div> <input type="text"  class="eg0" name="publisher"/></div>
                <div><div class="eg">摘要</div> <input type="text"  class="eg0" name="doc_abstract"/></div>
                <div><div class="eg">关键字</div> <input type="text"  class="eg0" name="key"/></div>
                <div><div class="eg">URL</div> <input type="text"  class="eg0" name="url"/></div>
                <div><div class="eg">附件</div> <input type="file" name="attachment"></div>
                <div><button class="eg1" type="submit" >录入</button></div>
  </form>
    
  </body>
</html>
