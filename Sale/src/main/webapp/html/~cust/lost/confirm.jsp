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

<div class="page_title">客户流失管理 &gt; 确认流失</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="to('findcstlostbyid.html?id=${cl.lstId}&type=2');">暂缓流失</button>
	<button class="common_button" onclick="updatesl();">保存</button>
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td id="clid">${cl.lstId }</td>
		<th>客户</th>
		<td>${cl.cname }</td>
	</tr>
	<tr>
		<th>客户经理</th>
		<td>
			${cl.mname }</td>
		<th>上次下单时间</th>
		<td>
		<fmt:formatDate value="${cl.lstLastOrderDate }" pattern="yyyy年MM月dd日"/>
			</td>
	</tr>
	<tr>
		<th>暂缓措施</th>
		<td colspan="3">${cl.lstDelay }
</td>
	</tr>	
	<tr>
		<th>流失原因</th>
		<td colspan="3">
			<textarea rows="6" cols="50" id="msg">${cl.lstReason}</textarea><span 

class="red_star">*</span></td>
	</tr>
</table>
<br />
</body>
<script type="text/javascript">
	function updatesl(){
		var lstReason=$("#msg").val();
		var lstId=$("#clid").html();
		var lstStatus=3;
		$.post("updatecl.html",{"lstId":lstId,"lstReason":lstReason,"lstStatus":lstStatus},function(res){
			if(res>0){
				alert("修改成功");
				window.location.href="findcstlost.html";
			}
		});
	}
</script>
</html>
