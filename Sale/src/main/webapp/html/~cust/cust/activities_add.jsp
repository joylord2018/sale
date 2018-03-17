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
<script type="text/javascript" src="../../script/jquery.min.js"></script>
<script type="text/javascript" src="../../script/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
$(function(){
var url=location.href;
 $("#cid").val(url.substring(url.indexOf("=")+1));
});
</script>
</head>
<body>

<div class="page_title">客户信息管理 > 客户信息 > 交往记录 > 新建交往记录</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="addca();">保存</button>  
</div>
<table class="query_form_table">
	<input type="hidden" id="cid">
	<tr>
		<th>时间</th>
		<td><input readonly="readonly" onclick="WdatePicker();" id="atvDate"/><span class="red_star">*</span></td>
		<th>地点</th>
		<td>
			<input name="T1" size="20" id="atvPlace"/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>概要</th>
		<td><input id="atvTitle"/><span class="red_star">*</span></td>
		<th>备注</th>
		<td><input id="atvMemo"/></td>
	</tr>	
	<tr>
		<th>详细信息</th>
		<td colspan="3">
			<textarea cols="50" rows="6" id="atvDesc"> </textarea>
		</td>
	</tr>
</table>
</body>
<script type="text/javascript">
function addca(){
var atvCustNo=$("#cid").val();
var atvDate=$("#atvDate").val();
var atvPlace=$("#atvPlace").val();
var atvTitle=$("#atvTitle").val();
var atvMemo=$("#atvMemo").val();
var atvDesc=$("#atvDesc").val();
$.post("addact.html",
	{"atvCustNo":atvCustNo,"atvDate":atvDate,"atvPlace":atvPlace,"atvTitle":atvTitle,"atvMemo":atvMemo,"atvDesc":atvDesc},
	function(res){
		if(res>0){
			alert("添加成功")
			window.location.href="findact.html?cid="+atvCustNo;
		}
	});
}
</script>
</html>