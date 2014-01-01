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
<script src="http://www.see-source.com/bootstrap/js/jquery.js" type="text/javascript"></script>
<script src="http://www.see-source.com/bootstrap/js/bootstrap-tab.js"  type="text/javascript"></script>
        <script>
        $(function () {
            $("#tabs1 a").click(function (e) {
                $(this).tab('show');
            });
        });
    </script>
    <style type="text/css">
       .eg {width:120px;float:left;clear:both;font-size: 16px; height:20px}
       .eg0{margin: 0px 0 20px 0px; height:20px;width:200px;}
       .eg2{margin: 0px 0 20px 0px; height:60px;width:250px; font-size:10px;line-height:14pt}
</style>
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
	<div id="content1">
		<div class="post">
			<h2 class="title1">工作流模型挖掘</h2>
		<form action="docEdit.action" method="post" >
			<p class="date1"><input type="submit" name="submit" id="submit" value="编辑" /></p>
			</form>
			<div class="entry">
			  <p>作者 <strong>周建涛</strong>,Page 1. Vol.16, No.7 ?2005 Journal of Software 软件学报 1000-9825/2005/16(07)1242</p> 
              <p><strong>摘要</strong> 为满足质量管理体系持续改进的要求, 提出了基于工作流过程挖掘的质量管理过程改进方案. 该方案包括过程日志预处理, 过程活动控制图重构和活动转移条件生成3 步,其中过程活动控制图的重构是核心. 设计了一种启发式算法, 以时间段建模活动的执行过程, 将 ... </p>
                <p><strong>关键字</strong> 工作流模型， 过程挖掘， 日志预处理</p>
                <p><strong>URL</strong> <a href="#">http://d.wanfangdata.com.cn/periodical_jsjjczzxt200604022.aspx/</a></p>
               
                <table class="table"  border="1" width="200">
                <thead>
                 <tr>
                 <th>类型</th>
                 <th>附件名字</th>
                 </tr>
                 </thead>
                 <tbody>
                   <tr class="active">
                   <td>sql文件</td>  
                   <td>doc_manager.sql</td>     
                   </tr>
                   </tbody>
                </table>
			</div>
		</div>
		<div class="post">
		<div class="span12 entry">
                <ul class="nav-tabs nav" id="tabs1">
                    <li class="active"><a href="#tabs-1">简要评价</a></li>
                    <li><a href="#tabs-2">详细评价</a></li>
                </ul>
		  <div class="tab-content">
              <div class="tab-pane active" id="tabs-1">
		      <p>文件评分
                <input type="radio" name="radio" id="rank6" value="rank1" />
1分
<input type="radio" name="radio" id="rank7" value="rank2" />
2分
<input type="radio" name="radio" id="rank8" value="rank3" />
3分
<input type="radio" name="radio" id="rank9" value="rank4" />
4分
<input type="radio" name="radio" id="rank10" value="rank5" />
5分</p>
		      <p>请输入你的评价：</p>
		      <form id="form3" method="post" action="">
		        <p>
		          <textarea name="assess" id="assess" class="eg2" cols="60" rows="3"></textarea>
	            </p>
		      </form>
		      <form id="form4" method="post" action="">
		        <p class="date3">
		          <input type="submit" name="submit2" id="submit2" value="提交" />
	              <input type="submit" name="cancel2" id="cancel2" value="取消" />
		        </p>
	          </form>
		    </div>
		    <div class="tab-pane" id="tabs-2">
              <p>文件评分
                <input type="radio" name="radio" id="rank" value="rank1" />
                1分
  <input type="radio" name="radio" id="rank2" value="rank2" />
                2分
  <input type="radio" name="radio" id="rank3" value="rank3" />
                3分
  <input type="radio" name="radio" id="rank4" value="rank4" />
                4分
  <input type="radio" name="radio" id="rank5" value="rank5" />
                5分
                <label for="problem"></label>
              </p>
              <div class="problem">
              <div>
              <div class="eg">要解决的问题：</div>           
                  <textarea name="problem" class="eg2" cols="60" rows="3" id="problem"></textarea>
                </div>
               <div>
              <div class="eg">主要思路：</div>  
                  <textarea name="idea2" id="idea2" class="eg2" cols="60" rows="3"></textarea>
                </div>
                <div>
                <div class="eg">实验结果：</div>
                  <textarea name="experiment2" id="experiment2" class="eg2" cols="60" rows="3"></textarea>
                </div>
                <div>
                <div class="eg">已有的贡献：</div> 
                  <textarea name="contribution" id="contribution" class="eg2" cols="60" rows="3"></textarea>
                </div>
                <div>
               <div class="eg">可改进的地方：</div>
                  <textarea name="improvement" id="improvement" class="eg2" cols="60" rows="3"></textarea>
                </div>
                <form id="form7" method="post" action="">
                  <p  class="date2">
                    <input type="submit" name="submit" id="submit" value="提交" />
                    <input type="submit" name="cancel" id="cancel" value="取消" />
                  </p>
                </form>
              </div>
              <div class="idea"></div>
	      </div>
		  </div>
		</div>
	</div>
	<!-- end #content -->
	<form id="form1" method="post" action="">
	  <p>
	    <label for="tag"></label>
	  </p>
    </form>
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end #page -->

<div id="footer">
	<p>Copyright (c) 2013 software.nju.edu.cn. All rights reserved. Design by <a href="#">Group Doc_manager</a>.</p>
</div>
<!-- end #footer -->
</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&amp;web_id=155540' type="text/javascript" charset='gb2312'></script></div>
</body>
</html>