<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/okamoto.css">
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>新商品登録完了画面</title>

</head>
<body class="back-image step4">
	<div class="main">
		<div id="m-title">
			<p>新商品登録完了画面</p>
		</div>
		<!-- メニューバー -->
			<jsp:include page="managerMenu.jsp" />
		<div class="m-log">
			<h3>新商品登録が完了しました</h3>
			<a href="/craftdenki/managerHome.jsp">管理者HOMEへ戻 る</a>
		</div>
	</div>
</body>
</html>