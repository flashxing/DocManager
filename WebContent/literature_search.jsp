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
	<div id="content">
		<div class="post">
			<h2 class="title">文献搜索</h2>
			<p class="date"></p>
			<div class="entry">
                <p><a href="#">图书</a>  <a href="#">图书章节</a> <a href="#">期刊</a> <a href="#"> 会议</a> <a href="#">学位论文</a> <a href="#">技术报告</a> <a href="#">在线资源</a></p>
                
                <form id="form1" method="post" action="">
                  <p>
                    <label for="select"></label>
                    <select name="select" id="select">
                      <option selected="selected">全文</option>
                      <option>标题</option>
                      <option>作者</option>
                      <option>出版年份</option>
                      <option>关键词</option>
                      <option>摘要</option>
                      <option>出版年份</option>
                    </select>
                    <label for="search">
                      <input name="search" type="text" id="search-text1" value="" />
                    </label>
                    <input type="submit" name="搜索" id="search-submit1" value="搜索" />
                  </p>
                </form>
                <p>&nbsp;</p>
			</div>
		</div>
		<div class="post">
			<h2 class="title">分布式文件系统</h2>
			<p class="date"></p>
			<div class="entry">
                <p>作者 <strong>应朝晖,高洪奎</strong>,计算机工程与科学, 1995 - cqvip.com</p> 
                <p><strong>摘要</strong> 文件系统是计算机系统重要的组成部分，随着网络技术的发展，独立平台上的文件系统有向局域网上发展得趋势，逐渐形成分布式计算机系统中的一个支撑技术-分布式文件系统。本文首先叙述分布式文件系统的基本概念，发展历史以及几个成熟的分布式文件系统。本文。。。</p>
              <p><strong>关键字</strong> 分布式，文件系统</p>
                <p><strong>URL</strong> <a href="http://d.wanfangdata.com.cn/periodical_jsjjczzxt200604022.aspx">http://d.wanfangdata.com.cn/periodical_jsjjczzxt200604022.aspx/</p>
				<p class="links"><a href="#" class="comments">简要评价 (32)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">详细评价(13)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">进入文献</a></p>
            </div>
		</div>
		<div class="post">
			<h2 class="title">基于Hadoop 的海量医疗数据存储平台的研究</h2>
			<p class="date">01.23.09</p>
			<div class="entry">
                <p>作者 <strong>王恒</strong>,2013 - paper.edu.cn</p> 
                <p><strong>摘要</strong> 平台来管理和存储这些海量医疗数据显得尤为的重要。云计算为目前所面临的存储分析医疗数据的困境，提供了一种低成本、容错性强、高可扩展性和可用性的解决方案。基于分布式计算技术，本文提出了一种新的管理和存储海量医疗数据的方法。它提供了一种基于Hadoop，使用Linux集 ...</p>
                <p><strong>URL</strong> <a href="http://d.wanfangdata.com.cn/periodical_jsjjczzxt200604022.aspx">http://d.wanfangdata.com.cn/periodical_jsjjczzxt200604022.aspx/</p>
				<p class="links"><a href="#" class="comments">简要评价 (28)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">详细评价(21)</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">进入文献</a></p>
			</div>
		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<ul>
			<li>
				<h2>用户</h2>
                <p>用户名: sww</p>
			</li>
			<li id="calendar">
				<h2>Calendar</h2>
				<div id="calendar_wrap">
					<table summary="Calendar">
						<caption>
						March 2008
						</caption>
						<thead>
							<tr>
								<th abbr="Monday" scope="col" title="Monday">M</th>
								<th abbr="Tuesday" scope="col" title="Tuesday">T</th>
								<th abbr="Wednesday" scope="col" title="Wednesday">W</th>
								<th abbr="Thursday" scope="col" title="Thursday">T</th>
								<th abbr="Friday" scope="col" title="Friday">F</th>
								<th abbr="Saturday" scope="col" title="Saturday">S</th>
								<th abbr="Sunday" scope="col" title="Sunday">S</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td abbr="November" colspan="3" id="prev"><a href="#" title="">&laquo; November</a></td>
								<td class="pad">&nbsp;</td>
								<td abbr="January " colspan="3" id="next"><a href="#" title="">January  &raquo;</a></td>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td colspan="5" class="pad">&nbsp;</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td>9</td>
							</tr>
							<tr>
								<td>10</td>
								<td >11</td>
								<td>12</td>
								<td>13</td>
								<td>14</td>
								<td>15</td>
								<td>16</td>
							</tr>
							<tr>
								<td>17</td>
								<td>18</td>
								<td id="today">19</td>
								<td>20</td>
								<td>21</td>
								<td>22</td>
								<td>23</td>
							</tr>
							<tr>
								<td>24</td>
								<td>25</td>
								<td>26</td>
								<td>27</td>
								<td>28</td>
								<td>29</td>
								<td>30</td>
							</tr>
							<tr>
								<td>31</td>
								<td class="pad" colspan="6">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
			<li>
				<h2>最新评价</h2>
				<ul>
                    <li><a href="#"></a><a href="#"><strong>工作流过程模型挖掘 MF1332075</strong></a></li>
					<li><a href="#">论文很好的阐述了工作流过程挖掘算法的优势和。。。。。。</a></li>
                    <li><a href="#"><strong>分布式文件系统 MF1332077</strong></a></li>
					<li><a href="#">论文中详细描述了分布式分布式文件系统中所关心问题。。。。。。</a></li>
					</ul>
				</li>
		</ul>
	</div>
	<!-- end #sidebar -->
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