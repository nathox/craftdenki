<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<title>MyPage</title>

	<link href="css/userInfoChange.css" rel="stylesheet">

</head>
<body>

	<jsp:include page="home2.jsp" />

	  <div class="main">
			<div class="wideBox">

		<s:form action="PurchaseHistoryAction">
				<s:submit value="購入履歴" id="myPageButton1" />
		</s:form>

		<s:form action="FavoriteAction">
				<s:submit value="お気に入りリスト" id="myPageButton2"/>
		</s:form>

		<s:form action="UserInfoChangeAction">
				<s:submit value="ユーザー情報変更" id="myPageButton3"/>
		</s:form>

			</div>
	 </div>

	    <jsp:include page="footer.jsp"/>

</body>
</html>