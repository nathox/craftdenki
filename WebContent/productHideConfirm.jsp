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
<title>商品削除確認画面</title>

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
			<p>商品削除確認画面</p>
		</div>
		<div>
			<s:form action="ProductHideCompleteAction">
				<table>
					<tr>
						<th>商品ID</th>
						<th>商品名</th>
					</tr>
					<s:iterator value="productHideList">
						<tr>
							<td><s:property value="product_id"/><s:hidden name="product_id" value="%{product_id}"/></td>
							<td><s:property value="product_name"/></td>
						</tr>
					</s:iterator>
				</table>
				<p>以上の商品を削除してもよろしいですか？</p>
				<s:submit value="はい"/>
			</s:form>
			<input type="button" value="いいえ" onClick="history.back()">
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>