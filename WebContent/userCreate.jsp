<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery.validationEngine.js"></script>
<script src="js/jquery.validationEngine-ja.js"></script>
<script src="js/jquery.autoKana.js"></script>
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<script>
	$(function() {
		$.fn.autoKana('#familyName', '#familyNameKana');
		$.fn.autoKana('#firstName', '#firstNameKana');
	});
</script>
<script>
	$(function() {
		jQuery("#form_1").validationEngine();
	});
</script>

<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<meta charset="utf-8">
<title>新規登録</title>
</head>
<body>

	<br>
	<br>
	<s:form id="form_1" action="UserCreateConfirmAction">

ログインID:<input type="text" name="loginUserId" value='<s:property value="loginUserId"/>' class="validate[required,minSize[6]]" />
<s:if test="errorMessage!=hoge">
	<s:property value="errorMessage" escape="false" />
</s:if><br>
ログインPASS:<input type="password" name="loginPassword" value='<s:property value="loginPassword"/>'class="validate[required,minSize[6],maxSize[16]]" /><br>
姓:<input type="text" id="familyName" name="familyName" value='<s:property value="familyName"/>' required /><br>
名:<input type="text" id="firstName" name="firstName" value='<s:property value="firstName"/>' /><br>
姓(かな):<input type="text" id="familyNameKana" name="familyNameKana" value='<s:property value="familyNameKana"/>' /><br>
名(かな):<input type="text" id="firstNameKana" name="firstNameKana" value='<s:property value="firstNameKana"/>' /><br>
<s:if test="sex==0">
性別:<input type="radio" name="sex" value="0" checked class="validate[required]">男
    <input type="radio" name="sex" value="1">女<br>
</s:if>
<s:elseif test="sex==1">
性別:<input type="radio" name="sex" value="0" class="validate[required]">男
     <input type="radio" name="sex" value="1" checked>女<br>
</s:elseif>
<s:else>
性別:<input type="radio" name="sex" value="0" class="validate[required]">男
    <input type="radio" name="sex" value="1">女<br>
</s:else>
メールアドレス:<input type="email" name="mail"
			value='<s:property value="mail"/>' placeholder="info@example.com" class="validate[required]" />
		<br>
<s:if test="secretQuestion==1">
秘密の質問:<select name="secretQuestion" id="secretQuestion" class="validate[required]">
			<option value="">選択してください</option>
			<option value="1" selected>嫌いな食べ物は？</option>
			<option value="2">母親の旧姓は？</option>
			<option value="3">好きな動物は？</option>
		</select>
</s:if>
<s:elseif test="secretQuestion==2">
秘密の質問:<select name="secretQuestion" id="secretQuestion" class="validate[required]">
			<option value="">選択してください</option>
			<option value="1" >嫌いな食べ物は？</option>
			<option value="2" selected>母親の旧姓は？</option>
			<option value="3">好きな動物は？</option>
		</select>
</s:elseif>
<s:elseif test="secretQuestion==3">
秘密の質問:<select name="secretQuestion" id="secretQuestion" class="validate[required]">
			<option value="">選択してください</option>
			<option value="1">嫌いな食べ物は？</option>
			<option value="2">母親の旧姓は？</option>
			<option value="3" selected>好きな動物は？</option>
		</select>
</s:elseif>
<s:else>
秘密の質問:<select name="secretQuestion" id="secretQuestion" class="validate[required]">
			<option value="">選択してください</option>
			<option value="1">嫌いな食べ物は？</option>
			<option value="2">母親の旧姓は？</option>
			<option value="3">好きな動物は？</option>
		</select>
</s:else>

答え:<input type="text" name="secretAnswer"
			value='<s:property value="secretAnswer" class="validate[required]"/>'>
		<br>
郵便番号(7桁):<input type="text" name="yuubin"
			value='<s:property value="yuubin"/>' size="10" maxlength="8"
			onKeyUp="AjaxZip3.zip2addr(this,'','address','address');">
		<br>
住所:<input type="text" name="address"
			value='<s:property value="address"/>' size="60" class="validate[required]">
		<br>
電話番号:<input type="text" name="tel" value='<s:property value="tel" class="validate[required]"/>'
			required>
		<s:submit value="登録" />
	</s:form>
<a href="login.jsp">戻る</a>

</body>
</html>