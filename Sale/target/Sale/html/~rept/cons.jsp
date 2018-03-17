<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'cons.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
</head>
<body>

<div class="page_title">客户构成分析</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button> 
	</div>
<table class="query_form_table">
	<tr>
		<th>报表方式</th>
		<td>
			<select>
				<option>按等级</option>
				<option>按信用度</option>
				<option>按满意度</option>
			</select>
		</td>

	<th>&nbsp;</th>
		<td>
			&nbsp;
		</td>
			</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>等级</th>
		<th>客户数量</th>
	</tr>
	<tr>
		<td class="list_data_number">1</td>
		<td class="list_data_text">战略合作伙伴</td>
		<td class="list_data_number">12</td>
	</tr>
	<tr>
		<td class="list_data_number">2</td>
		<td class="list_data_text">合作伙伴</td>
		<td class="list_data_number">26</td>
	</tr>
	<tr>
		<td class="list_data_number">3</td>
		<td class="list_data_text">大客户</td>
		<td class="list_data_number">38</td>
	</tr>
	<tr>
		<td class="list_data_number">4</td>
		<td class="list_data_text">重点开发客户</td>
		<td class="list_data_number">6</td>
	</tr>
	<tr>
		<td class="list_data_number">5</td>
		<td class="list_data_text">普通客户</td>
		<td class="list_data_number">72</td>
	</tr>
	</table>
</body>
</html>