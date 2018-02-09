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
#detailseList{
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
			<div>商品名かな:<s:property value="product_name_kana" /></div>
			<div>商品名:<s:property value="product_name" /></div>
			<div>商品詳細:<s:property value="product_description" /></div>
			<div>価格:￥<s:property value="price" />円</div>
			<div>発売日:<s:property value="release_date" /></div>
			<div>販売会社:<s:property value="release_company" /></div>
			<div>在庫:<s:property value="item_stock" />個</div>

			<img class="image" src="<s:property value='image_file_path'/>" >

		</div>
	</s:iterator>

	<s:iterator value="reviewList">
		<div id="reviewList">
			<div>ユーザー名:<s:property value="user_id" /></div>
			<div>レビュー:<s:property value="review_id" /></div>
			<div>評価:<s:property value="evaluation_count" /></div>
			<div>投稿日時:<s:property value="review_date" /></div>
		</div>
	</s:iterator>


	<s:form action="CartAction">
		<s:if test="item_stock != 0">

			購入個数
	  		<s:select name="product_count" list="stockList"/>

	  		<s:hidden name="product_id" value="%{product_id}"/>
			<s:hidden name="price" value="%{price}"/>

			<input type="hidden" name="insertFlg" value="1"/>
	  		<div class=button><s:submit value=" カートに入れる " method="execute"/></div>

	  	</s:if>
 		<s:else>
	  		<p>在庫がありません。</p>
	  	</s:else>
	</s:form>

	<br>

	<s:form action="FavoriteAction">
		<s:param name="product_id" value="%{product_id}"/>
 		<div class=button><s:submit value=" お気に入りリストに入れる " method="execute"/></div>
	</s:form>

</div>


</body>
</html>