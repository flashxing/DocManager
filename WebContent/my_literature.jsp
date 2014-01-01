<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文献管理系统</title>
<meta name="Keywords" content="" />
<meta name="Description" content="" />
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">

	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="index.jsp">首页</a></li>
				<li><a href="getDocs">我的文献</a></li>
				<li><a href="literature_import.jsp">文献录入</a></li>
				<li><a href="statistics.jsp">统计信息</a></li>
				<li><a href="literature_search.jsp">文献查询</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
			<form method="get" action="">
				<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
				<input type="submit" id="search-submit" value="查询" />
				</fieldset>
			</form>
		</div>
		<!-- end #search -->
	</div>
	<!-- end #header -->
	<div id="logo">
		<h1><a href="#">文献管理系统</a></h1>
		<p><em> </em></p>
	</div>
	<hr />
	<!-- end #logo -->
<!-- end #header-wrapper -->

<div id="page">
<div id="content1" class="post">
<h2 class="title1">我的文献</h2>
<div id="txtHint" class="table table-condensed">
<table class="table"  border="0" width="30">
<thead>
  <tr>
    <th>ID</th>
    <th>类型</th>
    <th>文献标题</th>
    <th>作者</th>
    <th>年份</th>
    <th>页数</th>
    <th>摘要</th>
    <th>关键字</th>
    <th>出版社</th>
  </tr>
  </thead>
  <tbody>
  <s:iterator id="tmp" value="docList">
  <tr class="active">
    <td><s:property value="#tmp.docId"/></td>  
    <td><s:property value="#tmp.type"/></td>  
    <td><a href="document.jsp"><s:property value="#tmp.title"/></a></td>  
    <td><s:property value="#tmp.author"/></td>  
    <td><s:property value="#tmp.year"/></td>  
    <td><s:property value="#tmp.time"/></td>  
    <td>
    <textarea  id="textarea" rows="2" cols="30" >
    <s:property value="#tmp.docAbstract"/>
    </textarea></td>
    <td><s:property value="#tmp.key"/></td>  
    <td><s:property value="#tmp.publisher"/></td>     
  </tr>
 </s:iterator>
 
  </tbody>
</table>
</div>

</div>

	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end #page -->

<div id="footer">
	<p>Copyright (c) 2013 software.nju.edu.cn. All rights reserved. Design by <a href="#">Group Doc_manager</a>.</p>
</div>
<!-- end #footer -->
</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&amp;web_id=155540' type="text/javascript" charset='gb2312'></script></div>
<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
</body>
</html>
   