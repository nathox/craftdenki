<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link href="css/craftdenki.css" rel="stylesheet">

<title>ログインID確認画面</title>

<style type="text/css">
.main{
	width:100%;
	text-align:center;
}
input{
	padding:5px 10px;
	border-radius:3px;
	margin-bottom:10px;
}
</style>
</head>

<body>
	<jsp:include page="home.jsp" />
	<div class="main">
	<s:form action="CheckUserIdAction">

		<label>ログインID：</label>
		<input type="text" name="userId" value="test"/><br>


		<s:submit value="確認"/>
	</s:form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>