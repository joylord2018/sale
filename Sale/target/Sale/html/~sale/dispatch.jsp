<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'dispatch.jsp' starting page</title>
    
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

<div class="page_title">销售机会管理&nbsp; &gt; 指派销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="addsaler();">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td id="scno">${sc.chcId}</td>
		<th>机会来源</th>
		<td>${sc.chcSource }</td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td>${sc.chcCustName }</td>
		<th>成功机率（%）</th>
		<td>&nbsp;${sc.chcRate }</td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3">${sc.chcTitle }</td>
	</tr>
	<tr>
		<th>联系人</th>
		<td>${sc.chcLinkman }</td>
		<th>联系人电话</th>
		<td>${sc.chcTel }</td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3">${sc.chcDesc }</td>
	</tr>
	<tr>
		<th>创建人</th>
		<td>${sc.crename }</td>
		<th>创建时间</th>
		<td><fmt:formatDate value="${sc.chcCreateDate }" pattern="yyyy年MM月dd日  HH时mm分ss秒"/></td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>指派给</th>
		<td>
			<select name="D1" id="saler">
				<c:forEach items="${salers }" var="sal">
				<option value="${sal.usrId }">${sal.usrName }</option>
				</c:forEach>
			</select> <span class="red_star">*</span></td>
		<th>指派时间</th>
		<td>
			<input id="t2" name="T20" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
</table>
<script>
	setCurTime('t2');
	function addsaler(){
		var salerno=$("#saler").val();
		var scno=$("#scno").html();
		var salname;
		$("#saler option").each(function(){
			if($(this).val()==salerno){
				salname=$(this).html();
			}
		});
		var flag=confirm("确定要指派给"+salname+"吗？");
		if(flag){
			window.location.href="addSaler.html?scid="+salerno+"&scno="+scno;
		} 
		
	}
</script>
</body>
</html>
