<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>商品変更画面</title>

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
</style>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>商品変更画面</p>
		</div>
		<div>
			<s:form action="ProductDataChangeConfirmAction">
				<span>商品ID</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="productId" value="<s:property value="productId"/>"/>
				</div>

				<span>商品名</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="productName" value="<s:property value="productName"/>"/>
				</div>

				<span>商品名かな</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="productNameKana" value="<s:property value="productNameKana"/>"/>
				</div>

				<span>商品詳細</span>
				<div>
					<input type="textfield" name="productDescription" value="<s:property value="productDescription"/>"/>
				</div>

				<span>カテゴリID</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="categoryId" value="<s:property value="categoryId"/>"/>
				</div>

				<span>販売価格</span>
				<span>必須</span>
				<div>
					<input type="textfield" name="price" value="<s:property value="price"/>"/>
				</div>

				<span>画像ファイル名</span>
				<div>
					<input type="textfield" name="imageFileName" value="<s:property value="imageFileName"/>"/>
				</div>

				<span>発売年月</span>
				<div>
					<input type="textfield" name="releaseDate" value="<s:property value=""releaseDate""/>"/>
				</div>

				<span>発売会社</span>
				<div>
					<input type="textfield" name="releaseCompany" value="<s:property value="releaseCompany"/>"/>
				</div>
			</s:form>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>