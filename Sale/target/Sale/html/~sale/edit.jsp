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
 
    
    <title>My JSP 'edit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
<script type="text/javascript" src="../script/jquery.min.js"></script>
</head>
<body>

<div class="page_title">销售机会管理&nbsp; &gt; 编辑销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="update();">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input readonly value="${sc.chcId }" id="scid"/></td>
		<th>机会来源</th>
		<td>
			<input name="T4" size="20" value="${sc.chcSource }" id="source"/></td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td><input value="${sc.chcCustName }"  id="cname"/><span class="red_star">*</span></td>
		<th>成功机率（%）</th>
		<td><input value="${sc.chcRate }" id="rdata"/><span class="red_star" >*</span></td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3"><input value="${sc.chcTitle }" name="T0" size="52" id="tit"/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>联系人</th>
		<td><input name="T21" value="${sc.chcLinkman }" size="20" id="lm"/></td>
		<th>联系人电话</th>
		<td><input name="T5" value="${sc.chcTel }" size="20" id="phone"/></td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3"><textarea rows="6" cols="50" name="S1" id="desc">${sc.chcDesc }</textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td><input name="T19" value="${sc.crename }" readonly size="20" /><span class="red_star">*</span></td>
		<th>创建时间</th>
		<td><input id="t1" name="T15"  value='<fmt:formatDate value="${sc.chcCreateDate }" pattern="yyyy-MM-dd HH:mm:ss"/>'readonly size="20"/><span class="red_star">*</span></td>
	</tr>
</table>
<br />
<table disabled class="query_form_table" id="table1">
	<tr>
		<th>指派给</th>
		<td>
			<select name="D1" id="cduid">
				<c:forEach items="${salers }" var="sal">
				<c:if test="${sal.usrId eq sc.chcDueId }">
					<option value="${sal.usrId }" selected="selected">${sal.usrName }</option>
				</c:if>
					<option value="${sal.usrId }">${sal.usrName }</option>
				</c:forEach>
			</select> <span class="red_star">*</span></td>
		<th>指派时间</th>
		<td>
			<input id="t2" name="T20" readonly size="20" value='<fmt:formatDate value="${sc.chcDueDate }" pattern="yyyy-MM-dd HH:mm:ss"/>'/><span class="red_star">*</span></td>
	</tr>
</table>
<script>
	function update(){
	var id=$("#scid").val();//id
	var chcSource=$("#source").val();
	var chcCustName=$("#cname").val();
	var chcTitle=$("#tit").val();
	var chcRate=$("#rdata").val();
	var chcLinkman=$("#lm").val();
	var chcTel=$("#phone").val();
	var chcDesc=$("#desc").val();
	var chcDueId=$("#cduid").val();
	if(chcDueId=="${sc.chcDueId}"){
		chcDueId=null;
	}
		$.post("updatesc.html",
		{"chcSource":chcSource,"chcCustName":chcCustName,"chcTitle":chcTitle,"chcRate":chcRate,"chcLinkman":chcLinkman,"chcTel":chcTel,"chcDesc":chcDesc,"chcId":id,"chcDueId":chcDueId},
		function(res){
		console.log(res)
			if(res>0){
			console.log("success")
				alert("修改成功");
				window.location.href="findsalchance.html";
			}
		}
		)
	}
</script>
</body>
</html>
