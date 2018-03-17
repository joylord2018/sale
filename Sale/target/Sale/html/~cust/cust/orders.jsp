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

<div class="page_title">客户信息管理 > 客户信息 > 历史订单 </div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>  
	<button class="common_button" onclick="back();">返回</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td>${lio[0].odrCustomerId }</td>
		<th>客户名称</th>
		<td>${lio[0].cname }</td>
	</tr>
	</table>
<br />
<table class="data_list_table">
	<tr>
		<th>订单编号</th>
		<th>日期</th>
		<th>送货地址</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${lio }" var="ord">
	<tr>
		<td class="list_data_text">${ord.odrId }</td>
		<td class="list_data_text"><fmt:formatDate value="${ord.odrDate }" pattern="yyyy年MM月dd日"/></td>
		<td class="list_data_text">${ord.odrAddr }</td>
		<td class="list_data_text"><c:if test="${ord.odrStatus eq 5}">未回款</c:if><c:if test="${ord.odrStatus eq 6}">已回款</c:if></td>
		<td class="list_data_op">
			<img onclick="to('findordbyid.html?id=${ord.odrId }');" title="查看明细" 

src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	</c:forEach>
		<tr>
		<th colspan="100" class="pager">
<div class="pager">
	共${count }条记录 每页<input value="${pagesize}" size="2" id="psize"/>条
	第<input value="${pageno }" size="2" id="pnum"/>页/共${maxpage}页
	<a href="javascript:page(-10);">第一页</a>
	<a href="javascript:page(-1);">上一页</a>
	<a href="javascript:page(1);">下一页</a>
	<a href="javascript:page(-20);">最后一页</a>
	转到<input value="${pageno }" size="2" />页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>
	</table>
</body>
<script type="text/javascript">
function page(num){
	var pagesize=parseInt($("#psize").val());
	var pageno=parseInt($("#pnum").val());
	if(num==-10){
	
		pageno=1;
	}
	if(num==-20){
		pageno="${maxpage}";
	}
	if(num==-1||num==1){
		pageno=pageno+num;
	
		if(pageno>"${maxpage}"){
			return false;
		}
		if(pageno<1){
			return false;
		}
	}
	 window.location.href="findords.html?cid=${lio[0].odrCustomerId }&pageno="+pageno+"&pagesize="+pagesize;
}
</script>
</html>
