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
<title>売上画面</title>

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
			<p>売上画面</p>
		</div>
		<div>
			<s:form action="SalesManageAction">
			<p>検索</p>
			購入日:
			<s:select name="saleStartY" list="yearList" value="saleStartY"/>
			<s:select name="saleStartMD" list="monthDayList" value="saleStartMD"/>
			～
			<s:select name="saleEndY" list="yearList" value="saleEndY"/>
			<s:select name="saleEndMD" list="monthDayList" value="saleEndMD"/>
			<br>
			カテゴリ名:
			<s:select name="categoryId" list="categoryList" listValue="categoryName" listKey="categoryId" value="categoryId"/>
			<br>
			<s:submit value="検索"/><s:hidden name="searchFlg" value="true"/>
			</s:form>
		</div>
		<div>
			<table border="1">
					<tr>
						<th>購入日</th>
						<th>カテゴリ名</th>
						<th>商品ID</th>
						<th>商品名</th>
						<th>単価</th>
						<th>原価</th>
						<th>個数</th>
						<th>売上</th>
						<th>原価計</th>
						<th>利益</th>
					</tr>
					<s:iterator value="salesHistoryList">
						<tr>
							<td><s:property value="purchaseDate"/><s:hidden name="purchaseDate" value="%{purchaseDate}"/></td>
							<td><s:property value="categoryName"/><s:hidden name="categoryName" value="%{categoryName}"/></td>
							<td><s:property value="productId"/><s:hidden name="productId" value="%{productId}"/></td>
							<td><s:property value="productName"/><s:hidden name="productName" value="%{productName}"/></td>
							<td><s:property value="price"/>円<s:hidden name="price" value="%{price}"/></td>
							<td><s:property value="atCost"/>円<s:hidden name="atCost" value="%{atCost}"/></td>
							<td><s:property value="productCount"/>個<s:hidden name="productCount" value="%{productCount}"/></td>
							<td><s:property value="totalSales"/>円<s:hidden name="totalSales" value="%{totalSales}"/></td>
							<td><s:property value="totalCost"/>円<s:hidden name="totalCost" value="%{totalCost}"/></td>
							<td><s:property value="profit"/>円<s:hidden name="profit" value="%{profit}"/></td>
						</tr>
					</s:iterator>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>平均</td>
							<td>平均</td>
							<td>計</td>
							<td>計</td>
							<td>計</td>
							<td>計</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>${allAvgPrice}円</td>
							<td>${allAvgCost}円</td>
							<td>${allTotalCount}個</td>
							<td>${allTotalSales}円</td>
							<td>${allTotalCost}円</td>
							<td>${allTotalProfit}円</td>
						</tr>
			</table>
		</div>
	</div>

</body>
</html>