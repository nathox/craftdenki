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
<title>Home画面</title>

</head>
<body>

	<!-- とりあえずHome画面の雛形作っています好きなように変更してください -->

	<s:if test="session.trueID == null">
		<s:form action="GoLoginAction">
			<s:submit value="ログイン(login.jsp)" style="WIDTH:200px;color:red;" />
		</s:form>
	</s:if>
	<s:else>
		<s:form action="LogoutAction">
			<s:submit value="ログアウト(logout.jsp)" style="WIDTH:200px;color:magenta;" />
		</s:form>
	</s:else>


	<s:form action="GoMyPageAction">
		<s:submit value="マイページへ" style="WIDTH:200px;color:blue;" />
	</s:form>

	<s:form action="GoCartAction">
		<s:submit value="カート画面へ" style="WIDTH:200px;color:green;" />
	</s:form>

	<s:form action="ProductListAction">
		<s:submit value="商品一覧へ(productList.jsp)"
			style="WIDTH:200px;color:white;" />
	</s:form>

	<s:form action="GoHelpAction">
		<s:submit value="ヘルプ画面へ" style="WIDTH:200px;color:skyblue;" />
	</s:form>

	<s:form method="post" action="ItemSearchAction">
		<select name="category">
			<option value="0" selected="selected">すべてのカテゴリー</option>
			<option value="1">本</option>
			<option value="2">家電・パソコン</option>
			<option value="3">おもちゃ・げーむ</option>
		</select>
		<s:textfield name="searchWord" maxlength="16" />
		<s:submit value="検索" style="WIDTH:200px;color:orange" />
	</s:form>

	<s:form action="SettlementAction">
		<s:submit value="決済画面へ(仮置き)" style="WIDTH:200px;" />
	</s:form>


</body>
</html>