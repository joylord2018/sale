<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>

<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
<script type="text/javascript" src="../script/jquery.min.js"></script>
</head>
<body>

<div class="page_title">数据字典管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('dict_add.jsp');">新建</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>类别</th>
		<td><input value="${dvo.type }" id="type"/></td>
		<th>条目</th>
		<td><input value="${dvo.item }" id="item"/></td>
		<th>值</th>
		<td><input value="${dvo.value }" id="value"/></td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>类别</th>
		<th>条目</th>
		<th>值</th>
		<th>是否可编辑</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${li }" var="dic">
	<tr>
		<td class="list_data_number">${dic.dictId }</td>
		<td class="list_data_ltext">${dic.dict_cname }</td>
		<td class="list_data_text">${dic.dictItem }</td>
		<td class="list_data_text">${dic.dictValue }</td>
		<td class="list_data_text">
		<c:if test="${dic.dictIsEditable ==1}">是</c:if>
		<c:if test="${dic.dictIsEditable ==0}">否</c:if>
		</td>
		
		<td class="list_data_op">
		<c:if test="${dic.dictIsEditable ==1}">
			<img onclick="to('dict_edit.jsp');" title="编辑" 

src="../images/bt_edit.gif" class="op_button" />
			<img onclick="del('“服务类型：咨询”');" title="删除" 

src="../images/bt_del.gif" class="op_button" />
	</c:if>
		</td>
		
	</tr>
	</c:forEach>
	<tr>
		<th colspan="6" class="pager">
<div class="pager">
	共${dvo.maxcount }条记录 每页<input value="${dvo.pagesize }" size="2" id="size"/>条
	第<input value="${dvo.pageno }" size="2" disabled="disabled"/>页/共${dvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${dvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${dvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${dvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="pagego()">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
<script type="text/javascript">
function page(num){
	var type=$("#type").val();
	var item=$("#item").val();
	var value=$("#value").val();
	var pagesize=$("#size").val();
	var maxcount="${dvo.maxcount}";
	var maxpage="${dvo.maxpage}";
	 window.location.href="findall.html?type="+type+"&item="+item+"&value="+value+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
 function pagego(){
 	var num=$("#pn").val();
 	page(num);
 }
</script>
</html>
