<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/jquery.validationEngine.js"></script>
	<script src="js/jquery.validationEngine-ja.js"></script>
	<link rel="stylesheet" href="css/validationEngine.jquery.css">
	<link href="css/craftdenki.css" rel="stylesheet">

	<script>
	$(function() {
		jQuery("#form_1").validationEngine();
	});
</script>

<title>changePassword画面</title>
</head>
<body>
<jsp:include page="home.jsp" />
<br><br><br><br><br><br>
	<s:property value="errorMessage" escape="false" />
		<s:form id="form_1" action="ChangePasswordConfirmAction">

<label>秘密の質問:</label>

<s:property value="questionMessage" /><br>
答え:<input type="text" name="answer" value="" class="validate[required]" >
ログインPASS (パスワード):<input type="password" name="password" id="pass" value=""
		class="validate[required,minSize[1],maxSize[16],custom[onlyLetterNumber]]" /><br>
確認用:<input type="password" name="checkPassword" id="pass2" value="" class="validate[required,minSize[1],maxSize[16],custom[onlyLetterNumber],equals[pass]]" />


<s:submit value="変更"/>
</s:form>

</body>
</html>