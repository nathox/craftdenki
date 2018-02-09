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
		<h3>カートの情報一覧を今から持ってくる</h3>
	</div>





	<div>
			<h3><span>ユーザーID:</span><s:property value="session.userId"/></h3>
			<h3><span>名前:</span><s:property value="session.familyName"/><s:property value="session.firstName"/></h3>
			<h3><span>送り先住所:</span><s:property value="choseAddress" escape="false"/><span>電話番号:</span><s:property value="choseNumber" escape="false"/></h3>
	</div>




	<div>
		<s:form action="SettlementCompleteAction">
			<s:submit value="購入する"/>
		</s:form>



	</div>

	</div>
</body>
</html>