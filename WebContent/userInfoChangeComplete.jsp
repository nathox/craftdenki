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

	<meta http-equiv="refresh" content="5;URL=/craftdenki/myPage.jsp">

	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>UserInfoChangeComplete画面</title>

	<style type="text/css">


	</style>
</head>
<body>

   <jsp:include page="home.jsp"/>
           <div class="main">

	<h3>ユーザー情報を変更しました。５秒後に自動的にマイページ画面に切り替わります。</h3>

	自動で切り替わらない場合は<a href="myPage.jsp">こちら</a>


</div>
    <jsp:include page="footer.jsp"/>

</body>
</html>