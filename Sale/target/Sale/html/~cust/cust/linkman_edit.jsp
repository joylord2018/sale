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
</head>
<body>

<div class="page_title">客户信息管理 > 客户信息 > 联系人 > 编辑联系人</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="savecl(${cl.lkmId});">保存</button>  
</div>
<table class="query_form_table" id="table1">
	<tr>
		<th>姓名</th>
		<td><input readonly name="T3" value="${cl.lkmName }" size="20" id="lkmName"/><span 

class="red_star">*</span></td>
		<th>性别</th>
		<td>
			<form action="javascript:;">
			<input type="radio" name="gander" value="男"/>男
			<input type="radio" name="gander" value="女"/>女
			</form>
		</td>
	</tr>
	<tr>
		<th>职位</th>
		<td><input name="T4" value="${cl.lkmPostion }" size="20" id="lkmPostion"/><span 

class="red_star">*</span></td>
		<th>办公电话</th>
		<td><input name="T5" value="${cl.lkmTel }" size="20" id="lkmTel"/><span 

class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>手机</th>
		<td><input name="T1" value="${cl.lkmMobile }" size="20" id="lkmMobile"/></td>
		<th>备注</th>
		<td><input name="T2" size="20"  value="${cl.lkmMemo }" id="lkmMemo"/></td>
	</tr>
</table>
</body>
<script type="text/javascript">
$(function(){
	$("[name='gander']").each(function(){
		if($(this).val()=="${cl.lkmSex}"){
			$(this).attr("checked","checked");
			return false;
		}
	});
});
function savecl(id){
	var lkmId=id;
	console.log(id);
	var lkmName=$("#lkmName").val();
	var lkmSex=$("[name='gander']:checked").val();
	var lkmTel=$("#lkmTel").val();
	var lkmPostion=$("#lkmPostion").val();
	var lkmMobile=$("#lkmMobile").val();
	var lkmMemo=$("#lkmMemo").val();
	  $.post("updatecl.html",
	{"lkmId":lkmId,"lkmName":lkmName,"lkmSex":lkmSex,"lkmTel":lkmTel,"lkmPostion":lkmPostion,"lkmMobile":lkmMobile,"lkmMemo":lkmMemo},
	function(res){
		if(res>0){
			alert("修改联系人成功");
			window.location.href="findclbycust.html?cid=${cl.lkmCustNo}";
		}
	});
}
</script>
</html>
