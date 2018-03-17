<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<div class="page_title">客户信息管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td><input id="custno" value="${ccvo.custno }"/></td>
		<th>名称</th>
		<td><input id="custname" value="${ccvo.custname }"/></td>
		<th>地区</th>
		<td>
			<select id="region">
				<option value="">全部</option>
				<c:forEach items="${licr }" var="cr">
				<c:choose>
				<c:when test="${cr.dictValue eq ccvo.custregion}">
				<option value="${cr.dictValue }" selected="selected">${cr.dictItem }</option>
				</c:when>
				<c:otherwise>
				<option value="${cr.dictValue }">${cr.dictItem }</option>
				</c:otherwise>
				</c:choose>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<th>客户经理</th>
		<td><input id="mname" value="${ccvo.managename }"/></td>
		<th>客户等级</th>
		<td>
			<select id="level">
				<option value="">全部</option>
				<c:forEach items="${licl }" var="cl">
				<c:choose>
				<c:when test="${cl.dictValue eq ccvo.custleave}">
					<option value="${cl.dictValue }" selected="selected">${cl.dictItem }</option>
				</c:when>
				<c:otherwise>
				<option value="${cl.dictValue }">${cl.dictItem }</option>
				</c:otherwise>
				</c:choose>
				</c:forEach>
			</select>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>序号</th>
		<th>客户编号</th>
		<th>名称</th>
		<th>地区</th>
		<th>客户经理</th>
		<th>客户等级</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${ccli }" var="cc" varStatus="num">
	<tr>
		<td class="list_data_number">${(num.index +1)+(ccvo.pageno-1)*ccvo.pagesize}</td>
		<td class="list_data_text">${cc.custNo }</td>
		<td class="list_data_ltext">${cc.custName }</td>
		<td class="list_data_text">${cc.crname}</td>
		<td class="list_data_text">${cc.cmname }</td>
		<td class="list_data_text">${cc.clname }</td>
		<td class="list_data_op">
			<img onclick="to('findcustbyid.html?id=${cc.custNo}');" title="编辑" 

src="../../images/bt_edit.gif" class="op_button" />
			<img onclick="to('findclbycust.html?cid=${cc.custNo }');" title="联系人" 

src="../../images/bt_linkman.gif" class="op_button" />
			<img onclick="to('findact.html?cid=${cc.custNo }');" title="交往记录" 

src="../../images/bt_acti.gif" class="op_button" />
			<img onclick="to('findords.html?cid=${cc.custNo }');" title="历史订单" 

src="../../images/bt_orders.gif" class="op_button" />
			
			<img onclick="delct('${cc.custNo}',${cc.custManagerId});" title="删除" 

src="../../images/bt_del.gif" class="op_button" />
			
		</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="100" class="pager">
<div class="pager">
	共${ccvo.maxcount }条记录 每页<input value="${ccvo.pagesize }" size="2" id="size"/>条
	第<input value="${ccvo.pageno }" size="2" disabled="disabled"/>页/共${ccvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${ccvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${ccvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${ccvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="go();">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
<script type="text/javascript">
function page(num){
	var custregion=$("#region").val();
	var custno=$("#custno").val();
	var custname=$("#custname").val();
	var managename=$("#mname").val();
	var custleave=$("#level").val();
	var pagesize=$("#size").val();
	var maxcount="${ccvo.maxcount}";
	var maxpage="${ccvo.maxpage}";
	 window.location.href="findcustomer.html?custregion="+custregion+"&custno="+custno+"&custname="+custname+"&managename="+managename+"&custleave="+custleave+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
  function go(){
 	var num=$("#pn").val();
 	page(num);
 }
 
 function delct(id,mid){
	 var flag=confirm("确定要将该客户加如流失客户吗？");
	 if(!flag){
	 	return false;
	 }
	 var lstCustNo=id;
	$.post("movelostcc.html",
	{"id":id,"mid":mid},
	function(res){
		if(res>0){
			alert("操作成功");
		}
	});
}
</script>
</html>
