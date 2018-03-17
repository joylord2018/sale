<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
</head>
<body>

<div class="page_title">产品查询</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>名称</th>
		<td><input /></td>
		<th>型号</th>
		<td><input /></td>
		<th>批次</th>
		<td><input /></td>
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
	<tr>
		<td class="list_data_number">1</td>
		<td class="list_data_ltext">幸福牌电视机</td>
		<td class="list_data_text">818 FFT</td>
		<td class="list_data_text">2388 EA03</td>
		<td class="list_data_text">台</td>
		<td class="list_data_number">7500</td>
		<td class="list_data_ltext">代生产&nbsp;</td>		
	</tr>
	<tr>
		<td class="list_data_number">2</td>
		<td class="list_data_ltext">幸福牌收音机</td>
		<td class="list_data_text">天语007</td>
		<td class="list_data_text">7878 006A</td>
		<td class="list_data_text">台</td>
		<td class="list_data_number">36</td>
		<td class="list_data_ltext">代生产&nbsp;</td>		
	</tr>
	<tr>
		<td class="list_data_number">3</td>
		<td class="list_data_ltext">海龙笔记本电脑</td>
		<td class="list_data_text">i60 </td>
		<td class="list_data_text">2688 9966</td>
		<td class="list_data_text">台</td>
		<td class="list_data_number">9800</td>
		<td class="list_data_ltext">&nbsp;</td>		
	</tr>
	<tr>
		<td class="list_data_number">4</td>
		<td class="list_data_ltext">海龙笔记本电脑</td>
		<td class="list_data_text">i61 </td>
		<td class="list_data_text">2689 6688</td>
		<td class="list_data_text">台</td>
		<td class="list_data_number">16800</td>
		<td class="list_data_ltext">&nbsp;</td>		
	</tr>
	<tr>
		<td class="list_data_number">5</td>
		<td class="list_data_ltext">海龙笔记本电脑</td>
		<td class="list_data_text">i61 </td>
		<td class="list_data_text">2689 6689</td>
		<td class="list_data_text">台</td>
		<td class="list_data_number">15800</td>
		<td class="list_data_ltext">&nbsp;</td>		
	</tr>
	<tr>
		<th colspan="100" class="pager">
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
