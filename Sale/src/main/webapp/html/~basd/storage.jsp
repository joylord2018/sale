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
<script type="text/javascript" src="../script/jquery.min.js"></script></head>
<body>

<div class="page_title">产品查询</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>产品</th>
		<td><input value="${svo.pname}" id="pname"/></td>
		<th>仓库</th>
		<td><input value="${svo.house}" id="house"/></td>
		<th>&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>序号</th>
		<th>产品</th>
		<th>仓库</th>
		<th>货位</th>
		<th>件数</th>
		<th>备注</th>
	</tr>
	<c:forEach items="${li }" var="sto">
	<tr>
		<td class="list_data_number">${sto.stkId }</td>
		<td class="list_data_ltext">${sto.pname}</td>
		<td class="list_data_ltext">${sto.stkWarehouse}</td>
		<td class="list_data_text">${sto.stkWare }</td>
		<td class="list_data_number">${sto.stkCount }</td>
		<td class="list_data_ltext">${sto.stkMemo }</td>		
	</tr>
	</c:forEach>
	<tr>
		<th colspan="100" class="pager">
<div class="pager">
	共${svo.maxcount }条记录 每页<input value="${svo.pagesize }" size="2" id="size"/>条
	第<input value="${svo.pageno }" size="2" disabled="disabled"/>页/共${svo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${svo.pageno -1 });">上一页</a>
	<a href="javascript:page(${svo.pageno +1 });">下一页</a>
	<a href="javascript:page(${svo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="pagego()">GO</button>
</div>
		</th>
	</tr>
</table>
<script type="text/javascript">
function page(num){
	var pname=$("#pname").val();
	var house=$("#house").val();
	var pagesize=$("#size").val();
	var maxcount="${svo.maxcount}";
	var maxpage="${svo.maxpage}";
	 window.location.href="findsto.html?pname="+pname+"&house="+house+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
 function pagego(){
 	var num=$("#pn").val();
 	page(num);
 }
</script>
</body>
</html>
