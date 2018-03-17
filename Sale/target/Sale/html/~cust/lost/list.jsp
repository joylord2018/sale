<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<script type="text/javascript" src="../../script/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#lststatus option").each(function(){
		if($(this).val()=="${clvo.lststatus}"){
			$(this).attr("selected","selected");
		}
	});
})
</script>
</head>
<body>

<div class="page_title">客户流失管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户</th>
		<td><input value="${clvo.custname }" id="custname"/></td>
		<th>客户经理</th>
		<td><input value="${clvo.managename }" id="managename"/></td>
		<th>状态</th>
		<td>
			<select id="lststatus">
				<option value="">全部</option>
				<option value="1">预警</option>
				<option value="2">暂缓流失</option>
				<option value="3">确认流失</option>
			</select>
		</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户</th>
		<th>客户经理</th>
		<th>上次下单时间</th>
		<th>确认流失时间</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${clli }" var="cl" varStatus="num">
	<tr>
		<td class="list_data_number">${(num.index +1)+(clvo.pageno-1)*clvo.pagesize}</td>
		<td class="list_data_text">${cl.cname }</td>
		<td class="list_data_ltext">${cl.mname }</td>
		<td class="list_data_text">
		<fmt:formatDate value="${cl.lstLastOrderDate }" pattern="yyyy年MM月dd日"/>
		</td>
		<td class="list_data_text"><fmt:formatDate value="${cl.lstLostDate }" pattern="yyyy年MM月dd日"/></td>
		<td class="list_data_text">${cl.cstatus }</td>
		<td class="list_data_op">
			<img onclick="to('confirm.jsp');" title="确认流失" 

src="../../images/bt_confirm.gif" class="op_button" />
			<img onclick="to('relay.jsp');" title="暂缓流失" 

src="../../images/bt_relay.gif" class="op_button" />
			
		</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="7" class="pager">
<div class="pager">
	共${clvo.maxcount }条记录 每页<input value="${clvo.pagesize }" size="2" id="size"/>条
	第<input value="${clvo.pageno }" size="2" disabled="disabled"/>页/共${clvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${clvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${clvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${clvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
<script type="text/javascript">
function page(num){
	var custname=$("#custname").val();
	var managename=$("#managename").val();
	var lststatus=$("#lststatus").val();
	var pagesize=$("#size").val();
	var maxcount="${clvo.maxcount}";
	var maxpage="${clvo.maxpage}";
	 window.location.href="findcstlost.html?custname="+custname+"&managename="+managename+"&lststatus="+lststatus+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
</script>
</html>
