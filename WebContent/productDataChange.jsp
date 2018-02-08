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
			<s:iterator value="errorMessageList">
				<s:div>
					<s:property />
				</s:div>
			</s:iterator>
		</div>
		<div>
			<s:form action="CheckProductChangeAction">
				<span>商品ID</span>
				<span>必須</span>
				<div>
					<s:textfield name="product_id" value="%{product_id}" placeholder="半角数字8桁 例)12345678"/>
				</div>

				<span>商品名</span>
				<span>必須</span>
				<div>
					<s:textfield name="product_name" value="%{product_name}" placeholder="半角数字8桁 例)12345678"/>
				</div>

				<span>商品名かな</span>
				<span>必須</span>
				<div>
					<s:textfield name="product_name_kana" value="%{product_name_kana}" placeholder="ひらがな 例)じょしぼうめそっど"/>
				</div>

				<span>商品詳細</span>
				<div>
					<s:textfield name="product_description" value="%{product_description}" placeholder="例)岡田隆先生の著書。ダイエット・減量の入門書!!"/>
				</div>

				<span>カテゴリID</span>
				<span>必須</span>
				<div>
					<s:select name="category_id" list="categoryList" listValue="categoryName" listKey="categoryId" value="category_id">
					</s:select>
				</div>

				<span>販売価格</span>
				<span>必須</span>
				<div>
					<s:textfield name="price" value="%{price}" placeholder="半角数字 例)1300"/>
				</div>

				<span>画像ファイル名</span>
				<div>
					<s:textfield name="image_file_name" value="%{image_file_name}" placeholder="ファイル名.拡張子例)bazooka"/>
				</div>

				<span>発売年月</span>
				<div>
					<s:textfield name="release_date" value="%{release_date}" placeholder="yyyy/MM 例)2018年2月は2017/02"/>
				</div>

				<span>発売会社</span>
				<div>
					<s:textfield name="release_company" value="%{release_company}" placeholder="例)ベースボール・マガジン社"/>
				</div>

				<s:submit value="登録"/>
			</s:form>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>