<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-1.8.2.min.js"></script>
<script>

</script>

<meta charset="utf-8">
<title>確認画面</title>
</head>
<body>
<h3>登録する内容は以下でよろしいですか。</h3>

<s:form action="UserCreateCompleteAction" >
ログインID:<s:property value="loginUserId" /><br>
ログインPASS:<s:property value="loginPassCon"/><br>
姓:<s:property value="familyName" /><br>
名:<s:property value="firstName" /><br>
姓(かな):<s:property value="familyNameKana" /><br>
名(かな):<s:property value="firstNameKana" /><br>
性別:<s:if test="sex==0">男</s:if>
	 <s:if test="sex==1">女</s:if><br>
メールアドレス:<s:property value="mail" /><br>
秘密の質問:<s:if test="secretQuestion==1">嫌いな食べ物は？</s:if>
		   <s:if test="secretQuestion==2">母親の旧姓は？</s:if>
		   <s:if test="secretQuestion==3">好きな動物は？</s:if><br>
答え:<s:property value="secretAnswer" /><br>
郵便番号:<s:property value="yuubin"/><br>
住所:<s:property value="address" /><br>
電話番号:<s:property value="tel" /><br>
<s:submit value="完了"/>
</s:form>

<s:form action="UserCreateAction">
<input type="hidden" name="loginUserId" value="<s:property value="loginUserId" />"/>
<input type="hidden" name="loginPassword" value="<s:property value="loginPassword" />">
<input type="hidden" name="familyName" value="<s:property value="familyName" />">
<input type="hidden" name="firstName" value="<s:property value="firstName" />">
<input type="hidden" name="familyNameKana" value="<s:property value="familyNameKana" />">
<input type="hidden" name="firstNameKana" value="<s:property value="firstNameKana" />">
<input type="hidden" name="sex" value="<s:property value="sex" />">
<input type="hidden" name="mail" value="<s:property value="mail" />">
<input type="hidden" name="secretQuestion" value="<s:property value="secretQuestion" />">
<input type="hidden" name="secretAnswer" value="<s:property value="secretAnswer" />">
<input type="hidden" name="yuubin" value="<s:property value="yuubin" />">
<input type="hidden" name="address" value="<s:property value="address" />">
<input type="hidden" name="tel" value="<s:property value="tel" />">
<s:submit value="戻る"/>
</s:form>

</body>
</html>