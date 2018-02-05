<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品一覧画面</title>
</head>
<body>



<div class="ProductList">
	<h1>新着商品一覧</h1>
	<s:iterator value="productList">
		<div id="productList">
			<p>商品名:<s:property value="product_name" /></p>
			<p>商品詳細:<s:property value="product_description" /></p>
			<p>カテゴリー:<s:property value="category_id" /></p>
			<p>価格:<s:property value="price" /></p>
		</div>
	</s:iterator>

</div>



</body>
</html>