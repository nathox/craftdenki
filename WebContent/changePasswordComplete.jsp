<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link href="css/craftdenki.css" rel="stylesheet">

<title>Password変更完了画面</title>
</head>
<body>
	<jsp:include page="home.jsp" />
		<div><br>
			<h3>パスワードを変更しました。</h3>

			<div>
				<a href='<s:url action="GoLoginAction" />'>ログインへ</a>
			</div>
		</div>
</body>
</html>