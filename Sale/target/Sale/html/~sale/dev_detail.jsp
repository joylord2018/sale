<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'dev_detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
</head>
<body>

<div class="page_title">客户开发计划 &gt; 查看</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td id="scno">${sc.chcId}</td>
		<th>机会来源</th>
		<td>${sc.chcSource }</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${sc.chcCustName }</td>
		<th>成功机率（%）</th>
		<td>&nbsp;${sc.chcRate }</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td>${sc.chcTitle }</td>
		<th>状态</th>
		<td style="color:red;"><c:if test="${sc.chcStatus eq 3}">开发成功</c:if><c:if test="${sc.chcStatus eq 4}">开发失败</c:if></td>
	</tr>
	<tr>
		<th>联系人</th>
		<td>${sc.chcLinkman }</td>
		<th>联系人电话</th>
		<td>${sc.chcTel }</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${sc.chcDesc }</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${sc.crename }</td>
		<th>创建时间</th>
		<td><fmt:formatDate value="${sc.chcCreateDate }" pattern="yyyy年MM月dd日  HH时mm分ss秒"/></td>
	</tr>
	<tr>
		<th>指派给</th>
		<td>
			${sc.dname }</td>
		<th>指派时间</th>
		<td>
			<fmt:formatDate value="${sc.chcDueDate }" pattern="yyyy年MM月dd日  HH时mm分ss秒"/></td>
	</tr>
</table>
<br />
<table class="data_list_table" id="table1">
	<tr>
		<th>日期</th>
		<th>计划</th>
		<th>执行效果</th>
	</tr>
	<c:forEach items="${spli }" var="sp">
	<tr>
		 <td class="list_data_text" height="24"><fmt:formatDate value="${sp.plaDate }" pattern="yyyy年MM月dd日"/></td>
		<td class="list_data_ltext" height="24">${sp.plaTodo }"
		<td class="list_data_ltext">${sp.plaResult }
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>
