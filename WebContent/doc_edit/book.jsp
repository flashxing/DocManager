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
       .p {margin: 0px 0px 0px 12px; align="center"}
       .eg {margin: 0px 0px 0px 0px; height:25px;width:80px;}
       .eg0 {margin: 0px 0px 0px 0px; height:40px;width:80px;}
</style>
  </head> 
  <body>
    <form>
    <p class="p"><input type="text" class="eg" name="title_name" value="标题"/></p>
    <p class="p"><input type="text" class="eg" name="author" value="作者"/></p> 
    <p class="p"><input type="text" class="eg" name="isbn" value="ISBN"/></p>
    <p class="p"><input type="text" class="eg" name="year" value="年份"/></p>
    <p class="p"><input type="text" class="eg" name="pages" value="页数"/></p>
    <p class="p"><input type="text" class="eg" name="publiser" value="出版社"/></p>
    <p class="p"><input type="text" class="eg" name="editor" value="编辑"/></p>
    <p class="p"><input type="text" class="eg" name="doc_abstract" value="摘要"/></p>
    <p class="p"><input type="text" class="eg" name="key" value="关键字"/></p>
    <p class="p"><input type="text" class="eg" name="url" value="URL"/></p>
    <p class="p"><input type="text" class="eg" name="attachment" value="附件"/></p> 
    <p class="p"><button class="eg0 btn btn-primary" type="submit" >保存</button></p>
    </form>
    
  </body>
</html>
