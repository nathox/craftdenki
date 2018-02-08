<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords"content=""/>
	<title>決済確認画面</title>

</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
		<p>決済確認画面</p>
		</div>

	<div>
		<s:form action="SettlementCompleteAction">
			<s:submit value="決済確認画面へ"/>
		</s:form>


		if(destination == "1"){
		user_address,tel_numberの表示


		if(destination == "2"){
		user_address2
	</div>

	</div>
</body>
</html>