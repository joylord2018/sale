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

<div class="page_title">客户信息管理 &gt; 客户信息 &gt; 交往记录 &gt; 编辑交往记录</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="updateca(${ca.atvId });">保存</button>  
</div>
<table class="query_form_table" id="table1">
	<tr>
	
		<th>时间</th>
		<td><input readonly="readonly" onclick="WdatePicker();" id="atvDate" value='<fmt:formatDate value="${ca.atvDate }" pattern="yyyy-MM-dd"/>'/><span class="red_star">*</span></td>
		<th>地点</th>
		<td>
			<input name="T1" size="20" id="atvPlace" id="atvPlace" value="${ca.atvPlace }"/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>概要</th>
		<td><input id="atvTitle" value="${ca.atvTitle }"/><span class="red_star">*</span></td>
		<th>备注</th>
		<td><input id="atvMemo" value="${ca.atvMemo }"/></td>
	</tr>	
	<tr>
		<th>详细信息</th>
		<td colspan="3">
			<textarea cols="50" rows="6" id="atvDesc">${ca.atvDesc }</textarea>
		</td>
	</tr>
</table>
</body>
<script type="text/javascript">
	function updateca(num){
		var atvId=num;
		var atvDate=$("#atvDate").val();
		var atvPlace=$("#atvPlace").val();
		var atvTitle=$("#atvTitle").val();
		var atvMemo=$("#atvMemo").val();
		var atvDesc=$("#atvDesc").val();
		var atvCustNo="${ca.atvCustNo}";
		$.post("updatecat.html",
		{"atvId":atvId,"atvDate":atvDate,"atvPlace":atvPlace,"atvTitle":atvTitle,"atvMemo":atvMemo,"atvDesc":atvDesc},
		function(res) {
			if(res>0){
				alert("修改成功");
				window.location.href="findact.html?cid="+atvCustNo;
			}
		});
	}
</script>
</html>