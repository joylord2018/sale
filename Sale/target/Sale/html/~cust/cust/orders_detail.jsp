<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
</head>
<body>

<div class="page_title">客户信息管理 &gt; 客户信息 &gt; 历史订单 &gt; 订单明细 </div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table" height="59">
	<tr>
		<th>订单编号</th>
		<td>${ord.odrId }</td>
		<th>日期</th>
		<td><fmt:formatDate value="${ord.odrDate }" pattern="yyyy年MM月dd日"/></td>
	</tr>
	<tr>
		<th height="28">送货地址</th>
		<td>${ord.odrAddr }</td>
		<th height="28">总金额（元）</th>
		<td>${ord.sprice }</td>
	</tr>
	<tr>
		<th height="28">状态</th>
		<td><c:if test="${ord.odrStatus eq 5}">未回款</c:if><c:if test="${ord.odrStatus eq 6}">已回款</c:if></td>
		<th height="28">&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>商品</th>
		<th>数量</th>
		<th>单位</th>
		<th>单价（元）</th>
		<th>金额（元）</th>
	</tr>
	<c:forEach items="${liol }" var="ol">
	<tr>
		<td class="list_data_text">${ol.pname }-${ol.tname } ${ol.bname }</td>
		<td class="list_data_ltext">${ol.oddCount }</td>
		<td class="list_data_text">${ol.oddUnit }</td>
		<td class="list_data_text">${ol.pprice }</td>
		<td class="list_data_text">${ol.oddPrice }</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>
