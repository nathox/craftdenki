<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/craftdenki.css">
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>管理者Home画面</title>


</head>
<body>
	<div id="main">
		<div id="top">
			<p>管理者Home画面</p>
		</div>
		<div>
			<div>
				<p id="text-link"><a href='<s:url action="ProductManageAction"/>'>商品管理機能</a></p>
				<p id="content">商品の仕入、編集、削除、新規登録
			</div>
				<div>
				<p id="text-link"><a href='<s:url action="SalesManageAction"/>'>売上管理機能</a></p>
				<p id="content">売上の確認
			</div>
		</div>
	</div>

</body>
</html>