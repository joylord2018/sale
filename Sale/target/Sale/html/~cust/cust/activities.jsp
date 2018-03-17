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
</head>
<body>

<div class="page_title">客户信息管理 &gt; 客户信息 &gt; 交往记录</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="addca('${cc.custNo}');">新建</button>  
	<button class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${cc.custNo }</td>
		<th>客户名称</th>
		<td>${cc.custName }</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th width="232">时间</th>
		<th>地点</th>
		<th>概要</th>
		<th>详细信息</th>
		<th>备注</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${lica }" var="ca">
	<tr>
		<td class="list_data_text" width="230"><fmt:formatDate value="${ca.atvDate }" pattern="yyyy年MM月dd日"/></td>
		<td class="list_data_text">${ca.atvPlace}</td>
		<td class="list_data_ltext">${ca.atvTitle}</td>
		<td class="list_data_ltext">${ca.atvDesc}</td>
		<td class="list_data_op">
			${ca.atvMemo }　
			</td>
		<td class="list_data_op">
			<img onclick="to('findcabyid.html?cid=${ca.atvId}');" title="编辑" 

src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="javascript:;" title="删除" src="../../images/bt_del.gif" class="op_button" />
			
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
<script type="text/javascript">
function addca(cid){
	window.location.href="activities_add.jsp?cid="+cid;
}

</script>
</html>
