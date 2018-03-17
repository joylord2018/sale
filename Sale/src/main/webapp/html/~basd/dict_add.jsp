<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>jb-aptech毕业设计项目</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
<script type="text/javascript" src="../script/jquery.min.js"></script></head>
<style>
</style>
<body>

<div class="page_title">数据字典管理 > 新建数据字典条目</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="add('dict.jsp');">保存</button>  
</div>
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input readonly /></td>
		<th>类别</th>
		<td><input id="cname"/><span class="red_star">*</span><input id="dict_cname" type="hidden"><br />
	<div id="buquan" class="sn"></div>
	</td>
	</tr>
	<tr>
		<th>条目</th>
		<td><input /><span class="red_star">*</span></td>
		<th>值</th>
		<td><input /><span class="red_star">*</span></td>
	</tr>	
	<tr>
		<th>是否可编辑</th>
		<td><input type="checkbox" checked /></td>
		<th>&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
</table>
</body>
<script type="text/javascript">
function choose(str,cname){
	console.log(str);
	$("#dict_cname").val(str);
	$("#cname").val(cname);
	$("#buquan").hide()
	
}
	$(function(){
		$("#cname").keyup(function(){
			var cname=$("#cname").val();
			var reg = new RegExp("[\\u4E00-\\u9FFF]+","g");
			if(reg.test(cname)){
				//输入时中文时
				$.getJSON("dicbuquan.html",{"cname":cname},function(res){
					var arr=[];
					var type=[];
					$(res).each(function(){
					var index=$.inArray(this.dict_cname,arr);
						if(index<0){
							arr.push(this.dict_cname);
							type.push(this.dictType);
						}
					});
					var str="";
					for(var i=0;i<arr.length;i++){
						str+="<a href=javascript:choose('"+type[i]+"','"+arr[i]+"');>"+arr[i]+"</a></br>";
					}
					$("#buquan").html(str).show();
				});
			}
			
		});
	});
</script>
</html>
