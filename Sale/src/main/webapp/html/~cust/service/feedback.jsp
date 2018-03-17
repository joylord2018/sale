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
<script type="text/javascript" src="../../script/My97DatePicker/WdatePicker.js"></script>
</head>
<body>

<div class="page_title">客户服务管理 &gt; 服务反馈</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="javascript:page(1);">查询</button>  
</div>
<table class="query_form_table" height="53">
	<tr>
		<th height="28">客户</th>
		<td><input value="${csvo.cname }" id="cname"/></td>
		<th height="28">概要</th>
		<td><input value="${csvo.title }" id="title"/></td>
		<th height="28">服务类型</th>
		<td>
			<select name="D1" id="type">
				<option value="">全部</option>
				<c:forEach items="${svr_type}" var="type">
					<c:choose>
						<c:when test="${type.dictValue eq csvo.type}">
							<option value="${type.dictValue }" selected="selected">${type.dictItem }</option>
						</c:when>
						<c:otherwise>
							<option value="${type.dictValue }">${type.dictItem }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<th height="22">创建日期</th>
		<td colspan="3">
			<input name="T2" size="10" id="startdate" value='<fmt:formatDate value="${csvo.startdate }" pattern="yyyy-MM-dd"/>' onclick="WdatePicker();"/> - <input name="T1"  id="enddate" size="10" value='<fmt:formatDate value="${csvo.enddate }" pattern="yyyy-MM-dd"/>' onclick="WdatePicker();"/></td>
		<th height="22">状态</th>
		<td>
			<select name="D1" id="status">
				<option selected value="3">已处理</option>
			</select>
		</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户</th>
		<th>概要</th>
		<th>服务类型</th>
		<th>创建人</th>
		<th>创建日期</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${csli }" var="cs">
	<tr>
		<td class="list_data_number">${cs.svrId }</td>
		<td class="list_data_text">${cs.cname }</td>
		<td class="list_data_ltext">${cs.svrTitle }</td>
		<td class="list_data_text">${cs.type }</td>
		<td class="list_data_text">${cs.uname }</td>
		<td class="list_data_text"><fmt:formatDate value="${cs.svrCreateDate }" pattern="yyyy年MM月dd日"/></td>
		<td class="list_data_op">
						
			<img onclick="to('findcsbyid.html?id=${cs.svrId }&typeno=3');" title="处理" 

src="../../images/bt_feedback.gif" class="op_button" />  
			
		</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="7" class="pager">
<div class="pager">
	共${csvo.maxcount }条记录 每页<input value="${csvo.pagesize }" size="2" id="size"/>条
	第<input value="${csvo.pageno }" size="2" disabled="disabled"/>页/共${csvo.maxpage}页
	<a href="javascript:page(1);">第一页</a>
	<a href="javascript:page(${csvo.pageno -1 });">上一页</a>
	<a href="javascript:page(${csvo.pageno +1 });">下一页</a>
	<a href="javascript:page(${csvo.maxpage });">最后一页</a>
	转到<input value="1" size="2" id="pn"/>页
	<button width="20" onclick="pagego()">GO</button>
</div>
		</th>
	</tr>
</table>
<script type="text/javascript">
function page(num){
	var cname=$("#cname").val();
	var title=$("#title").val();
	var status=$("#status").val();
	var type=$("#type").val();
	var pagesize=$("#size").val();
	var maxcount="${csvo.maxcount}";
	var maxpage="${csvo.maxpage}";
	var url="findcsli.html?cname="+cname+"&title="+title+"&status="+status+"&type="+type+"&pagesize="+pagesize+"&pageno="+num+"&maxpage="+maxpage;
	var startdate=$("#startdate").val();
	if(!startdate==""){
		url+="&sdate="+startdate;
	}
	var enddate=$("#enddate").val();
	if(!enddate==""){
		url+="&edate="+enddate;
	}
	 window.location.href=url;
 }
 
  function pagego(){
 	var num=$("#pn").val();
 	page(num);
 }
 
</script>
</body>
</html>