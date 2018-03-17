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

<div class="page_title">客户服务管理 &gt; 服务处理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td>456</td>
		<th>服务类型</th>
		<td>
			咨询</td>
	</tr>
	<tr>
		<th>概要</th>
		<td colspan="3">询问收音机订单运费承担方式</td>
	</tr>	
	<tr>
		<th>客户</th>
		<td>太阳药业</td>
		<th>状态</th>
		<td>已分配</td>
	</tr>	
	<tr>
		<th>服务请求</th>
		<td colspan="3">收音机订单运费如何承担？<br>
　</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>小明</td>
		<th>创建时间</th>
		<td>2007年12月02日 15时26分58秒</td>
	</tr>
	</table>
<br />
<table class="query_form_table" id="table3">
	<tr>
		<th>分配给</th>
		<td>
			旺财</td>
		<th>分配时间</th>
		<td>2007年12月02日 15时28分06秒</td>
	</tr>
</table>
<br />	
<table class="query_form_table" id="table1">
	<tr>
		<th>服务处理</th>
		<td colspan="3">回电话给刘经理：<br>
		根据相关制度，7元/吨・公里以内由我们负责，之外由客户承担。</td>
	</tr>
	<tr>
		<th>处理人</th>
		<td>郭小美</td>
		<th>处理时间</th>
		<td>2007年12月02日 17时02分18秒</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table2">
	<tr>
		<th>处理结果</th>
		<td>刘经理同意运费计算方式。</td>
		<th>满意度</th>
		<td>
			<img src="../../images/star.jpg" class="star_pic" /><img 

src="../../images/star.jpg" class="star_pic" /><img src="../../images/star.jpg" 

class="star_pic" /></td>
	</tr>
</table>
</body>
</html>
