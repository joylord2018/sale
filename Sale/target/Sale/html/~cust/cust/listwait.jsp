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
<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script src="../../script/common.js"></script>
<script type="text/javascript" src="../../script/jquery.min.js"></script>
</head>
<body>

<div class="page_title">新客户信息管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="data_list_table">
	<tr>
		<th>序号</th>
		<th>客户编号</th>
		<th>名称</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${ccli }" var="cc" varStatus="num">
	<tr>
		<td class="list_data_number">${(num.index +1)+(ccvo.pageno-1)*ccvo.pagesize}</td>
		<td class="list_data_text">${cc.custNo }</td>
		<td class="list_data_ltext">${cc.custName }</td>
		<td><img onclick="to('findcustbyid.html?id=${cc.custNo}');" title="编辑" 
src="../../images/bt_edit.gif" class="op_button" /></td>
	</tr>
	</c:forEach>
</table>
</body>
<script type="text/javascript">

</script>
</html>
