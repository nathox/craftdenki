<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/productList.css">
<title>商品詳細画面</title>


<script type="text/javascript">
	function goCartAction() {
		document.getElementById('form').action = "CartAction";
	}

	function goFavoriteAction() {
		document.getElementById('form').action = "FavoriteAction";
	}
</script>

</head>
<body>
<!-- ヘッダー-->
	<jsp:include page="home2.jsp" />
	<div class="main">

	<div class="DetailsList">
		<h3>商品詳細</h3>
		<s:iterator value="detailsList">
			<div class="detailsList">
				<div class="img">
					<img class="image" src="<s:property value='image_file_path'/>" alt="Photo" width="300" height="240">
				</div>
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
					<tr>
						<td class="nowrap">商品詳細</td>
						<td>:</td>
						<td><s:property value="product_description" /></td>
					</tr>
					<tr>
						<td class="nowrap">価格</td>
						<td>:</td>
						<td>￥<s:property value="price" />
						円</td>
					</tr>
					<tr>
						<td class="nowrap">発売日</td>
						<td>:</td>
						<td><s:property value="release_date" /></td>
					</tr>
					<tr>
						<td class="nowrap">販売会社</td>
						<td>:</td>
						<td><s:property value="release_company" /></td>
					</tr>
					<tr>
						<td class="nowrap">在庫</td>
						<td>:</td>
						<td><s:property value="item_stock" />
						個</td>
					</tr>
				</table>
			</div>
		</s:iterator>



		<s:form action="CartAction" id="form" name="form">

			<s:if test="item_stock > 0">

			購入個数
	  		<s:select name="product_count" list="stockList" />			★

				<input type="hidden" name="insertFlg" value="1" />
				<div class=button>
					<s:submit value=" カートに入れる" onclick="goCartAction();" >
					<s:hidden name="product_id" value="%{product_id}" />
					<s:hidden name="price" value="%{price}" />
					<s:hidden name="item_stock" value="%{item_stock}" />
					</s:submit>
				</div>

			</s:if>
			<s:else>
				<p>在庫がありません。</p>
			</s:else>
			<br>
			<%--非ログイン時は非表示 --%>
			<s:if test="#session.containsKey('trueID')">
				<div class="button">
					<s:submit value=" お気に入りリストに入れる" onclick="goFavoriteAction();">
						<s:hidden name="favoriteInsertFlg" value="1" />
					</s:submit>
				</div>
			</s:if>

		</s:form>
	</div>
	<%--
	<s:if test="reviewList.size != 0 ">
			<div id="reviewList">
				<h2>この商品のレビュー</h2>
				<s:iterator value="reviewList">
				<div class="box1">
					<div class="review">
						ユーザー名:
						<s:property value="user_id" />
					</div>
					<div class="review">
						レビュー:
						<s:property value="review_id" />
					</div>
					<div class="review">
						評価:
						<s:property value="evaluation_count" />
					</div>
					<div class="review">
						投稿日時:
						<s:property value="buy_item_date" />
					</div>
				</div>
				</s:iterator>
			</div>
			<br>
		</s:if>
		<s:else>
			<h2>レビューはありません。</h2>
			<br>
		</s:else> --%>
	</div>

 <jsp:include page="footer.jsp"/>
</body>
</html>