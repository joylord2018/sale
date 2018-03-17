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
 
    
    <title>My JSP 'dev_plan.jsp' starting page</title>
    
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

<div class="page_title">客户开发计划 &gt; 制定计划</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('finddevbyid.html?id=${sc.chcId}&type=2');">执行计划</button>
	<button class="common_button" onclick="back();">返回</button>
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
	<tr>
		<th>指派给</th>
		<td>
			${sc.dname }</td>
		<th>指派时间</th>
		<td>
			<fmt:formatDate value="${sc.chcDueDate }" pattern="yyyy年MM月dd日  HH时mm分ss秒"/></td>
	</tr>
</table>
<br />
<table class="data_list_table" >
	<tr>
		<th width="150px">日期</th>
		<th height="31">计划项</th>
	</tr>
</table>
<table class="data_list_table" id="table1">
	
	<c:forEach items="${spli }" var="sp">
	<tr>
		 <td class="list_data_text" height="24"><fmt:formatDate value="${sp.plaDate }" pattern="yyyy-MM-dd"/></td>
		<td class="list_data_ltext" height="24"><input size="50" value="${sp.plaTodo }" />
		<button class="common_button" onclick="delsp(${sp.plaId},this);">删除</button>
		</td>
	</tr>
	</c:forEach>
</table>
<div class="button_bar">
	<button class="common_button" onclick="addnew(${sc.chcId});">添加</button>
	</div>
<table class="query_form_table" id="table2">
	<tr>
		<th>日期</th>
		<td><input id="sptime"/><span class="red_star">*</span></td>
		<th>计划项</th>
		<td>
			<input size="50" name="T2" id="spmsg"/><span class="red_star">*</span>
		</td>
	</tr>
</table>
<script type="text/javascript">
function addnew(scid){
	var sptime=$("#sptime").val();
	var spmsg=$("#spmsg").val();
	if(sptime==''||spmsg==''){
		alert("请完整填写计划");
		return ;
	}
	//添加至计划项
	var str="<tr><td class='list_data_text' height='24'>"+sptime+"</td><td class='list_data_ltext' height='24'><input size='50' value='"+spmsg+"'/>"
		+"<button class='common_button' onclick='savesp(${sc.chcId},this);'>保存</button><button class='common_button' onclick='delsp(null,this);'>删除</button></td></tr>";
	$("#table1").append(str);
	//清空所填内容
	$("#sptime").val("");
	$("#spmsg").val("");
}
function savesp(scid,obj){
	var plaChcId=scid;
	var plaDate=$(obj).prev().parent().prev().html();
	var plaTodo=$(obj).prev().val();
	var flag=confirm("确定提交该计划吗？");
	if(!flag){
		return false;
	}
	$.getJSON("addsp.html",
	{"plaChcId":plaChcId,"plaDate":plaDate,"plaTodo":plaTodo},
	function(res){
		console.log(res.res);
		if(res.res>0){
			alert("添加成功");
			$(obj).remove();
			var strlisp="";
			$(res.lisp).each(function() {
			  strlisp+="<tr><td class='list_data_text' height='24'>"+this.plaDate.substring(0,10)+"</td>"+
							"<td class='list_data_ltext' height='24'><input size='50' value='"+this.plaTodo+"' /><button class='common_button' onclick='delsp("+this.plaId+",this);'>删除</button></td></tr>";
			
			});
			$("#table1").html(strlisp);
		}
	});
}
function delsp(id,obj){

$(obj).parent().parent().remove();
if(id!=null){

	$.getJSON("delsp.html",{"id":id},function(res){
		if(res>0){
			alert("删除成功");
		}
	});
}
}
</script>
</body>
</html>
