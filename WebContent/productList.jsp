<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" type="text/css" href="./css/productList.css">
<title>商品一覧画面</title>

<style type="text/css">
#productList {
	border: 1px solid #b1b1b1;
	border-collapse: collapse;
}
</style>

</head>
<body>

	<div class="ProductList">
		<h1>商品一覧</h1>

		<!-- 検索時のメッセージ(sano -->
		<s:if test="searchMessage != ''">
			<h3>
				<s:property value="searchMessage" escape="false" />
			</h3>
		</s:if>
		<ul id="productList">
			<s:iterator value="productList">
				<a href="<s:url action="ProductDetailsAction">
			 <s:param name="product_id" value="%{product_id}" />
			 <s:param name="item_stock" value="%{item_stock}" /> </s:url>">
                    <li>
                        <img class="image" src="<s:property value='image_file_path'/>" alt="" width="300" height="200">
					   <dl>
                            <dt class="text">
	                            商品名かな:
	                            <s:property value="product_name_kana" />
                            </dt>
                            <dt class="text">
	                            商品名:
	                            <s:property value="product_name" />
                            </dt>
	                            <dt class="price">
	                            価格:￥
	                            <s:property value="price" />
	                            円
                            </dt>
                            	<s:hidden name="product_id" value="%{product_id}" />
                        </dl>
                    </li>
				</a>
			</s:iterator>
		</ul>
	</div>


</body>
</html>