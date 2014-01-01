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
<div id="content" class="dropdown">
<form action="" style="margin-top:25px;"> 
<label>请选择时间段：
<select name="customers"  style="font-family:Verdana, Arial, Helvetica, sans-serif;">
<option value="weekend">一周内</option>
<option value="month">一个月内</option>
<option value="months">三个月内</option>
<option value="year">一年内</option>
</select>
</label>
</form>

<div id="txtHint" class="table table-condensed">
<table class="table"  border="0" width="30">
<thead>
  <tr>
    <th>#</th>
    <th>用户名</th>
    <th>文献个数</th>
    <th>简要评价</th>
    <th>详细评价</th>
    <th>附件</th>
  </tr>
  </thead>
  <tbody>
  <tr class="active">
    <td>1</td>
    <td>向李兴</td>
    <td>5</td>
    <td>7</td>
    <td>6</td>
    <td>3</td>
  </tr>
  <tr class="success">
    <td>2</td>
    <td>申慧超</td>
    <td>5</td>
    <td>4</td>
    <td>7</td>
    <td>2</td>
  </tr>
  <tr class="warning">
    <td>3</td>
    <td>沈维维</td>
    <td>5</td>
    <td>4</td>
    <td>7</td>
    <td>3</td>
  </tr>
  <tr class="danger">
    <td>4</td>
    <td>Amdy</td>
    <td>5</td>
    <td>7</td>
    <td>6</td>
    <td>3</td>
  </tr>
  <tr class="active">
    <td>5</td>
    <td>Bella</td>
    <td>5</td>
    <td>8</td>
    <td>1</td>
    <td>2</td>
  </tr>
  </tbody>
</table>
</div>

</div>
	<!-- end #content -->
	<form id="form1" method="post" action="">
	  <p>
	    <label for="tag"></label>
	  </p>
    </form>
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
						December 2013
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
								<td id="today"> 19</td>
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
