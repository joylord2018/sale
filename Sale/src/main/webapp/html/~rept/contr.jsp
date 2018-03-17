<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'contr.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
<script type="text/javascript" src="../script/jquery.min.js"></script>

</head>
<body>

<div class="page_title">客户贡献分析</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" id="seach">查询</button> 
	</div>
<table class="query_form_table">
	<tr>
		<th>客户名称</th>
		<td><input value="${cname }" id="cname"/></td>
		<th>年份</th>
		<td>
			<select id="year">
				<option value>全部</option>
				<option value="2015">2015</option>
				<option value="2016">2016</option>
				<option value="2017">2017</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
			</select>
		</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>订单金额（元）</th>
	</tr>
	<c:forEach items="${li }" var="yc" varStatus="num">
	<tr>
		<td class="list_data_number">${num.index +1 }</td>
		<td class="list_data_ltext">${yc.cname }</td>
		<td class="list_data_number">${yc.count }</td>
	</tr>
	</c:forEach>
</table>
<script type="text/javascript">
console.log(111)
	$(function(){
		$("#seach").click(function(){
		
			 var cname=$("#cname").val();
				var year=$("#year").val();
				window.location.href="findyearcost.html?cname="+cname+"&year="+year;
		});
		$("#year option").each(function(){
			if($(this).val()=="${year}"){
				$(this).attr("selected","selected");
				return false;
			}
		});
		
	});
	
</script>
</body>
</html>