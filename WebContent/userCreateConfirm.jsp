<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="utf-8">
<title>確認画面</title>
</head>
<body>
<h3>登録する内容は以下でよろしいですか。</h3>
<s:form action="UserCreateCompleteAction">
ログインID:<s:property value="loginUserId" escape="false" /><br>
ログインPASS:<s:property value="loginPassword"/><br>
姓:<s:property value="familyName" /><br>
名:<s:property value="firstName" /><br>
姓(かな):<s:property value="familyNameKana" /><br>
名(かな):<s:property value="firstNameKana" /><br>
性別:<s:property value="sex" /><br>
メールアドレス:<s:property value="mail" /><br>
秘密の質問:<s:property value="secretQuestion" /><br>
答え:<s:property value="secretAnswer" /><br>
郵便番号:<s:property value="yuubin"/><br>
住所:<s:property value="address" /><br>
電話番号:<s:property value="tel" /><br>
<s:submit value="完了" />
</s:form>

</body>
</html>