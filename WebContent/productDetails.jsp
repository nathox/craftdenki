<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>商品詳細画面</title>

<style type="text/css">
#productList{
border: 1px solid #b1b1b1;
border-collapse:collapse;
}


</style>

</head>
<body>



<div class="DetailsList">
	<h1>商品詳細</h1>
	<s:iterator value="detailsList">
		<div id="detailsList">
			商品名かな:<s:property value="product_name_kana" />
			商品名:<s:property value="product_name" />
			商品詳細:<s:property value="product_description" />
			カテゴリー:<s:property value="category_id" />
			価格:<s:property value="price" />
			発売日:<s:property value="release_date" />
			販売会社:<s:property value="release_company" />
			在庫:<s:property value="item_stock" />

			<img class="image" src="<s:property value='image_file_path'/>" >

		</div>
	</s:iterator>
</div>


</body>
</html>