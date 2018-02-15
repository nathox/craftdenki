<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  <meta http-equiv="refresh" content="5;URL=/craftdenki">-->
<title>完了画面</title>
<link href="css/userInfoChange.css" rel="stylesheet">
</head>
<body>
<jsp:include page="home.jsp"/>
	<div class="main">

		<s:form action="PurchaseHistoryAction">
				<s:submit value="購入履歴" id="myPageButton1" />
		</s:form>

		<s:form action="FavoriteAction">
				<s:submit value="お気に入りリスト" id="myPageButton2"/>
		</s:form>

		<s:form action="UserInfoChangeAction">
				<s:submit value="ユーザー情報変更" id="myPageButton3"/>
		</s:form>
ユーザーの登録が完了しました。<br>
5秒後にログイン画面に遷移します。<br>
ジャンプしない場合は、以下のURLをクリックしてください。<br>
<a href="productList.jsp">移転先のページ</a>
<jsp:include page="footer.jsp"/>
</body>
</html>