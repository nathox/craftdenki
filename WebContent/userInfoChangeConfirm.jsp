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

	<p>ユーザーID:					<s:property value="session.t_userId"/></p>
	<p>パスワード：					<s:property value="session.t_password"/></p>
	<p>姓：								<s:property value="session.t_familyName"/></p>
	<p>名：								<s:property value="session.t_firstName"/></p>
	<p>姓かな：						<s:property value="session.t_familyNameKana"/></p>
	<p>名かな：						<s:property value="session.t_firstNameKana"/></p>
	<p>性別：							<s:if test="session.t_sex==0">男</s:if>
												<s:if test="session.t_sex==1">女</s:if></p>
	<p>メールアドレス：			<s:property value="session.t_email"/></p>
	<p>秘密の質問：					<s:if test="session.t_question==1">嫌いな食べ物は？</s:if>
		   										<s:if test="session.t_question==2">母親の旧姓は？</s:if>
		   										<s:if test="session.t_question==3">好きな動物は？</s:if></p>
	<p>答え:								<s:property value="session.t_answer"/></p>
	<p>住所：							<s:property value="session.t_userAddress"/></p>
	<p>住所２：						<s:property value="session.t_userAddress2"/></p>
	<p>住所３：						<s:property value="session.t_userAddress3"/></p>
	<p>電話番号：						<s:property value="session.t_telNumber"/></p>
	<p>電話番号２						<s:property value="session.t_telNumber2"/></p>
	<p>電話番号３						<s:property value="session.t_telNumber3"/></p>

	<p><s:submit value="変更する"/></p>

	</s:form>

	<p><input type="button" value="ユーザー情報変更画面に戻る" onclick="history.back()" /></p>

</body>
</html>