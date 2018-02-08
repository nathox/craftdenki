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
	<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
	<title>UserInfoChange画面</title>

	<style type="text/css">


	</style>
</head>
<body>

	<h3>ユーザー情報変更ページ</h3>
	<s:form action="UserInfoChangeConfirmAction">
		<s:iterator value="list_user_info">
			<p>ユーザーID：			<s:textfield readonly="true" name="userId"  value="%{userId}"/></p>
			<p>パスワード：			<s:password name="password" value="%{password}"/></p>
			<p>姓：						<s:textfield name="familyName" value="%{familyName}"/></p>
			<p>名：						<s:textfield name="firstName" value="%{firstName}"/></p>
			<p>姓かな：				<s:textfield name="familyNameKana" value="%{familyNameKana}"/></p>
			<p>名かな：				<s:textfield name="firstNameKana" value="%{firstNameKana}"/></p>
			<p>性別：					<s:radio list="#{0:'男', 1:'女'}" name="sex" value="sex"></s:radio></p>
			<p>メールアドレス：	<s:textfield name="email" value="%{email}"/></p>
			<p>秘密の質問：			<s:select list="#{1:'嫌いな食べ物は？',2:'母親の旧姓は？',3:'好きな動物は？'}" name="question" value="question"></s:select></p>
			<p>答え：						<s:textfield name="answer" value="%{answer}"/></p>

			<p>郵便番号(７桁):<input type="text" name="yuubin" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','userAddress','userAddress');"></p>
			<p>住所：					<s:textfield name="userAddress" size="60" value="%{userAddress}"/></p>

			<p>郵便番号(７桁):<input type="text" name="yuubin2" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','userAddress2','userAddress2');"></p>
			<p>住所２：				<s:textfield name="userAddress2" size="60" value="%{userAddress2}"/></p>

			<p>郵便番号(７桁):<input type="text" name="yuubin3" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','userAddress3','userAddress3');"></p>
			<p>住所３：				<s:textfield name="userAddress3" size="60" value="%{userAddress3}"/></p>

			<p>電話番号：				<s:textfield name="telNumber" value="%{telNumber}"/></p>
			<p>電話番号２：			<s:textfield name="telNumber2" value="%{telNumber2}"/></p>
			<p>電話番号３：			<s:textfield name="telNumber3" value="%{telNumber3}"/></p>

			<s:submit value="確認"/>

		</s:iterator>
	</s:form>

	<p><input type="button" value="マイページ画面に戻る" onclick="history.back()" /></p>

</body>
</html>