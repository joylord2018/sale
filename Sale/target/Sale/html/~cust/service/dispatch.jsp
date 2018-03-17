<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
</head>
<body>

<div class="page_title">客户服务管理 > 服务分配</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button>  
</div>
<table class="query_form_table" height="53">
	<tr>
		<th height="28">客户</th>
		<td><input /></td>
		<th height="28">概要</th>
		<td><input /></td>
		<th height="28">服务类型</th>
		<td>
			<select name="D1">
				<option>全部</option>
				<option>咨询</option>
				<option>建议</option>
				<option>投诉</option>
			</select>
		</td>
	</tr>
	<tr>
		<th height="22">创建日期</th>
		<td colspan="3">
			<input name="T2" size="10" /> - <input name="T1" size="10" /></td>
		<th height="22">状态</th>
		<td>
			<select name="D1">
				<option selected>新创建</option>
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
		<th>分配给</th>
		<th>操作</th>
	</tr>
	<tr>
		<td class="list_data_number">456</td>
		<td class="list_data_text">太阳药业</td>
		<td class="list_data_ltext">询问收音机订单运费承担方式</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D2">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">455</td>
		<td class="list_data_text">太阳药业</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D3">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">454</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D4">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">453</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		
		<td class="list_data_text">
			<select name="D5">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">452</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D6">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">451</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">投诉</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D7">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>	
	<tr>
		<td class="list_data_number" height="15">540</td>
		<td class="list_data_text" height="15">云南天河烟草公司</td>
		<td class="list_data_ltext" height="15">询问收音机价格</td>
		<td class="list_data_text" height="15">建议</td>
		<td class="list_data_text" height="15">小明</td>
		<td class="list_data_text" height="15">2007年12月02日</td>
		<td class="list_data_text" height="15">
			<select name="D8">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op" height="15">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>	
	<tr>
		<td class="list_data_number" height="35">439</td>
		<td class="list_data_text" height="35">云南天河烟草公司</td>
		<td class="list_data_ltext" height="35">询问收音机价格</td>
		<td class="list_data_text" height="35">咨询</td>
		<td class="list_data_text" height="35">小明</td>
		<td class="list_data_text" height="35">2007年12月02日</td>
		<td class="list_data_text" height="35">
			<select name="D9">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op" height="35">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">438</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D10">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<td class="list_data_number">437</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">
			<select name="D11">
				<option>请选择...</option>
				<option>小明</option>
				<option>旺财</option>
				<option>球球</option>
				<option>孙小美</option>
				<option>周洁轮</option>
			</select>
			<button class="common_button" onclick="reload();">分配</button>  
			
		</td>
		<td class="list_data_op">
						
			<img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../../images/bt_del.gif" class="op_button" />  
			
		</td>
	</tr>
	<tr>
		<th colspan="8" class="pager">
<div class="pager">
	共59条记录 每页<input value="10" size="2" />条
	第<input value="1" size="2"/>页/共5页
	<a href="#">第一页</a>
	<a href="#">上一页</a>
	<a href="#">下一页</a>
	<a href="#">最后一页</a>
	转到<input value="1" size="2" />页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
</html>
