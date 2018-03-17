function reload(){
	window.location.reload();
}
function help(msg){
	alert('欢迎使用'+msg);
}

function to(url){
	window.location.href=url;
}
function back(){
	history.go(-1);
}
function save(url){
	alert('保存成功');
	to(url);
}
function add(url){
	alert('新建成功');
	to(url);
}
function del(msg){
	if (window.confirm("确定要删除"+msg+"吗？")){
		reload();
	}
}
function setCurTime(oid){
	var now=new Date();
	console.log(1);
	var year=now.getFullYear();
	var month=now.getMonth();
	var day=now.getDate();
	var hours=now.getHours();
	var minutes=now.getMinutes();
	var seconds=now.getSeconds();
	var timeString = year+"-"+((month+1)>9?(month+1):("0"+(month+1)))+"-"+(day>9?day:("0"+day))+" "+(hours>9?hours:("0"+hours))+":"+(minutes>9?minutes:("0"+minutes))+":"+(seconds>9?seconds:("0"+seconds));
	var oCtl = document.getElementById(oid);
	oCtl.value = timeString;
}