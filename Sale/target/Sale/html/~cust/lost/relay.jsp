<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<div class="page_title">客户流失管理 &gt; 确认流失</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="to('confirm.jsp');">确认流失</button>
	<button class="common_button" onclick="save('list.jsp');">保存</button>
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>1</td>
		<th>客户</th>
		<td>阳光实业</td>
	</tr>
	<tr>
		<th>客户经理</th>
		<td>
			球球</td>
		<th>上次下单时间</th>
		<td>
			2005年12月07日</td>
	</tr>	
	<tr>
		<th>暂缓措施</th>
		<td colspan="3">
			打电话给客户了解不再购买本公司产品的原因。<br>
			发送新产品目录给客户。</td>
	</tr>
	<tr>
		<th>追加暂缓措施</th>
		<td colspan="3">
			<textarea rows="6" cols="50"></textarea><span 

class="red_star">*</span></td>
	</tr>
</table>
<br />
</body>
</html>