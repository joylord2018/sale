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
<script type="text/javascript">
$(function(){
 var url=location.href;
 $("#cid").val(url.substring(url.indexOf("=")+1));
});
function addcl(){
	var lkmCustNo=$("#cid").val();
	var lkmName=$("#lkmName").val();
	var lkmSex=$("[name='gander']:checked").val();
	var lkmTel=$("#lkmTel").val();
	var lkmPostion=$("#lkmPostion").val();
	var lkmMobile=$("#lkmMobile").val();
	var lkmMemo=$("#lkmMemo").val();
	  $.post("addcl.html",
	{"lkmCustNo":lkmCustNo,"lkmName":lkmName,"lkmSex":lkmSex,"lkmTel":lkmTel,"lkmPostion":lkmPostion,"lkmMobile":lkmMobile,"lkmMemo":lkmMemo},
	function(res){
		if(res>0){
			alert("添加联系人成功");
			window.location.href="findclbycust.html?cid="+lkmCustNo;
		}
	});
}
</script>
</head>
<body>

<div class="page_title">客户信息管理 > 客户信息 > 联系人 > 新建联系人</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="addcl();">保存</button>  
</div>
<table class="query_form_table">
	
	<tr>
		<th>姓名</th>
		<td><input name="T3" value="" size="20" id="lkmName"/><span 

class="red_star">*</span></td>
		<th>性别</th>
		<td>
			<form action="javascript:;">
			<input type="hidden" id="cid">
			<input type="radio" name="gander" value="男"/>男
			<input type="radio" name="gander" value="女"/>女
			</form>
		</td>
	</tr>
	<tr>
		<th>职位</th>
		<td><input name="T4" value="" size="20" id="lkmPostion"/><span 

class="red_star">*</span></td>
		<th>办公电话</th>
		<td><input name="T5" value="" size="20" id="lkmTel"/><span 

class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>手机</th>
		<td><input name="T1" value="" size="20" id="lkmMobile"/></td>
		<th>备注</th>
		<td><input name="T2" size="20"  value="" id="lkmMemo"/></td>
	</tr>
</table>
</body>
</html>
