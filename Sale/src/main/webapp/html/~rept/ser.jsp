<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'ser.jsp' starting page</title>
    
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

<div class="page_title">客户服务分析</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="seach();">查询</button> 
	</div>
<table class="query_form_table">
	<tr>
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
		<th>条目</th>
		<th>服务数量</th>
	</tr>
	<c:forEach items="${li }" var="ty" varStatus="num">
	<tr>
		<td class="list_data_number">${num.index +1}</td>
		<td class="list_data_text">${ty.msg}</td>
		<td class="list_data_number">${ty.result}</td>
	</tr>
	</c:forEach>
	</table>
</body>
<script type="text/javascript">
	function seach(){
		var year=$("#year").val();
		window.location.href="findserresult.html?year="+year;
	}
</script>
</html>