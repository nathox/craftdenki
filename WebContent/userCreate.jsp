<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<meta charset="utf-8">
<title>新規登録</title>
</head>
<body>
<s:form action="UserCreateConfirmAction">
ログインID:<input type="text" name="loginUserId" value="" />
			<s:if test="errorMessage!=hoge">
		   	<s:property value="errorMessage" escape="false"/>
		   	</s:if><br>
ログインPASS:<input type="password" name="loginPassword" value="" /><br>
姓:<input type="text" id="familyName" name="familyName" value=""/><br>
名:<input type="text" id="firstName" name="firstName" value=""/><br>
姓(かな):<input type="text" id="familyNameKana" name="familyNameKana" value=""/><br>
名(かな):<input type="text" id="firstNameKana" name="firstNameKana" value=""/><br>
性別:<input type="radio" name="sex" value="0" checked>男
    <input type="radio" name="sex" value="1">女<br>
メールアドレス:<input type="email" name="mail" placeholder="info@example.com"/><br>
秘密の質問:<select name="secretQuestion" required>
			<option value="">選択してください</option>
			<option value="1">好きな動物は？</option>
			<option value="2">母親の旧姓は？</option>
			<option value="3">出身都道府県は？</option>
		</select>
答え:<input type="text" name="secretAnswer" value=""><br>
郵便番号(7桁):<input type="text" name="yuubin" size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','address','address');"><br>
住所:<input type="text" name="address" size="60"><br>
電話番号:<input type="text" name="tel" value="" required>
<s:submit value="登録"/>
</s:form>

</body>
</html>