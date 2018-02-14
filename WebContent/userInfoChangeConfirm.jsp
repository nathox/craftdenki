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

<link href="css/userInfoChange.css" rel="stylesheet">

</head>
<body>

	<h3>下記内容でユーザー情報を変更します、よろしいですか？</h3>

	<s:form action="UserInfoChangeCompleteAction">

	<table>

			<tr>
			<th>ユーザーID</th>
						<td><s:property value="session.t_userId"/></td></tr>

			<tr>
			<th>新パスワード</th>
						<td><s:property value="session.t_password"/></td></tr>

			<tr>
			<th>お名前</th>
						<td><s:property value="session.t_familyName"/>
						<span style="margin-left:1em;" ></span>
						<s:property value="session.t_firstName"/></td></tr>

			<tr>
			<th>ふりがな</th>
						<td><s:property value="session.t_familyNameKana"/>
						<span style="margin-left:1em;" ></span>
						<s:property value="session.t_firstNameKana"/></td></tr>

			<tr>
			<th>性別</th>
						<td><s:if test="session.t_sex==0">男</s:if>
												<s:if test="session.t_sex==1">女</s:if></td></tr>

			<tr>
			<th>メールアドレス</th>
						<td><s:property value="session.t_email"/></td></tr>

			<tr>
			<th>秘密の質問</th>
						<td><s:if test="session.t_question==1">嫌いな食べ物は？</s:if>
								<s:if test="session.t_question==2">母親の旧姓は？</s:if>
								<s:if test="session.t_question==3">好きな動物は？</s:if></td></tr>

			<tr>
			<th>答え</th>
						<td><s:property value="session.t_answer"/></td></tr>

			<tr>
			<th>住所１</th>
						<td><s:property value="session.t_userAddress"/></td></tr>

			<tr>
			<th>住所２</th>
						<td><s:property value="session.t_userAddress2"/></td></tr>

			<tr>
			<th>住所３</th>
						<td><s:property value="session.t_userAddress3"/></td></tr>

			<tr>
			<th>電話番号１</th>
						<td><s:property value="session.t_telNumber"/></td></tr>

			<tr>
			<th>電話番号２</th>
						<td><s:property value="session.t_telNumber2"/></td></tr>

			<tr>
			<th>電話番号３</th>
						<td><s:property value="session.t_telNumber3"/></td></tr>

	</table>

			<br><s:submit value="変更する" id="userInfoCheck"/>

	</s:form>

				<p><input type="button" value="ユーザー情報変更画面に戻る" onclick="history.back()" /></p>

</body>
</html>