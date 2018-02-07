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
<title>新商品登録確認画面</title>

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
			<p>新商品登録確認画面</p>
		</div>
		<div>
			<s:form action="ProductRegistCompleteAction" theme="simple">
						<div>

							<br>新商品ID　　　　:　
							<s:property value="newProductId" />
							<s:hidden name="newProductId" value="%{newProductId}" />

							<br>
							<br>
							<br>商品名　　　　　:　
							<s:property value="newProductName" />
							<s:hidden name="newProductName" value="%{familyNameKana}" />

							<br>
							<br>
							<br>商品名かな　　　:　
							<s:property value="newProductNameKana" />
							<s:hidden name="newProductNameKana" value="%{newProductNameKana}" />

							<br>
							<br>
							<br> 商品詳細　　　　:　
							<s:property value="newProductDescription" />
							<s:hidden name="newProductDescription" value="%{newProductDescription}" />

							<br>
							<br>
							<br> カテゴリID　　　:　
							<s:if test="newCategoryId==2">
								本
							</s:if>
							<s:elseif test="newCategoryId==3">
								家電・パソコン
							</s:elseif>
							<s:else>
								おもちゃ・ゲーム
							</s:else>
							<s:hidden name="newCategoryId" value="%{newCategoryId}" />

							<br>
							<br>
							<br> 販売価格　　　　:　
							<s:property value="newBuyPrice" />
							<s:hidden name="newBuyPrice" value="%{newBuyPrice}" />

							<br>
							<br>
							<br> 発売年月　　　　:　
							<s:property value="newReleaseDate" />
							<s:hidden name="newReleaseDate" value="%{newReleaseDate}" />

							<br>
							<br>
							<br> 発売会社　　　　:　
							<s:property value="newReleaseCompany" />
							<s:hidden name="newReleaseCompany" value="%{newReleaseCompany}" />

							<br>
							<br>
							<br> 画像ファイル名　:　
							<s:property value="newBuyPrice" />
							<s:hidden name="newBuyPrice" value="%{newBuyPrice}" />

							<p>以上でよろしいですか？</p>
							<s:submit value="はい"/>
						</div>
			</s:form>
						<div>
							<s:form action="ProductManageAction">
								<s:submit value="いいえ" />
							</s:form>
							<br>
						</div>

		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>