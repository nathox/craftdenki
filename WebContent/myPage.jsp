<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>MyPage</title>

	<style type="text/css">

	</style>

	<link href="css/userInfoChange.css" rel="stylesheet">

</head>
<body>
	<!-- ヘッダー-->
	<jsp:include page="home.jsp" />

		<s:form action="PurchaseHistoryAction">
				<s:submit value="購入履歴" id="myPageButton1" />
		</s:form>

		<s:form action="FavoriteAction">
				<s:submit value="お気に入りリスト" id="myPageButton2"/>
		</s:form>

		<s:form action="UserInfoChangeAction">
				<s:submit value="ユーザー情報変更" id="myPageButton3"/>
		</s:form>

<%--
	<a href='<s:url action="StartAction"/>'>ホームへ戻る</a>
--%>

</body>
</html>