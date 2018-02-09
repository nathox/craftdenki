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

	.errorColor{color:red;}

	</style>

	<script type="text/javascript">
		function nextField(i, n, m) {
 		if (i.value.length >= m) {
 	 	  i.form.elements[n].focus();
 		 }
		}
</script>

</head>
<body>

	<h3>ユーザー情報変更ページ</h3>
	<s:form action="UserInfoChangeConfirmAction">
	<div class="errorColor"><s:if test="errorMessage!=hoge">
		<s:property value="errorMessage"  escape="false" />
		</s:if>
	</div>
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





			<p>郵便番号:〒<input type="text" name="yuubin1" size="4" maxlength="3" onkeyup="nextField(this, 'yuubin4', 3)">-<input type="text" name="yuubin4" size="4" maxlength="4" onKeyUp="AjaxZip3.zip2addr('yuubin1','yuubin1-1','userAddress','userAddress');"></p>
			<p>住所：					<s:textfield name="userAddress" size="60" value="%{userAddress}"/></p>


			<p>郵便番号:〒<input type="text" name="yuubin2" size="4" maxlength="3" onkeyup="nextField(this, 'yuubin5', 3)">-<input type="text" name="yuubin5" size="4" maxlength="4" onKeyUp="AjaxZip3.zip2addr('yuubin2','yuubin2-1','userAddress2','userAddress2');"></p>
			<p>住所２：				<s:textfield name="userAddress2" size="60" value="%{userAddress2}"/></p>

			<p>郵便番号:〒<input type="text" name="yuubin3" size="4" maxlength="3" onkeyup="nextField(this, 'yuubin6', 3)">-<input type="text" name="yuubin6" size="4" maxlength="4" onKeyUp="AjaxZip3.zip2addr('yuubin3','yuubin3-1','userAddress3','userAddress3');"></p>
			<p>住所３：				<s:textfield name="userAddress3" size="60" value="%{userAddress3}"/></p>

			<p>電話番号：				<s:textfield name="telNumber" value="%{telNumber}"/></p>
			<p>電話番号２：			<s:textfield name="telNumber2" value="%{telNumber2}"/></p>
			<p>電話番号３：			<s:textfield name="telNumber3" value="%{telNumber3}"/></p>

			<s:submit value="確認"/>

		</s:iterator>
	</s:form>

	<a href="myPage.jsp">マイページ画面へ戻る</a>

	<%-- <p><input type="button" value="マイページ画面に戻る" onclick="history.back()" /></p>

	<p><s:submit value="マイページ画面に戻る" action="GoMyPageAction" method="execute"/></p>

	--%>

</body>
</html>