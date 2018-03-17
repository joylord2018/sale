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

<div class="page_title">客户信息管理 > 客户信息</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="to('linkman.jsp');">联系人</button>
	<button class="common_button" onclick="to('activities.jsp');">交往记录</button>
	<button class="common_button" onclick="to('orders.jsp');">历史订单</button>
	
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="savecust();">保存</button>
</div>
<table class="query_form_table">
	<tr>
		<th>客户编号</th>
		<td id="custNo">${cc.custNo }</td>
		<th>名称</th>
		<td><input value="${cc.custName }" id="custName"/><span 

class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地区</th>
		<td>
			<select id="custRegion">
				<option value="">全部</option>
				<c:forEach items="${licr }" var="cr">
				<c:choose>
				<c:when test="${cr.dictValue eq cc.custRegion}">
					<option value="${cr.dictValue }" selected="selected">${cr.dictItem }</option>
				</c:when>
				<c:otherwise>
					<option value="${cr.dictValue }">${cr.dictItem }</option>
				</c:otherwise>
				</c:choose>
				</c:forEach>
			</select>
			<span class="red_star">*</span></td>
		<th>客户经理</th>
		<td>
			<select id="custManagerId">
				<option value="">请选择...</option>
				<c:forEach items="${salers }" var="sal">
				<c:choose>
				<c:when test="${cc.custManagerId eq sal.usrId}">
					<option value="${sal.usrId }" selected="selected">${sal.usrName }</option>
				</c:when>
				<c:otherwise>
					<option value="${sal.usrId }">${sal.usrName }</option>
				</c:otherwise>
				</c:choose>
				</c:forEach>
				
			</select><span class="red_star">*</span>
		</td>
	</tr>	
	<tr>
		<th>客户等级</th>
		<td>
			<select id="custLevel">
				<option value="">全部</option>
				<c:forEach items="${licl }" var="cl">
				<c:choose >
				<c:when test="${cl.dictValue eq cc.custLevel}">
					<option value="${cl.dictValue }" selected="selected">${cl.dictItem }</option>
				</c:when>
				<c:otherwise>
					<option value="${cl.dictValue }">${cl.dictItem }</option>
				</c:otherwise>
				</c:choose>
				</c:forEach>
			</select><span class="red_star">*</span>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
	<tr>
		<th>客户满意度</th>
		<td>
			<select id="custSatisfy">
			<option value="">未指定</option>
			<option value="5">☆☆☆☆☆</option>
			<option value="4">☆☆☆☆</option>
			<option value="3">☆☆☆</option>
			<option value="2">☆☆</option>
			<option value="1">☆</option>
			</select><span class="red_star">*</span>
		</td>
		<th>客户信用度</th>
		<td>
			<select id="custCredit"><option value="">未指定</option>
					<option value="5">☆☆☆☆☆</option>
					<option value="4">☆☆☆☆</option>
					<option value="3">☆☆☆</option>
					<option value="2">☆☆</option>
					<option value="1">☆</option></select><span 

class="red_star">*</span>
		</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>地址</th>
		<td><input value="${cc.custAddr }" id="custAddr"/><span 

class="red_star">*</span>
		</td>
		<th>邮政编码</th>
		<td><input value="${cc.custZip }" name="T1" size="20" id="custZip"/><span 

class="red_star">*</span></td>
	</tr>
	<tr>
		<th>电话</th>
		<td>
			<input value="${cc.custTel }" name="T4" size="20" id="custTel"/><span 
class="red_star">*</span></td>
		<th>传真</th>
		<td>
			<input value="${cc.custFax }" name="T5" size="20"  id="custFax"/><span 
class="red_star">*</span>
		</td>
	</tr>	
	<tr>
		<th>网址</th>
		<td>
			<input value="${cc.custWebsite }" name="T6" size="20" id="custWebsite" /><span 

class="red_star">*</span>
		</td>
		<th>　</th>
		<td>　</td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table2">
	<tr>
		<th>营业执照注册号</th>
		<td><input value="${cc.custLicenceNo}" name="" size="20" id="custLicenceNo"/></td>
		<th>法人</th>
		<td><input value="${cc.custChieftain}" name="" size="20" id="custChieftain"/><span 

class="red_star">*</span>
		</td>
	</tr>
	<tr>
		<th>注册资金（万元）</th>
		<td>
			<input value="${cc.custBankroll}" name="T7" size="20" id="custBankroll"/> </td>
		<th>年营业额</th>
		<td>
			<input value="${cc.custTurnover}" name="T8" size="20" id="custTurnover"/>
		</td>
	</tr>	
	<tr>
		<th>开户银行</th>
		<td>
			<input value="${cc.custBank }" name="T9" size="20" id="custBank"/><span 

class="red_star">*</span>
		</td>
		<th>银行帐号</th>
		<td><input value="${cc.custBankAccount }" name="T10" size="20" id="custBankAccount"/><span 

class="red_star">*</span></td>
	</tr>
	<tr>
		<th>地税登记号</th>
		<td>
			<input value="${cc.custLocalTaxNo }" name="T11" size="20" id="custLocalTaxNo"/></td>
		<th>国税登记号</th>
		<td><input value="${cc.custNationalTaxNo }" name="T12" size="20" id="custNationalTaxNo"/></td>
	</tr>
</table>
<p></p>
</body>
<script type="text/javascript">
function savecust(){
	var custNo=$("#custNo").html();
	var custName=$("#custName").val();
	var custRegion=$("#custRegion").val();
	var custManagerId=$("#custManagerId").val();
	var custLevel=$("#custLevel").val();
	var custSatisfy=$("#custSatisfy").val();
	var	custCredit=$("#custCredit").val();
	var custAddr=$("#custAddr").val();
	var custZip=$("#custZip").val();
	var custTel=$("#custTel").val();
	var custFax=$("#custFax").val();
	var custWebsite=$("#custWebsite").val();
	var custLicenceNo=$("#custLicenceNo").val();
	var custChieftain=$("#custChieftain").val();
	var custBankroll=$("#custBankroll").val();
	var custTurnover=$("#custTurnover").val();
	var custBank=$("#custBank").val();
	
	var custBankAccount=$("#custBankAccount").val();
	var custLocalTaxNo=$("#custLocalTaxNo").val();
	var custNationalTaxNo=$("#custNationalTaxNo").val();
	$.post("updatecust.html",
	{
	"custNo":custNo,"custName":custName,"custRegion":custRegion,"custManagerId":custManagerId,"custLevel":custLevel,"custSatisfy":custSatisfy,"custCredit":custCredit,
	"custAddr":custAddr,"custZip":custZip,"custTel":custTel,"custFax":custFax,"custWebsite":custWebsite,"custLicenceNo":custLicenceNo,"custChieftain":custChieftain,"custBankroll":custBankroll,
	"custTurnover":custTurnover,"custBank":custBank,"custBankAccount":custBankAccount,"custLocalTaxNo":custLocalTaxNo,"custNationalTaxNo":custNationalTaxNo
	},
	function(res){
		if(res>0){
			alert("修改成功");
			window.location.href="findcustomer.html";
		}
	}
	)
}

$(function(){
	$("#custSatisfy option").each(function(){
		if($(this).val()=="${cc.custSatisfy}"){
			$(this).attr("selected","selected");
			return false;
		}
		
	});
	$("#custCredit option").each(function(){
		if($(this).val()=="${cc.custCredit}"){
			$(this).attr("selected","selected");
			return false;
		}
		
	});
});
</script>
</html>