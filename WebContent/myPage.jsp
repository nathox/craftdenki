<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<title>MyPage</title>

	<link href="css/craftdenki.css" rel="stylesheet">
<%-- 	<link href="css/userInfoChange.css" rel="stylesheet"> --%>

</head>
<body>

	<jsp:include page="home2.jsp" />

	  <div class="main">
			                  <div class="wideBox">

		<h3>マイページ</h3>

		<s:form action="PurchaseHistoryAction">
				<s:submit value="購入履歴" class="myPageButton history"/>
		</s:form>


		<s:form action="FavoriteAction">
				<s:submit value="お気に入りリスト" class="myPageButton favorite"/>
		</s:form>


		<s:form action="UserInfoChangeAction">
				<s:submit value="ユーザー情報変更" class="myPageButton info"/>
		</s:form>

	<div class="clear"></div>

			               </div>
	 </div>

	    <jsp:include page="footer.jsp"/>

</body>
</html>