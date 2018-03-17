<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
</head>
<body>

<div class="page_title">客户流失分析</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button> 
	</div>
	<table class="query_form_table" border="0" cellPadding="3" cellSpacing="0">
			<tr>
					<th>客户名称</th>
	<td><input type="text" name="item.lstCustName" value=""></td>
					<th>客户经理</th>

	<td><input type="text" name="item.lstCustManagerName" value=""></td>
					
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
	<tr>
		<td class="list_data_number" height="27">1</td>
		<td class="list_data_text" height="27">2006</td>
		<td class="list_data_text" height="27">大空纶纺</td>
		<td class="list_data_text" height="27">小满</td>
		<td class="list_data_ltext" height="27">客户厂址迁移</td>
	</tr>
	<tr>
		<td class="list_data_number">2</td>
		<td class="list_data_text">2006</td>
		<td class="list_data_text">星星广告</td>
		<td class="list_data_text">郭小美</td>
		<td class="list_data_ltext">客户公司被收购</td>
	</tr>
	<tr>
		<td class="list_data_number">3</td>
		<td class="list_data_text">2005</td>
		<td class="list_data_text">和满记餐饮</td>
		<td class="list_data_text">周结论</td>
		<td class="list_data_ltext">没有采购需求</td>
	</tr>
	<tr>
		<th colspan="7" class="pager">
<div class="pager">
	共59条记录 每页<input value="10" size="2" />条
	第<input value="1" size="2"/>页/共5页
	<a href="#">第一页</a>
	<a href="#">上一页</a>
	<a href="#">下一页</a>
	<a href="#">最后一页</a>
	转到<input value="1" size="2" />页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>

	</table>
</body>
</html>