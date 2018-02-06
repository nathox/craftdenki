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
		<div id="productList">
		<a href="<s:url action="ProductDetailsAction"></s:url>">
			商品名:<s:property value="product_name" />
			商品詳細:<s:property value="product_description" />
			カテゴリー:<s:property value="category_id" />
			価格:<s:property value="price" />
			発売日:<s:property value="release_date" />

			<img class="image" src="<s:property value='image_file_path'/>" >
			<input type="hidden" value="<s:property value='product_id'/>" name="product_id"/>

		</a>
		</div>
	</s:iterator>
</div>


</body>
</html>