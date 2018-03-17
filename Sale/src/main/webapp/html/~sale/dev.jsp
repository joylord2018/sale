<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'dev.jsp' starting page</title>
    
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

<div class="page_title">客户开发计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button> 
	</div>
<table class="query_form_table">
	<tr>
		<th>客户名称</th>
		<td><input value="${scvo.cname }" id="cname"/></td>
		<th>概要</th>
		<td><input value="${scvo.desc }" id="desc"/></td>
		<th>联系人</th>
		<td>
			<input name="T1" size="20" value="${scvo.lname }" id="lname"/>
		</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户名称</th>
		<th>概要</th>
		<th>联系人</th>
		<th>联系人电话</th>
		<th>创建时间</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${li}" var="sc" varStatus="num">
	<tr>
		<td class="list_data_number">${(num.index +1)+(scvo.pageno-1)*scvo.pagesize}</td>
		<td class="list_data_text">${sc.chcCustName}</td>
		<td class="list_data_ltext">${sc.chcTitle}</td>
		<td class="list_data_text">${sc.chcLinkman}</td>
		<td class="list_data_text">${sc.chcTel}</td>
		<td class="list_data_text"><fmt:formatDate value="${sc.chcCreateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td class="list_data_text"><c:if test="${sc.chcStatus eq 2}">开发中</c:if><c:if test="${sc.chcStatus eq 3}">开发成功</c:if><c:if test="${sc.chcStatus eq 4}">开发失败</c:if></td>
		<td class="list_data_op">
			<c:if test="${sc.chcStatus eq 2}">
			<img onclick="to('finddevbyid.html?id=${sc.chcId}&type=1');" title="制定计划" src="../images/bt_plan.gif" class="op_button" />
			<img onclick="to('finddevbyid.html?id=${sc.chcId}&type=2');" title="执行计划" src="../images/bt_feedback.gif" class="op_button" />
			<img onclick="upscst(${sc.chcId},3);" title="开发成功" src="../images/bt_yes.gif" class="op_button" />
			</c:if>
			<c:if test="${sc.chcStatus > 2}">
			<img onclick="to('finddevbyid.html?id=${sc.chcId}&type=3&dueid=${sc.chcDueId }');" title="查看" src="../images/bt_detail.gif" class="op_button" />
			</c:if>
		</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="10" class="pager">
<div class="pager">
	共${scvo.maxcount }条记录 每页<input value="${scvo.pagesize }" size="2" id="size"/>条
	第<input value="${scvo.pageno }" size="2" disabled="disabled"/>页/共${scvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${scvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${scvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${scvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="javascript:go();">GO</button>
</div>
		</th>
	</tr>
</table>
<script type="text/javascript">
function page(num){
	var cname=$("#cname").val();
	var desc=$("#desc").val();
	var lname=$("#lname").val();
	var pagesize=$("#size").val();
	var maxcount="${scvo.maxcount}";
	var maxpage="${scvo.maxpage}";
	 window.location.href="saldev.html?cname="+cname+"&desc="+desc+"&lname="+lname+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
 }
 function go(){
 	var num=$("#pn").val();
 	page(num);
 }
 
 function delsc(id){
 	var flag=confirm("确定要删除这个销售机会吗?");
 	if(flag){
	 	$.post("delsc.html",{"id":id},function(res){
	 		if(res>0){
	 			alert("删除成功");
	 			window.location.href="saldev.html";
	 		}
	 	})
 	}else{
		return ; 	
 	}
 }
 function upscst(chid,st){
	$.post("upscst.html",{"id":chid,"res":st},function(result){
		if(result>0){
			var flag=confirm("用户开发成功,请完善新客户信息。");
			if(flag){
			window.location.href="../~cust/cust/findcustwait.html";
			}else{
			window.location.href="saldev.html";
			}
			
		}
	});
}
</script>
</body>
</html>
