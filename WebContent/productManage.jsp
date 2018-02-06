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
			<h3>仕入</h3>
			<s:form action="SupplyConfirmAction">
				<table border="1">
					<tr>
						<th>ID</th>
						<th>商品名</th>
						<th>販売価格</th>
						<th>在庫数</th>
						<th>仕入入力欄</th>
					</tr>
					<s:iterator value="productList">
						<tr>
							<td><s:property value="product_id"/><s:hidden name="product_id" value="%{product_id}"/></td>
							<td><s:property value="product_name"/><s:hidden name="product_name" value="%{product_name}"/></td>
							<td><s:property value="price"/><s:hidden name="price" value="%{price}"/></td>
							<td><s:property value="item_stock"/><s:hidden name="item_stock" value="%{item_stock}"/></td>
							<td><s:textfield name="supplycount" value="0"/></td>
						</tr>
					</s:iterator>
				</table>
				<s:submit value="仕入"/>
			</s:form>
			<h3>新商品登録</h3>
			<s:form action="ProductRegistCompleteAction">
				<tr>
					<td>
						<label>新商品ID:</label>
					</td>
					<td>
						<input type="text" name="newProductId" value="" />
						半角数字8桁
						<br>
					</td>
				</tr>
				<tr>
					<td>
						<label>商品名:</label>
					</td>
					<td>
						<input type="text" name="newProductName" value=""/><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>商品名かな:</label>
					</td>
					<td>
						<input type="text" name="newProductNameKana" value=""/><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>商品詳細:</label>
					</td>
					<td>
						<input type="text" name="newProductDescription" value=""/><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>カテゴリID:</label>
					</td>
					<td>
						<select name="newCategoryId" required>
							<option value="">選択してください</option>
							<option value="1">本</option>
							<option value="2">家電・パソコン</option>
							<option value="3">おもちゃ・ゲーム</option>
						</select><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>販売価格:</label>
					</td>
					<td>
						<input type="text" name="newBuyPrice" value=""/><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>発売年月:</label>
					</td>
					<td>
						<input type="text" name="newReleaseDate" value=""/><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>発売会社:</label>
					</td>
					<td>
						<input type="text" name="newReleaseCompany" value=""/><br>
					</td>
				</tr>
				<tr>
					<td>
						<label>画像ファイル名:</label>
					</td>
					<td>
						<input type="text" name="newProductImage" value=""/>
						ファイル名.拡張子 例)title.jpg
						<br>
					</td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
		</div>
	</div>
</body>
</html>