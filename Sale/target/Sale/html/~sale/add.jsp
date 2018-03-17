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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="../script/jquery.min.js"></script>
  <link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
</head>
<body>

<div class="page_title">d销售机会管理&nbsp; &gt; 新建销售机会</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="addchange();">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input readonly /></td>
		<th>机会来源</th>
		<td>
			<input name="T4" size="20" id="source"/></td>
	</tr>
	<tr>
		<th>客户名称</th>
		<td><input id="cname"/><span class="red_star" >*</span></td>
		<th>成功机率</th>
		<td><input id="rdata"/><span class="red_star" >*</span></td>
	</tr>	
	<tr>
		<th>概要</th>
		<td colspan="3"><input name="T0" size="52" id="tit"/><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>联系人</th>
		<td><input name="T21" size="20" id="lm"/></td>
		<th>联系人电话</th>
		<td><input name="T5" size="20" id="phone"/></td>
	</tr>
	<tr>
		<th>机会描述</th>
		<td colspan="3"><textarea rows="6" cols="50" name="S1" id="desc"></textarea><span class="red_star">*</span></td>
	</tr>
	<tr>
		<th>创建人</th>
		<td><input name="T19" value="${user.usrName}" readonly size="20" /><span class="red_star">*</span></td>
		<th>创建时间</th>
		<td><input id="t1" name="T15" readonly size="20" /><span class="red_star">*</span></td>
	</tr>
</table>
<br />
<table class="query_form_table" id="table1">
	<tr>
		<th>指派给</th>
		<td>
			<select name="D1" disabled="disabled">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select> <span class="red_star">*</span></td>
		<th>指派时间</th>
		<td>
			<input id="t2" name="T20" readonly size="20" disabled="disabled"/><span class="red_star">*</span></td>
	</tr>
</table>
<script>

	setCurTime('t1');
	setCurTime('t2');
	function addchange(){
		var chcSource=$("#source").val();
		var chcCustName=$("#cname").val();
		var chcTitle=$("#tit").val();
		var chcRate=$("#rdata").val();
		var chcLinkman=$("#lm").val();
		var chcTel=$("#phone").val();
		var chcDesc=$("#desc").val();
		var chcCreateId="${user.usrId}";
		var chcCreateDate=$("#t1").val();
		
		$.post("addsalchance.html",
		 {"chcSource":chcSource,"chcCustName":chcCustName,"chcTitle":chcTitle,"chcRate":chcRate,"chcLinkman":chcLinkman,"chcTel":chcTel,"chcDesc":chcDesc,"chcCreateId":chcCreateId},
		function(res){
			console.log(res);
			 if(res>0){
				var goon=confirm("添加成功!是否继续添加？");
				if(goon){
					location.reload();
				}else{
					window.location.href="findsalchance.html";
				}
			} 
		});
	}
</script>
</body>
</html>
