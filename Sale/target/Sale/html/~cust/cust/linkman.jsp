<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<div class="page_title">客户信息管理 > 客户信息 > 联系人 </div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('linkman_add.jsp?cid=${licl[0].lkmCustNo }');">新建</button>  
	<button class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${licl[0].lkmCustNo }</td>
		<th>客户名称</th>
		<td>${licl[0].cname }</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>姓名</th>
		<th>性别</th>
		<th>职位</th>
		<th>办公电话</th>
		<th>手机</th>
		<th>备注</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${licl }" var="cl">
	<tr>
		<td class="list_data_text">${cl.lkmName }</td>
		<td class="list_data_ltext">${cl.lkmSex }</td>
		<td class="list_data_text">${cl.lkmPostion }</td>
		<td class="list_data_text">${cl.lkmTel }</td>
		<td class="list_data_text">${cl.lkmMobile }</td>
		<td class="list_data_op">
			　${cl.lkmMemo }</td>
		<td class="list_data_op">
			<img onclick="to('findclbyid.html?id=${cl.lkmId}');" title="编辑" 

src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="delcl(${cl.lkmId});" title="删除" 
src="../../images/bt_del.gif" class="op_button" />
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
<script type="text/javascript">
function delcl(id){
	var flag=confirm("确定要删除该联系人吗？");
	if(!flag){
		return false;
	}
	console.log("aaa");
	 $.post("delcl.html?id="+id,function(res){
		if(res>0){
			alert("删除成功")
			window.location.reload();
		}else{
			alert("删除失败,请联系管理员");
		}
	 }); 
}
</script>
</html>