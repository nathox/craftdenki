<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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


	<s:form action ="GoLoginAction">

		<s:submit value ="ログイン(login.jsp)"/>
	</s:form>


	<s:form action ="GoMyPageAction">
		<s:submit value="マイページへ"/>
	</s:form>



	<s:form action="GoCartAction" >
		<s:submit value="カート画面へ"/>
	</s:form>



	<s:form action="ProductListAction" >
		<s:submit value="商品一覧へ(productList.jsp)"/>
	</s:form>




	<s:form action="GoHelpAction" >
		<s:submit value="ヘルプ画面へ"/>
	</s:form>

	<s:form action ="LogoutAction">
		<s:submit value ="ログアウト(logout.jsp)"/>
	</s:form>







	<s:form method="post" action="ItemSearchAction">
		<select name="category">
			<option value="1" selected="selected">すべてのカテゴリー</option>
			<option value="2">本</option>
			<option value="3">家電・パソコン</option>
			<option value="4">おもちゃ・げーむ</option>
		</select>
		<s:textfield name="searchWord" maxlength="16"/>
		<s:submit value="検索"/>
	</s:form>



	<s:form action ="SettlementAction">
		<s:submit value ="決済画面へ(仮置き)"/>
	</s:form>




</body>
</html>