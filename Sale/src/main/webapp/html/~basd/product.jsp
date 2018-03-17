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

<div class="page_title">产品查询</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>名称</th>
		<td><input value="${prvo.pname }" id="pname"/></td>
		<th>型号</th>
		<td><input value="${prvo.xinhao }" id="xinhao"/></td>
		<th>批次</th>
		<td><input value="${prvo.pici }" id="pici"/></td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>名称</th>
		<th>型号</th>
		<th>等级/批次</th>
		<th>单位</th>
		<th>单价（元）</th>
		<th>备注</th>
	</tr>
	<c:forEach items="${li }" var="pro">
	<tr>
		<td class="list_data_number">${pro.prodId}</td>
		<td class="list_data_ltext">${pro.prodName}</td>
		<td class="list_data_text">${pro.prodType}</td>
		<td class="list_data_text">${pro.prodBatch}</td>
		<td class="list_data_text">${pro.prodUnit}</td>
		<td class="list_data_number">${pro.prodPrice}</td>
		<td class="list_data_ltext">${pro.prodMemo}&nbsp;</td>		
	</tr>
	</c:forEach>
	<tr>
		<th colspan="100" class="pager">
<div class="pager">
	共${prvo.maxcount }条记录 每页<input value="${prvo.pagesize }" size="2" id="size"/>条
	第<input value="${prvo.pageno }" size="2" disabled="disabled"/>页/共${prvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${prvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${prvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${prvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="pagego()">GO</button>
</div>
		</th>
	</tr>
</table>
<script type="text/javascript">
function page(num){
	var pname=$("#pname").val();
	var xinhao=$("#xinhao").val();
	var pici=$("#pici").val();
	var pagesize=$("#size").val();
	var maxcount="${prvo.maxcount}";
	var maxpage="${prvo.maxpage}";
	 window.location.href="findpro.html?pname="+pname+"&xinhao="+xinhao+"&pici="+pici+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
 function pagego(){
 	var num=$("#pn").val();
 	page(num);
 }
</script>
</body>
</html>
