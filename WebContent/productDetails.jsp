<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>商品詳細画面</title>

<style type="text/css">
#detailsList {
	border: 1px solid #b1b1b1;
	border-collapse: collapse;
}

#reviewList {
	border: 1px solid #b1b1b1;
	border-collapse: collapse;
	text-align:center;
	width:60%;
	margin-left:auto;
	margin-right:auto;
	margin-top:30px;
}

h1,h2{
text-align:center;
}

.DetailsList{
text-align:center;
width:40%;
margin-left:auto;
margin-right:auto;
}


.img{

width:auto;
margin-left:auto;
margin-right:auto;
margin-top:30px;
margin-bottom:30px;
}

.list{
margin:0;
padding:0;
text-align:left;
margin-right:auto;
border-bottom: 1px solid #b1b1b1;
border-collapse: collapse;
}

.box1{

width:60%;
margin-left:auto;
margin-right:auto;
margin-top:30px;
margin-bottom:30px;
}



</style>
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
	<jsp:include page="home.jsp" />

	<div class="DetailsList">
		<h1>商品詳細</h1>
		<s:iterator value="detailsList">
			<div id="detailsList">
			<div class="img">
				<img class="image" src="<s:property value='image_file_path'/>" alt="Photo" width="300" height="240">
			</div>
			<div class="box1">
				<div class="list">
					商品名かな:
					<s:property value="product_name_kana" />
				</div>
				<div class="list">
					商品名:
					<s:property value="product_name" />
				</div>
				<div class="list">
					商品詳細:
					<s:property value="product_description" />
				</div>
				<div class="list">
					価格:￥
					<s:property value="price" />
					円
				</div>
				<div class="list">
					発売日:
					<s:property value="release_date" />
				</div>
				<div class="list">
					販売会社:
					<s:property value="release_company" />
				</div>
				<div class="list">
					在庫:
					<s:property value="item_stock" />
					個
				</div>
			</div>
		</div>
		</s:iterator>



		<s:form action="CartAction" id="form" name="form">
			<s:if test="item_stock != 0">

			購入個数
	  		<s:select name="product_count" list="stockList" />			★

	  		<s:hidden name="product_id" value="%{product_id}" />
				<s:hidden name="price" value="%{price}" />

				<input type="hidden" name="insertFlg" value="1" />
				<div class=button>
					<s:submit value=" カートに入れる" onclick="goCartAction();" />
				</div>

			</s:if>
			<s:else>
				<p>在庫がありません。</p>
			</s:else>
			<br>
			<s:if test="#session.containsKey('trueID')">


				<div class=button>
					<s:submit value=" お気に入りリストに入れる" onclick="goFavoriteAction();">
						<s:hidden name="productid" value="%{product_id}" />
						<s:hidden name="favoriteInsertFlg" value="1" />
					</s:submit>
				</div>
			</s:if>
		</s:form>
	</div>
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
		</s:else>

 <jsp:include page="footer.jsp"/>
</body>
</html>