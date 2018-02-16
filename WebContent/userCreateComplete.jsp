<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="5;URL=/craftdenki">
<title>完了画面</title>
<link href="css/nakajima.css" rel="stylesheet">
<link href="craftdenki.css" rel="stylesheet">
</head>
<body>
<jsp:include page="home2.jsp"/>
	<div class="main">
	<ol class="stepBar">
<li class="visited"><span>1</span><br>必要事項の入力</li>
<li class="visited"><span>2</span><br>入力内容の確認</li>
<li class="visited"><span>3</span><br>登録完了</li>
</ol>
<h3>ユーザー登録完了</h3>
ユーザーの登録が完了しました。
5秒後にログイン画面に遷移します。
ジャンプしない場合は、以下のURLをクリックしてください。<br>
<a href="productList.jsp">移転先のページ</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>