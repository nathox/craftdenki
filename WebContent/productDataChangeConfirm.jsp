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
<title>商品情報変更確認画面</title>

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
			<p>商品情報変更確認画面</p>
		</div>
		<div>
			<s:form action="ProductDataChangeCompleteAction" theme="simple">
						<div>

							<s:hidden name="id" value="%{id}"/>

							<br>新商品ID　　　　:　
							<s:property value="productId" />
							<s:hidden name="productId" value="%{productId}" />

							<br>
							<br>
							<br>商品名　　　　　:　
							<s:property value="productName" />
							<s:hidden name="productName" value="%{productName}" />

							<br>
							<br>
							<br>商品名かな　　　:　
							<s:property value="productNameKana" />
							<s:hidden name="productNameKana" value="%{productNameKana}" />

							<br>
							<br>
							<br> 商品詳細　　　　:　
							<s:property value="productDescription" />
							<s:hidden name="productDescription" value="%{productDescription}" />

							<br>
							<br>
							<br> カテゴリID　　　:　
							<s:if test="categoryId==1">
								本
							</s:if>
							<s:elseif test="categoryId==2">
								家電・パソコン
							</s:elseif>
							<s:else>
								おもちゃ・ゲーム
							</s:else>
							<s:hidden name="categoryId" value="%{categoryId}" />

							<br>
							<br>
							<br> 販売価格　　　　:　
							<s:property value="price" />
							<s:hidden name="price" value="%{price}" />

							<br>
							<br>
							<br> 発売年月　　　　:　
							<s:property value="releaseDate" />
							<s:hidden name="releaseDate" value="%{releaseDate}" />

							<br>
							<br>
							<br> 発売会社　　　　:　
							<s:property value="releaseCompany" />
							<s:hidden name="releaseCompany" value="%{releaseCompany}" />

							<br>
							<br>
							<br> 画像ファイル名　:　
							<s:property value="imageFileName" />
							<s:hidden name="imageFileName" value="%{imageFileName}" />

							<p>以上でよろしいですか？</p>
							<s:submit value="はい"/>
						</div>
			</s:form>
							<input type="button" value="いいえ" onClick="history.back()">
							<br>
						</div>

		</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>