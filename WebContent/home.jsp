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
<link href="https://fonts.googleapis.com/css?family=Press+Start+2P"
	rel="stylesheet">
<link href="css/home.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery.validationEngine.js"></script>
<script src="js/jquery.validationEngine-ja.js"></script>
<script src="js/jquery.autoKana.js"></script>
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<link href="css/userInfoChange.css" rel="stylesheet">
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<script>
	$(function() {
		$.fn.autoKana('#familyName', '#familyNameKana');
		$.fn.autoKana('#firstName', '#firstNameKana');
	});
	$(function() {
		jQuery("#form_1").validationEngine();
	});
	function nextField(i, n, m) {
		if (i.value.length >= m) {
			i.form.elements[n].focus();
		}
	}
</script>
</head>
<body>
	<div class="a">
		<header>
			<div class="img">
				<a href='<s:url action="StartAction" />' class="title-color">
					<div class="title">CraftDenki</div>
				</a>

				<s:form method="post" action="ItemSearchAction" class="kensaku">
					<select name="category">
						<option value="0" selected="selected">すべてのカテゴリー</option>
						<option value="1">本</option>
						<option value="2">家電・パソコン</option>
						<option value="3">おもちゃ・げーむ</option>
					</select>
					<s:textfield name="searchWord" maxlength="16" />
					<s:submit value="検索" />
				</s:form>
			</div>

			<div class="bar">

				<s:if test="session.trueID == null">
					<s:if test="session.temp_user_id == null">
						<span><a href='<s:url action="GoLoginAction" />'>ログイン</a></span>
					</s:if>
				</s:if>

				<s:if test="session.trueID == null">
					<s:if test="session.temp_user_id != null">
						<span><a href='<s:url action="GoLoginAction" />'>ログイン</a></span>
					</s:if>
				</s:if>

				<s:if test="session.trueID != null">
					<s:if test="session.temp_user_id != null">
						<span><a href='<s:url action="LogoutAction" />'>ログアウト</a></span>
					</s:if>
				</s:if>

				<s:if test="session.trueID != null">
					<s:if test="session.temp_user_id == null">
						<span><a href='<s:url action="LogoutAction" />'>ログアウト</a></span>
					</s:if>
				</s:if>


				<span><a href='<s:url action="GoMyPageAction" />'>マイページ</a></span> <span><a
					href='<s:url action="CartAction" />'>カート</a></span> <span><a
					href='<s:url action="ProductListAction" />'>商品一覧</a></span>

			</div>

			<!--


</header>





    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



<footer>

        <div class="under">
            CraftDenki All right reserved.
        </div>
        <div class="guide">

            <ul>
                <li>お問い合わせ</li>
                <li>ヘルプ</li>
                <li>ご利用ガイド</li></ul>

    </div>


</footer>
-->

			<!-- とりあえずHome画面の雛形作っています好きなように変更してください -->
			<!--
	<s:if test="session.trueID == null">
		<s:form action="GoLoginAction">
			<s:submit value="ログイン(login.jsp)" style="WIDTH:200px;color:red;" />
		</s:form>
	</s:if>
	<s:else>
		<s:form action="LogoutAction">
			<s:submit value="ログアウト(logout.jsp)" style="WIDTH:200px;color:magenta;" />
		</s:form>
		<span>新規ユーザー登録は<a href='<s:url action="UserCreateAction" />'>こちら</a></span>
	</s:else>


	<s:form action="GoMyPageAction">
		<s:submit value="マイページへ" style="WIDTH:200px;color:blue;" />
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
	-->
	</div>
</body>
</html>