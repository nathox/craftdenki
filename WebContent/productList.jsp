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



</head>
<body>
<!-- ヘッダー-->
	<jsp:include page="home2.jsp" />

<div class="main">
	<div class="ProductList">
		<h3>商品一覧</h3>

		<!-- 検索時のメッセージ(sano -->
		<s:if test="searchMessage != ''">
			<h1>
				<s:property value="searchMessage" escape="false" />
			</h1>
		</s:if>
		<ul  class="thumbnail clearFix">


		<!-- 表示件数1ページ目 -->

			<s:iterator value="productList" begin="0" end="50">
				<a href="<s:url action="ProductDetailsAction">
			 <s:param name="product_id" value="%{product_id}" />
			 <s:param name="item_stock" value="%{item_stock}" /> </s:url>">
                    <li class="list1">
					   <dl>
					   		<dt>
					   			<img class="image" src="<s:property value='image_file_path'/>" alt="Photo" width="250" height="200">
					   		</dt>
					   		<table class="detailsTable">
					   			<tr>
		                            <td class="nowrap">商品名かな</td>
		                            <td>:</td>
		                            <td><s:property value="product_name_kana" /></td>
	                            </tr>
	                            <tr>
		                            <td class="nowrap">商品名</td>
		                            <td>:</td>
	                            	<td><s:property value="product_name" /></td>
                            	</tr>
		                            <td class="nowrap">価格</td>
		                            <td>:</td>
		                            <td>￥<s:property value="price" />円</td>
	                            </tr>
                            </table>
                            	<s:hidden name="product_id" value="%{product_id}" />
                        </dl>
                    </li>
				</a>
			</s:iterator>




		</ul>
	</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>