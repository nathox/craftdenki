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
	<title>UserInfoChangeConfirm画面</title>

	<style type="text/css">


	</style>

</head>
<body>

	<h3>下記内容でユーザー情報を変更します、よろしいですか？</h3>

	<s:form action="UserInfoChangeCompleteAction">

	<p>ユーザーID:					<s:property value="　　　　　　　"/></p>
	<p>パスワード：					<s:property value="session.t_password"/></p>
	<p>姓：								<s:property value=""/></p>
	<p>名：								<s:property value=""/></p>
	<p>姓かな：						<s:property value=""/></p>
	<p>名かな：						<s:property value=""/></p>
	<p>性別：							<s:property value=""/></p>
	<p>メールアドレス：			<s:property value=""/></p>
	<p>秘密の質問：					<s:property value=""/></p>
	<p>答え:								<s:property value=""/></p>
	<p>住所：							<s:property value=""/></p>
	<p>住所２：						<s:property value=""/></p>
	<p>住所３：						<s:property value=""/></p>
	<p>電話番号：						<s:property value=""/></p>
	<p>電話番号２						<s:property value=""/></p>
	<p>電話番号３						<s:property value=""/></p>

	</s:form>

</body>
</html>