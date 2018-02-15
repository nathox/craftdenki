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
<link href="css/userInfoChange.css" rel="stylesheet">
<script>
	$(function() {
		$.fn.autoKana('#familyName', '#familyNameKana');
		$.fn.autoKana('#firstName', '#firstNameKana');
	});
	$(function() {
		jQuery("#form_1").validationEngine();
	});
</script>

<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<meta charset="utf-8">
<title>新規登録</title>
</head>
<body>
<jsp:include page="home.jsp"/>
<s:form id="form_1" action="UserCreateConfirmAction">
<table>
	<tr>
		<th>ユーザーID<em>必須</em></th>
			<td><input type="text" name="loginUserId" value='<s:property value="loginUserId"/>' class="validate[required,minSize[6]]" /></td>
	</tr>
	<s:if test="errorMessage!=hoge">
	<s:property value="errorMessage" escape="false" />
	</s:if>

	<tr>
		<th>パスワード<em>必須</em></th>
			<td><input type="password" name="loginPassword" value='<s:property value="loginPassword"/>'class="validate[required,minSize[6],maxSize[16]]" /></td>
	</tr>
	<tr>
		<th>お名前<em>必須</em></th>
			<td><span style="margin-left:2em;"></span>氏：<input type="text" id="familyName" name="familyName" value='<s:property value="familyName"/>' class="validate[required]" />
				<span style="margin-left:2em;"></span>名：<input type="text" id="firstName" name="firstName" value='<s:property value="firstName"/>' class="validate[required]"/>
			</td>
	</tr>
	<tr>
		<th>ふりがな<em>必須</em></th>
			<td>氏かな：<input type="text" id="familyNameKana" name="familyNameKana" value='<s:property value="familyNameKana"/>' class="validate[required]" />
    			名かな：<input type="text" id="firstNameKana" name="firstNameKana" value='<s:property value="firstNameKana"/>' class="validate[required]"/>
    		</td>
    </tr>
    <tr>
    	<th>性別<em>必須</em></th>
    		<td>
			<s:if test="sex==0">
				<input type="radio" name="sex" value="0" checked class="validate[required]">男
    			<input type="radio" name="sex" value="1">女<br>
			</s:if>
			<s:elseif test="sex==1">
				<input type="radio" name="sex" value="0" class="validate[required]">男
    	 	<input type="radio" name="sex" value="1" checked>女<br>
			</s:elseif>
			<s:else>
				<input type="radio" name="sex" value="0" class="validate[required]">男
    			<input type="radio" name="sex" value="1">女<br>
			</s:else>
			</td>
	</tr>
	<tr>
		<th>メールアドレス<em>必須</em></th>
			<td><input type="email" name="mail"value='<s:property value="mail"/>' placeholder="info@example.com" class="validate[required]" /></td>
	</tr>
	<tr>
		<th>秘密の質問<em>必須</em></th>
			<td>
			<s:if test="secretQuestion==1">
				<select name="secretQuestion" id="secretQuestion" class="validate[required]">
					<option value="">選択してください</option>
					<option value="1" selected>嫌いな食べ物は？</option>
					<option value="2">母親の旧姓は？</option>
					<option value="3">好きな動物は？</option>
				</select>
			</s:if>
			<s:elseif test="secretQuestion==2">
				<select name="secretQuestion" id="secretQuestion" class="validate[required]">
					<option value="">選択してください</option>
					<option value="1" >嫌いな食べ物は？</option>
					<option value="2" selected>母親の旧姓は？</option>
					<option value="3">好きな動物は？</option>
			</select>
			</s:elseif>
			<s:elseif test="secretQuestion==3">
				<select name="secretQuestion" id="secretQuestion" class="validate[required]">
					<option value="">選択してください</option>
					<option value="1">嫌いな食べ物は？</option>
					<option value="2">母親の旧姓は？</option>
					<option value="3" selected>好きな動物は？</option>
				</select>
			</s:elseif>
			<s:else>
				<select name="secretQuestion" id="secretQuestion" class="validate[required]">
						<option value="">選択してください</option>
						<option value="1">嫌いな食べ物は？</option>
						<option value="2">母親の旧姓は？</option>
						<option value="3">好きな動物は？</option>
				</select>
			</s:else>
			</td>
	</tr>
	<tr>
		<th>答え<em>必須</em></th>
			<td><input type="text" name="secretAnswer"value='<s:property value="secretAnswer"/>' class="validate[required]"></td>
	</tr>
	<tr>
		<th>郵便番号</th>
			<td>〒<input type="text" name="yuubin" value='<s:property value="yuubin"/>' size="10" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','address','address');"></td>
	</tr>
	<tr>
		<th>住所<em>必須</em></th>
			<td><input type="text" name="address" value='<s:property value="address"/>' size="60" class="validate[required]"></td>
	</tr>
	<tr>
		<th>電話番号１<em>必須</em></th>
			<td><input type="text" name="tel" value='<s:property value="tel" />' class="validate[required]"></td>
	</tr>

</table>
		<s:submit value="登録" />
	</s:form>
<a href="login.jsp">戻る</a>
<jsp:include page="footer.jsp"/>
</body>
</html>