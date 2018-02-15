<%@ page language="java" contentType="text/html; charset=UTF8"
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

<link href="css/craftdenki.css" rel="stylesheet">
<title>logout画面</title>

</head>
<body>
	<!-- ヘッダー-->
	<jsp:include page="home.jsp" />
	<div class="main">
		<div id="header">
			<div id="pr"></div>
		</div>
		<div id="main">
			<div id="top">
				<p>ログアウトしました。</p>
			</div>

			<div>
				<a href='<s:url action="StartAction" />'>Home画面に戻る</a>
			</div>


		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>