<%@ taglib prefix="s" uri="/struts-tags"%>
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
        
        var tabIndex = window.location.href.split("?")[1];
			if(tabIndex !== "" && tabIndex !== undefined) {
				$("#tabs1 a[name='"+ tabIndex +"']").tab('show');
			}
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

function add_docType() {
 var tb = document.getElementById("mytableid1");
 var rnum = tb.rows.length+1; 
 var row = tb.insertRow();
 var cell = row.insertCell();
 cell = row.insertCell();
 cell.innerHTML = "<input type='text' name='docType' style='width:100px'>"; 
}

function add_docRelation() {
 var tb = document.getElementById("mytableid2");
 var rnum = tb.rows.length+1; 
 var row = tb.insertRow();
 var cell = row.insertCell();
 cell = row.insertCell();
 cell.innerHTML = "<input type='text' name='docRelation' style='width:100px'>"; 
}
function add_docMeta() {
 var tb = document.getElementById("mytableid3");
 var rnum = tb.rows.length+1; 
 var row = tb.insertRow();
 var cell = row.insertCell();
 cell = row.insertCell();
 cell.innerHTML = "<input type='text' name='docRelation' style='width:100px'>"; 
}
function fun(){
	var tabIndex = window.location.href.split("?")[1];
	if(tabIndex !== "" && tabIndex !== undefined) {
		$("#tabs1 a[name='"+ tabIndex +"']").tab('show');
	}
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
    <body onLoad="fun()">
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
								<a href="changePassword.jsp">  修改密码</a>
							</li>							
							<li class="divider"></li>						
							<li>
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
            <li class="active"><a href="getDocTypes.action" name="type">文献的种类</a></li>
            <li><a href="docElementgetAll.action#meta" name="meta">文献元素管理</a></li>
            <li><a href="#message" name="message">文献包含的信息</a></li>
            <li><a href="#evalution" name="evalution">详细评价的内容</a></li>
            <li><a href="#user_list" name="user_list">用户列表</a></li>
            <li><a href="#relation" name="relation">引用关系的种类</a></li>
            <li><a href="#statistics" name="statistics">统计信息</a></li>
        </ul>

        <div class="tab-content" >
            <div class="tab-pane active" id="tab-1">
            <table class="table1"  border="0" width="20px">
  <tbody>
  <s:iterator id="doc_type" value="docTypes">
  <tr class="active">
    <td><s:property value="#doc_type.type"/></td>  
    <td width="34px"><img src="images/img09.jpg"></td>
    <td width="34px"><a href="docTypeDelete.action?type=<s:property value="#doc_type.type"/>"><img src="images/img10.jpg"></a></td>
 </tr>
 </s:iterator>
  </tbody>
</table>
<table id="mytableid1">
 <tr class="active">
    <td><input class="btn btn-primary" type="button" value="添加文献种类" onclick="add_docType()"/></td>
   </tr>
   </table>
     </div>
          
           <div class="tab-pane" id="meta">
            <div class="table table-condensed">
            <table class="table2"  border="0" width="30">
<thead>
  <tr>
  </tr>
  </thead>
  <tbody>
  <s:iterator id="tmp1" value="docElements">
  <tr class="active">
   <td ><input type="text" class="input-medium eg8" value="<s:property value="#tmp1.name" />"/>
   <input class="btn btn-primary" type="button" value="删除" onclick="docElementdelete()"/></td>     
  </tr>
   </s:iterator>
  </tbody>
</table>
<table id="mytableid3">
<tr class="active">
<td><input class="btn btn-primary" type="button" value="添加" onclick="add_docMeta()"/>
<input class="btn btn-primary" type="button" value="保存" onclick="docElementadd()"/></td>
</tr></table>
</div>
            </div>
            
            
            <div class="tab-pane" id="message">
            <div id="sidebar1">
             <label style="font-weight:bold; padding:0px 0px 0px 40px">请选择文献类型：</label>
                    <select name="type" id="select" style="width:140px;">
                      <option selected="selected">类型</option>
                      <option value="book">图书</option>
                      <option value="journal">期刊</option>
                      <option value="book_section">图书章节</option>
                      <option value="conference">会议</option>
                      <option value="report">学位论文</option>
                      <option value="thesis">技术报告</option>
                      <option value="online">在线资源</option>
                    </select>
            <br> 
<input type="checkbox" name="checkbox1" value="checkbox"> 跑步 
<input type="checkbox" name="checkbox2" value="checkbox"> 打球  
<input type="checkbox" name="checkbox3" value="checkbox"> 登山  
<input type="checkbox" name="checkbox4" value="checkbox"> 健美<br> 
            <table id="mytableid3">
            <tr class="active">
            <td><input class="btn btn-primary" type="button" value="添加元素" onclick="add_docMeta()"/></td>
            <td><input class="btn btn-primary" type="button" value="保存" onclick="docElementadd()"/></td>
            </tr>
            </table>       
            </div>
            <!-- end #sidebar -->            
            <div style="float: left; width:100px; margin:0; padding:5px 0px 0px 40px; font-size: 14px;" id="docType" >
            </div> 
            <!-- end #content1 -->
            </div>
            
            
            
            <div class="tab-pane" id="evalution">
             <div class="table table-condensed">
            <table class="table2"  border="0" width="30">
<thead>
  <tr>
    <th>编号</th>
    <th>引用关系</th>
    <th></th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <tr class="active">
    <td>1</td>
    <td><input type="text" class="input-medium eg8" value="要解决的问题"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>2</td>
    <td><input type="text" class="input-medium eg8" value="主要思路"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>3</td>
    <td><input type="text" class="input-medium eg8" value="实验结果"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>4</td>
    <td><input type="text" class="input-medium eg8" value="已有的贡献"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>5</td>
    <td><input type="text" class="input-medium eg8" value="可改进的地方"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  </tbody>
</table>
<div>
<table id="mytableid2">
 <tr class="active">
    <td><input class="btn btn-primary" type="button" value="添加引用关系" onclick="add_docRelation()"/></td>
   </tr>
   </table>
</div>
</div>
            </div>
            
            
            
            
            <div class="tab-pane" id="user_list">
            <div class="table table-condensed">
            <table class="table2"  border="0" width="30">
<thead>
  <tr>
    <th>编号</th>
    <th>用户名</th>
    <th></th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <tr class="active">
    <td>1</td>
    <td><input type="text" class="input-medium eg8" value="向李兴"/></td>
    <td><a href="http://www.duwenzhang.com/huati/" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>2</td>
    <td><input type="text" class="input-medium eg8" value="申慧超"/></td>
    <td><a href="http://www.duwenzhang.com/huati/" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>3</td>
    <td><input type="text" class="input-medium eg8" value="沈维维"/></td>
    <td><a href="http://www.duwenzhang.com/huati/" style="color:blue">删除</a></td>
  </tr>
  </tbody>
</table>
<div><a href="#"><button class="btn btn-primary eg9" type="submit" >保存</button></a>
<a href="addUser.jsp"><button class="btn btn-primary eg10 type="submit" >添加</button></a>
</div>
</div>
            </div>
            
            
            
            <div class="tab-pane" id="relation">
             <div class="table table-condensed">
            <table class="table2"  border="0" width="30">
<thead>
  <tr>
    <th>编号</th>
    <th>引用关系</th>
    <th></th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <tr class="active">
    <td>1</td>
    <td><input type="text" class="input-medium eg8" value="mention"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>2</td>
    <td><input type="text" class="input-medium eg8" value="related"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>3</td>
    <td><input type="text" class="input-medium eg8" value="use"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>4</td>
    <td><input type="text" class="input-medium eg8" value="compare"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  <tr class="active">
    <td>5</td>
    <td><input type="text" class="input-medium eg8" value="unknown"/></td>
    <td><a href="updateRef.action" style="color:blue">修改</a></td>
    <td><a href="deleteRef.action" style="color:blue">删除</a></td>
  </tr>
  </tbody>
</table>
<div>
<a href="#"><button class="btn btn-primary" type="submit" >添加</button></a>
</div>
</div>
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