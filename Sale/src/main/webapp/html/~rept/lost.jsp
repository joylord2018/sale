<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'lost.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
<script type="text/javascript" src="../script/jquery.min.js"></script>
</head>
<body>

<div class="page_title">客户流失分析</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button> 
	</div>
	<table class="query_form_table" border="0" cellPadding="3" cellSpacing="0">
			<tr>
					<th>客户名称</th>
	<td><input type="text" name="item.lstCustName" value="${clvo.custname }" id="custname"></td>
					<th>客户经理</th>

	<td><input type="text" name="item.lstCustManagerName" value="${clvo.managename }" id="managename"></td>
					
			</tr>
		</table><br />
<table class="data_list_table">
	<tr>
		<th height="28">编号</th>
		<th height="28">年份</th>
		<th height="28">客户</th>
		<th height="28">客户经理</th>
		<th height="28">流失原因</th>
	</tr>
	<c:forEach items="${li }" var="cl">
	<tr>
		<td class="list_data_number" height="27">${cl.lstId }</td>
		<td class="list_data_text" height="27">${cl.lost_year }</td>
		<td class="list_data_text" height="27">${cl.cname }</td>
		<td class="list_data_text" height="27">${cl.mname }</td>
		<td class="list_data_ltext" height="27">${cl.lstReason }</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="7" class="pager">
<div class="pager">
	共${clvo.maxcount }条记录 每页<input value="${clvo.pagesize }" size="2" id="size"/>条
	第<input value="${clvo.pageno }" size="2" disabled="disabled"/>页/共${clvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${clvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${clvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${clvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="pagego()">GO</button>
</div>
		</th>
	</tr>

	</table>
</body>
<script type="text/javascript">
function page(num){
	var custname=$("#custname").val();
	var managename=$("#managename").val();
	var pagesize=$("#size").val();
	var maxcount="${clvo.maxcount}";
	var maxpage="${clvo.maxpage}";
	 window.location.href="fenxicl.html?custname="+custname+"&managename="+managename+"&lststatus=3"+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
 function pagego(){
 	var num=$("#pn").val();
 	page(num);
 }
</script>
</html>