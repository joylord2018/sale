<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <STYLE ID="JoustStyles" TYPE="text/css">
<!--
.menuItem {position:absolute; visibility:hidden; left:0px;}
.node { color: #FFF;
font-family : "宋体";
font-size : 13px;}
.node A:link { color: #FFF; text-decoration: none; }
.node A:visited { color: #FFF; text-decoration: none; }
.node A:active { color: #005BB7; text-decoration: none; }
.node A:hover { color: #FFF; text-decoration: none; }
.leaf { color: #FFF;
font-family : "宋体";
font-size : 13px;}
.leaf A:link { color: #FFF; text-decoration: none;}
.leaf A:visited { color: #FFF; text-decoration: none; }
.leaf A:active { color: #FFF; text-decoration: none; }
.leaf A:hover { color: #FFF; text-decoration: none; }
-->
</STYLE>


<script language="JavaScript">
<!--  
var theMenuRef = "parent.theMenu";
var theMenu = eval(theMenuRef);
var theBrowser = parent.theBrowser;
var belowMenu = null;
var menuStart = 0;

if (parent.theBrowser) {
if (parent.theBrowser.canOnError) {window.onerror = parent.defOnError;}
}

if (theMenu) {
theMenu.amBusy = true;
if (theBrowser.hasDHTML) {
if (document.layers) {
document.ids.menuTop.position = "absolute";
document.ids.menuBottom.position = "absolute";
document.ids.menuBottom.visibility = "hidden";
document.ids.statusMsgDiv.position = "absolute";
} else {
if (document.all) {
with (document.styleSheets["JoustStyles"]) {
addRule ("#menuTop", "position:absolute");
addRule ("#menuBottom", "position:absolute");
addRule ("#menuBottom", "visibility:hidden");
addRule ("#statusMsgDiv", "position:absolute");
}
}
}
}
}
function getDHTMLObj(objName) {
return eval('document' + theBrowser.DHTMLRange + '.' + objName + theBrowser.DHTMLStyleObj);
}
function getDHTMLObjHeight(objName) {
return eval('document' + theBrowser.DHTMLRange + '.' + objName + theBrowser.DHTMLDivHeight);
}
function getDHTMLObjTop(theObj) {return (theBrowser.code == "MSIE") ? theObj.pixelTop + 0 : theObj.top;}
function myVoid() { ; }
function setMenuHeight(theHeight) {
getDHTMLObj('menuBottom').top = theHeight;
}
function drawStatusMsg() {
if (document.layers) {
document.ids.statusMsgDiv.top = menuStart;
} else{
if (document.all) {
document.styleSheets["JoustStyles"].addRule ("#statusMsgDiv", "top:" + menuStart);
}
}
document.writeln('<DIV ID="statusMsgDiv"><CENTER>请稍等...</CENTER></DIV>');
}
function drawLimitMarker() {
var b = theBrowser;
if (theMenu && b.hasDHTML && b.needLM) {
var limitPos = theMenu.maxHeight + menuStart + getDHTMLObjHeight('menuBottom');
if (b.code == 'NS') {
document.ids.limitMarker.position = "absolute";
document.ids.limitMarker.visibility = "hidden";
document.ids.limitMarker.top = limitPos;
}
if (b.code == 'MSIE') {
with (document.styleSheets["JoustStyles"]) {
addRule ("#limitMarker", "position:absolute");
addRule ("#limitMarker", "visibility:hidden");
addRule ("#limitMarker", "top:" + limitPos + "px");
}
}
document.writeln('<DIV ID="limitMarker">&nbsp;</DIV>');
}
}
function setTop() {
if (theMenu && theBrowser.hasDHTML) {
if (getDHTMLObj('menuTop')) {
menuStart = getDHTMLObjHeight("menuTop");
drawStatusMsg();
} else {
theBrowser.hasDHTML = false;
}
}
}
function setBottom() {
if (theMenu) {
if (theBrowser.hasDHTML) {
drawLimitMarker();
getDHTMLObj("statusMsgDiv").visibility = 'hidden';
theMenu.refreshDHTML();
getDHTMLObj('menuBottom').visibility = 'visible';
}
theMenu.amBusy = false;
}
}
function frameResized() {if (theBrowser.hasDHTML) {theMenu.refreshDHTML();}}

// ############   End ############

/*所有文件名都不要改变，否则运行可能回出现问题，因为相互引用的地方非常多。*/

if (self.name != 'menu') { self.location.href = 'index2.jsp'; }
//-->
</script>
</HEAD>
<BODY LINK="#FFFFFF" marginwidth="1" marginheight="1" onResize="frameResized();" topmargin="0" leftmargin="0" bgcolor="#0066cc" text="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<DIV ID="menuTop">&nbsp;
</DIV>
<SCRIPT LANGUAGE="JavaScript">
<!--
setTop();
//-->
</SCRIPT>

<!--这些字体，�色等参�应用于后面的菜� -->
<FONT FACE="宋体" color="#FFF">

<SCRIPT LANGUAGE="JavaScript">
<!--
if (theMenu) {
parent.DrawMenu(theMenu);
}
//-->
</SCRIPT>

</FONT>

<DIV ID="menuBottom">
<!-- Place anything you want to appear after the menu between these DIV tags. -->
&nbsp;
</DIV>

<SCRIPT LANGUAGE="JavaScript">
<!--
setBottom();
//-->
</SCRIPT>

</BODY>
</HTML>
