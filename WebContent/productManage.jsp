<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>商品管理画面</title>

<style type="text/css">
	/* ========TAG LAYOUT======== */
	body{
		margin:0;
		padding:0;
		line-height:1.6;
		letter-spacing:1px;
		font-family:Verdana,Helvetica,sans-serif;
		font-size:12px;
		color:#333;
		background:#fff;
	}
	table{
		text-align:center;
		margin:0 auto;
	}
	/* ========ID LAYOUT========*/
	#top{
		width:780px;
		margin:30px auto;
		border:1px solid #333;
	}
	#header{
		width:100%;
		height:80px;
		background-color:black;
	}
	#main{
		width:100%;
		height:500px;
		text-align:center;
	}
	#footer{
		width:100%;
		height:80px;
		background-color: black;
		clear:both;
	}
	#text-link{
		display:inline-block;
		text-align:right;
	}
	#content{
		font-size:6px;
		line-height:0px;
	}
</style>


<script type="text/javascript">
    function goCheckSupplyAction(){
        document.getElementById('form').action="CheckSupplyAction";
    }

    function goProductHideConfirmAction(){
        document.getElementById('form').action="ProductHideConfirmAction";
    }
</script>

</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>商品管理画面</p>
		</div>
		<div>
			<h3>商品一覧</h3>
			<div>
				<s:iterator value="errorSupplyMessageList">
					<s:div>
						<s:property />
					</s:div>
				</s:iterator>
			</div>
			<s:form id="form" name="form">
				<table border="1">
					<tr>
						<th>ID</th>
						<th>商品名</th>
						<th>販売価格</th>
						<th>現在の単価</th>
						<th>在庫数</th>
						<th>仕入数</th>
						<th>仕入単価</th>
						<th>商品情報変更</th>
						<th>商品削除</th>
					</tr>
					<s:iterator value="productList">
						<tr>
							<td><s:property value="product_id"/><s:hidden name="product_id" value="%{product_id}"/></td>
							<td><s:property value="product_name"/><s:hidden name="product_name" value="%{product_name}"/></td>
							<td><s:property value="price"/><s:hidden name="price" value="%{price}"/></td>
							<td><s:property value="current_cost"/></td>
							<td><s:property value="item_stock"/><s:hidden name="item_stock" value="%{item_stock}"/></td>
							<td><s:textfield name="supply_count" value="0"/></td>
							<td><s:textfield name="supply_cost" value="0"/></td>
							<td><a href="<s:url action="ProductDataChangeAction">
								<s:param name="product_id" value="%{product_id}"/>
								</s:url>">変更画面へ</a>
							</td>
							<td><s:checkbox name="checkList" value="" fieldValue="%{product_id}" /> </td>
						</tr>
					</s:iterator>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><s:submit value="仕入" onclick="goCheckSupplyAction();"/></td>
							<td></td>
							<td><s:submit value="削除" onclick="goProductHideConfirmAction();"/></td>
						</tr>
				</table>
			</s:form>
			<div>
				<s:form action="ProductRestoreAction">
					<s:submit value="削除商品の復元"/>
				</s:form>
			</div>
			<h3>新商品登録</h3>
			<div>
				<s:iterator value="errorMessageList">
					<s:div>
						<s:property />
					</s:div>
				</s:iterator>
			</div>
			<s:form action="CheckProductRegistAction">
				<span>新商品ID</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="newProductId" value="<s:property value="newProductId"/>" placeholder="半角数字8桁 例)12345678"/>
				</div>

				<br>

				<span>商品名</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="newProductName" value="<s:property value="newProductName"/>" placeholder="例)除脂肪メソッド"/>
				</div>

				<br>

				<span>商品名かな</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="newProductNameKana" value="<s:property value="newProductNameKana"/>" placeholder="ひらがな 例)じょしぼうめそっど"/>
				</div>

				<br>

				<span>商品詳細</span>
				<div>
					<input type="textarea" name="newProductDescription" value="<s:property value="newProductDescription"/>" placeholder="例)岡田隆先生の著書。ダイエット・減量の入門書!!"/>
				</div>

				<br>

				<span>カテゴリID</span>
				<span>必須</span>
				<div>
					<select name="newCategoryId" value="<s:property value="newCategoryId"/>">
						<option value="">選択してください</option>
						<option value="1">本</option>
						<option value="2">家電・パソコン</option>
						<option value="3">おもちゃ・ゲーム</option>
					</select>
				</div>

				<br>

				<span>販売価格</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="newBuyPrice" value="<s:property value="newBuyPrice"/>" placeholder="半角数字 例)1300"/>

				</div>

				<br>

				<span>発売年月</span>
				<div>
					<input type="textfield" name="newReleaseDate" value="<s:property value="newReleaseDate"/>" placeholder="yyyy/MM 例)2018年2月は2017/02"/>

				</div>

				<br>

				<span>発売会社</span>
				<div>
					<input type="textfield" name="newReleaseCompany" value="<s:property value="newReleaseCompany"/>" placeholder="例)ベースボール・マガジン社"/>

				</div>

				<br>

				<span>画像ファイル名</span>
				<div>
					<input type="textfield" name="newProductImage" value="<s:property value="newProductImage"/>" placeholder="ファイル名.拡張子例)bazooka"/>

				</div>

				<br>
				<s:submit value="登録"/>
			</s:form>
		</div>
	</div>
</body>
</html>