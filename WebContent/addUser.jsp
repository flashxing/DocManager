<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>管理员系统</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">
      
      <link href="http://www.see-source.com/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
<script src="http://www.see-source.com/bootstrap/js/jquery.js" type="text/javascript"></script>
<script src="http://www.see-source.com/bootstrap/js/bootstrap-tab.js"  type="text/javascript"></script>
<script type="text/javascript" src="http://www.see-source.com/bootstrap/js/bootstrap-dropdown.js"></script>
    <script>
        $(function () {
            $("#tabs1 a").click(function (e) {
                $(this).tab('show');
            });
        });
    </script>
    <script type="text/javascript">
function showType(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("docType").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("docType").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","http://localhost:8080/DocManager/doc_edit/"+str+".jsp",true);
xmlhttp.send();
}
</script>
<style type="text/css">
<!--
body {
 background-image: url(images/body-bg.png);
}
-->
</style>
    </head>
    <body>
    <div class="navbar navbar-fixed-top" style="background:#000; height:80px;">
	<div class="navbar-inner" style="background:#000; height:80px;">
		<div class="container1">	
			<a style="font-size: 24px;" href="./">Doc_Management管理系统</a>
			<div class="nav-collapse" style="margin: -40px 0 0 0">
				<ul class="nav pull-right">
					<li class="divider-vertical"></li>
					<li class="dropdown">					
						<a data-toggle="dropdown" style="font-size: 18px; color:#E6E6FA;font-weight:lighter" href="#">
							admin <b class="caret"></b>							
						</a>						
						<ul class="dropdown-menu">					
							<li>
								<a href="#">  修改密码</a></li><li>
								<a href="login.jsp">  注销</a>
							</li>
						</ul>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->

      <div class="tabbable tabs-left" id="page" style="padding:150px 0 0 0">
        <ul  class="nav nav-tabs" id="tabs1">
            <li ><a href="#type">文献的种类</a></li>
            <li><a href="#message" >文献包含的信息</a></li>
            <li><a href="#evalution" >详细评价的内容</a></li>
            <li class="active"><a href="#user_list">用户列表</a></li>
            <li><a href="#relation">引用关系的种类</a></li>
            <li><a href="#statistics">统计信息</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane" id="type">
            <table class="table1"  border="0" width="20px">
  <tbody>
  <tr class="active">
    <td width="80px"><div id=div1>图书</div></td>
    <td width="20px"><img src="images/img09.jpg"></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
  </tr>
  <tr class="active">
    <td>图书章节</td>
    <td width="34px"><a href="#"><img src="images/img09.jpg"></a></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
  </tr>
  <tr class="active">
    <td>期刊</td>
    <td width="34px"><a href="#"><img src="images/img09.jpg"></a></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
  </tr>
  <tr class="active">
    <td>会议</td>
    <td width="34px"><a href="#"><img src="images/img09.jpg"></a></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
   </tr>
  <tr class="active">
    <td>学术论文</td>
    <td width="20px"><a href="#"><img src="images/img09.jpg"></a></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
  </tr>
  <tr class="active">
    <td>技术报告</td>
    <td width="20px"><a href="#"><img src="images/img09.jpg"></a></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
  </tr>
  <tr class="active">
    <td>在线资源</td>
    <td width="20px"><a href="#"><img src="images/img09.jpg"></a></td>
    <td width="34px"><a href="#"><img src="images/img10.jpg"></a></td>
  </tr>
  </tbody>
</table>
      <div><button class="btn btn-primary" type="submit" >添加</button></div>
      </div>
            <div class="tab-pane" id="message">
            <div id="sidebar1">
             <label style="font-weight:bold; padding:0px 0px 0px 40px">请选择文献类型：</label>
                    <select name="type" id="select" onchange="showType(this.value)"  style="width:140px;">
                      <option selected="selected">类型</option>
                      <option value="book">图书</option>
                      <option value="journal">期刊</option>
                      <option value="book_section">图书章节</option>
                      <option value="conference">会议</option>
                      <option value="report">学位论文</option>
                      <option value="thesis">技术报告</option>
                      <option value="online">在线资源</option>
                    </select>
                   
            </div>
            <!-- end #sidebar -->            
            <div style="float: left; width:100px; margin:0; padding:5px 0px 0px 40px; font-size: 14px;" id="docType" >
            </div> 
            <!-- end #content1 -->
            </div>
            <div class="tab-pane" id="evalution">
            </div>
            
            <div class="tab-pane  active" id="user_list">
     		<div class="span9">		
						<div >
					    <div><h3>添加用户</h3></div> 									
							<div>						
					<div class="tabbable">
						<ul class="nav nav-tabs">
						  <li class="active">
						    <a href="#1" data-toggle="tab">添加用户</a>
						  </li>
						  <li><a href="#2" data-toggle="tab">用户设置</a></li>
						</ul>						
						<br />
							<div class="tab-content">
								<div class="tab-pane active" id="1">
								<form id="edit-profile" class="form-horizontal" />
									<fieldset>									
										<div class="control-group eg3" >											
											<label class="control-label " for="username">用户名</label>
											<div class="controls">
												<input type="text" class="input-medium disabled eg4" id="username"  />
											</div> <!-- /controls -->				
									 </div> <!-- /control-group -->
		                             <div class="control-group eg3">											
											<label class="control-label" for="password1">密码</label>
											<div class="controls">
												<input type="password" class="input-medium eg4" id="password1" />
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
		                                <div class="control-group eg3">											
											<label class="control-label" for="password2">确认密码</label>
											<div class="controls">
												<input type="password" class="input-medium eg4" id="password2"  />
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
									<br />
									<div >
											<button type="submit" class="btn btn-primary eg5">Save</button> 
											<button class="btn eg6">Cancel</button>
									</div> <!-- /form-actions -->
									</fieldset>
								</form>
								</div>
								
								<div class="tab-pane" id="2">
									<form id="edit-profile2" />
		  								    <div >
												<button type="submit" class="btn btn-primary eg7">Save</button> <button class="btn eg7">Cancel</button>
											</div>			
									</form>
								</div>		 <!-- /tab-pane-->						
							</div>  <!-- /tab-content-->
						</div>				<!-- /tabtable-->	
							</div>
							</div>
							</div>
	  
            </div>
            <div class="tab-pane" id="relation">
            </div>
             <div class="tab-pane" id="statistics">
             
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
  </div>
</body>
</html>