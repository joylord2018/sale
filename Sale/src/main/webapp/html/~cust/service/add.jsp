<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../../css/style.css" rel="stylesheet" type="text/css">
	<script src="../../script/common.js"></script>
	<script type="text/javascript" src="../../script/jquery.min.js"></script>
</head>
<body>

<div class="page_title">客户服务管理 > 服务创建</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="addcs(${user.usrId});">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input disabled /></td>
		<th>服务类型</th>
		<td>
			<select id="svrType">
				
			</select><span class="red_star">*</span>
		</td>
	</tr>
	<tr>
		<th>概要</th>
		<td colspan="3"><input size="53" id="svrTitle"/>
		
		<span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>客户</th>
		<td><div style="position: relative;">
		<input name="T20" size="20" id="customer"/><span class="red_star">*</span>
			<div id="showname" class="sn"></div>
		</div>
		<input type="hidden" value="" id="svrCustNo">
		</td>
		<th>状态</th>
		<input type="hidden" value="1" id="svrStatus">
		<td>新创建</td>
	</tr>	
	<tr>
		<th>服务请求</th>
		<td colspan="3"><textarea rows="6" cols="50" id="svrRequest"></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td><input name="T19" value="${user.usrName }" readonly size="20" /><span class="red_star">*</span></td>
		<th>创建时间</th>
		<td><input id="t1" name="T15" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
	</table>
<br />
<script>
	setCurTime('t1');
	function addcid(cid,cname){
		$("#showname").hide();
		$("#customer").val(cname);
		$("#svrCustNo").val(cid);
	}
$(function(){
	$.getJSON("findoption.html",function(res){
		//服务类型
		var svrtype="<option value=''>请选择...</option>";
		$(res.svr_type).each(function(){
			svrtype+="<option value='"+this.dictValue+"'>"+this.dictItem+"</option>";
		});
		$("#svrType").html(svrtype);
		//处理人
		var svrdueid="<option value=''>请选择...</option>";
		$(res.salers).each(function(){
			svrdueid+="<option value='"+this.usrId+"'>"+this.usrName+"</option>";
		});
		$("#svrDueId").html(svrdueid);
	});
	//客户自动补全功能
	$("#customer").keyup(function(){
			var name=$("#customer").val();
			if(name==""){
				return false;
			}
			$.getJSON("../cust/buquan.html",{"name":name},function(res){
				var str;
				if(res!="[]"){
					 var str="";
					$(res).each(function(){
						str+="<a href=javascript:addcid('"+this.custNo+"','"+this.custName+"');>"+this.custName+"</a></br>";
					});
					$("#showname").html(str).show();	
				}
			});
		});
});
function addcs(uid){
	var svrType=$("#svrType").val();
	var svrTitle=$("#svrTitle").val();
	var svrCustNo=$("#svrCustNo").val();
	var svrStatus=$("#svrStatus").val();
	var svrRequest=$("#svrRequest").val();
	var svrCreateId=uid;
	$.post("addcs.html",
	{"svrType":svrType,"svrTitle":svrTitle,"svrCustNo":svrCustNo,"svrStatus":svrStatus,"svrRequest":svrRequest,"svrCreateId":svrCreateId},
	function(res) {
		console.log(res);
		if(res>0){
			alert("创建服务成功");
			window.location.href="findcsli.html?status=1";
		}
	}
	)
}
</script>
</body>
</html>