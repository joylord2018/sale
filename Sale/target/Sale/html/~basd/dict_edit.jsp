<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>jb-aptech毕业设计项目</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
</head>
<body>

<div class="page_title">数据字典管理 > 编辑数据字典条目</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="save('dict.jsp');">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>9</td>
		<th>类别</th>
		<td><input value="服务类型" /><span class="red_star">*</span><br />（需要使

用Ajax实现自动补全功能）</td>
	</tr>
	<tr>
		<th>条目</th>
		<td><input value="咨询" /><span class="red_star">*</span></td>
		<th>值</th>
		<td><input value="咨询" /><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>是否可编辑</th>
		<td><input type="checkbox" checked /></td>
		<th>&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
</table>
</body>
</html>
