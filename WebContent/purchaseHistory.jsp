<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/craftdenki.css">
<link rel="stylesheet" href="./css/purchaseHistory.css">

<script type="text/javascript">
	function goPurchaseHistoryAction() {
		document.getElementById('form').action = "PurchaseHistoryAction";
	}
	function goReview1Action() {
		document.getElementById('form').action = "Review1Action";
	}
</script>

<title>購入履歴</title>
</head>
<body>
<jsp:include page="home.jsp" />
	<div class="main">
	<h1>購入商品一覧</h1>
	<!-- purchaseHistoryListの中身が0の場合、購入履歴は無し -->
	<s:if test="purchaseHistoryList.size()==0">
		<h2>購入履歴はありません。</h2>
	</s:if>
	<!-- purchaseHistoryListの中身が0の場合、購入履歴は無し -->
	<s:if test="purchaseHistoryList.size() > 0">
		<a>購入情報は以下になります。</a>
		<s:form id="form" name="form" action="PurchaseHistoryAction">
			<table>
				<s:iterator value="purchaseHistoryList">
				<div class="check">
					<s:checkbox name="checkList" value="checked" fieldValue="%{id}" />
				</div>
				<div class="box1">
					<!-- <ul class="okada"> -->
					<!-- <div class="ayame"> -->
					<ul>
						<li><div class="iFP"><img src="<s:property value='imageFilePath'/>" width="auto" height="200px"></div></li>
						<s:hidden name="imageFilePath" value='<s:property value="imageFilePath"/>' />
						<li>商品名:<span><s:property value="productName" /></span></li>
						<s:hidden name="productName" value="%{productName}" />
						<li>ふりがな:<span><s:property value="productNameKana" /></span></li>
						<s:hidden name="productNameKana" value="%{productNameKana}" />
						<li>金額:<span><s:property value="price" />円</span></li>
						<s:hidden name="price" value="%{price}" />
						<li>個数:<span><s:property value="count" />個</span></li>
						<s:hidden name="count" value="%{count}" />
						<li>発売会社名:<s:property value="releaseCompany" /></li>
						<s:hidden name="releaseCompany" value="%{releaseCompany}" />
						<li>発売年月日:<s:property value="releaseDate" /></li>
						<s:hidden name="releaseDate" value="%{releaseDate}" />
					</ul>
					</div>
					<!--
					<div class="review">
						<p><a href='<s:url action="Review1Action"/>'>レビュー</a></p>
					</div>
					-->
					<s:submit onclick="goReview1Action();" value="レビュー"/>
				</s:iterator>
			</table>
			<s:hidden name="deleteFlg" value="1"/>
			<s:submit onclick="goPurchaseHistoryAction();" value="削除"/>

			<!-- <div class="delete">  -->
			<!--
			<a href='<s:url action="PurchaseHistoryAction"/>'>

				<s:param name="imageFilePath" value='<s:property value="imageFilePath"/>'/>
				<s:param name="productName" value="%{productName}"/>
				<s:param name="productNameKana" value="%{productNameKana}"/>
				<s:param name="price" value="%{price}"/>
				<s:param name="count" value="%{count}"/>
				<s:param name="releaseCompany" value="%{releaseCompany}"/>
				<s:param name="releaseDate" value="%{releaseDate}"/>

				<s:param name="deleteFlg" value="1"/>'>削除</a>
				-->
			<!-- </div>  -->
		</s:form>
	</s:if>
	</div>
	<!-- <div class="ayame"></div>  -->
<jsp:include page="footer.jsp"/>
</body>
</html>