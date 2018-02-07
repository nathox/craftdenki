<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>商品一覧画面</title>

<style type="text/css">
#productList{
border: 1px solid #b1b1b1;
border-collapse:collapse;
}


</style>

</head>
<body>



<div class="ProductList">
	<h1>新着商品一覧</h1>


	<!-- 検索時のメッセージ(sano -->
	<s:if test="searchMessage != ''">
			<h3><s:property value="searchMessage" escape="false"/></h3>
	</s:if>



	<s:iterator value="productList">
		<a href="<s:url action="ProductDetailsAction">
		<s:param name="product_id" value="%{product_id}"/>
		<s:param name="product_name" value="%{product_name}"/>
		<s:param name="product_name_kana" value="%{product_name_kana}"/>
		<s:param name="product_description" value="%{product_description}"/>
		<s:param name="category_id" value="%{category_id}"/>
		<s:param name="price" value="%{price}"/>
		<s:param name="image_file_path" value="%image_file_path}"/>
		<s:param name="image_file_name" value="%{image_file_name}"/>
		<s:param name="release_date" value="%{release_date}"/>
		<s:param name="release_company" value="%{release_company}"/>
		<s:param name="status" value="%{status}"/>
		<s:param name="regist_date" value="%{regist_date}"/>
		<s:param name="update_date" value="%{update_date}"/>
		<s:param name="item_stock" value="%{item_stock}"/>
		</s:url>">
		<div id="productList">
			<div>商品名:<s:property value="product_name" /></div>
			<div>商品詳細:<s:property value="product_description" /></div>
			<div>価格:<s:property value="price" /></div>
			<div>発売日:<s:property value="release_date" /></div>

			<img class="image" src="<s:property value='image_file_path'/>" >
			<s:hidden name="product_id" value="%{product_id}"/>
		</div>
		</a>

	</s:iterator>
</div>


</body>
</html>