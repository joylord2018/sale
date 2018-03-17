<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../../css/style.css" rel="stylesheet" type="text/css">
<script src="../../script/common.js"></script>
</head>
<body>

<div class="page_title">客户服务管理 > 服务创建</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="add('add.jsp');">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input disabled /></td>
		<th>服务类型</th>
		<td>
			<select>
				<option>请选择...</option>
				<option>咨询</option>
				<option>投诉</option>
				<option>建议</option>
			</select><span class="red_star">*</span>
		</td>
	</tr>
	<tr>
		<th>概要</th>
		<td colspan="3"><input size="53" /><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>客户</th>
		<td><input name="T20" size="20" /><span class="red_star">*</span></td>
		<th>状态</th>
		<td>新创建</td>
	</tr>	
	<tr>
		<th>服务请求</th>
		<td colspan="3"><textarea rows="6" cols="50"></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td><input name="T19" value="刘颖" readonly size="20" /><span class="red_star">*</span></td>
		<th>创建时间</th>
		<td><input id="t1" name="T15" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
	</table>
<br />
<table disabled class="query_form_table" id="table3">
	<tr>
		<th>分配给</th>
		<td>
			<select>
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select> <span class="red_star">*</span></td>
		<th>分配时间</th>
		<td><input id="t2" name="T18" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
</table>
<br />	
<table disabled class="query_form_table" id="table1">
	<tr>
		<th>服务处理</th>
		<td colspan="3"><textarea rows="6" cols="50"></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>处理人</th>
		<td><input name="T17" value="刘颖" readonly size="20" /><span class="red_star">*</span></td>
		<th>处理时间</th>
		<td><input id="t3" name="T16" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
</table>
<br />
<table disabled class="query_form_table" id="table2">
	<tr>
		<th>处理结果</th>
		<td><input name="T10" size="20" /><span class="red_star">*</span></td>
		<th>满意度</th>
		<td>
			<select name="D1">
				<option>请选择...</option>
				<option>☆☆☆☆☆</option>
				<option>☆☆☆☆</option>
				<option>☆☆☆</option>
				<option>☆☆</option>
				<option>☆</option>
			</select><span class="red_star">*</span></td>
	</tr>
</table>
<script>
	setCurTime('t1');
	setCurTime('t2');
	setCurTime('t3');
</script>
</body>
</html>