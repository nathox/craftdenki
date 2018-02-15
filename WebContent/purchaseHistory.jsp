<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/enna.css" rel="stylesheet">


<script type="text/javascript">
	function PurchaseHistoryAction() {
		document.getElementById('form').action = "PurchaseHistoryAction";
	}

	function Review1Action() {
		document.getElementById('form').action = "Review1Action";
	}
</script>


<title>購入履歴</title>

<style type="text/css">
.box1 {
	width: 50%;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

body {
	text-align: center;
}

.form {
	text-align: center;
}

.okada {
	margin-bottom: 65px;
	border: 1px solid #b1b1b1;
	list-style: none;
	margin-right: auto;
	width: 100%;
	padding-top: 10px;
	padding-bottom: 10px;
}

.check {
	float: left;
	position: relative;
	margin-top: 40px;
	margin-left: 240px;
	line-height: 110px;
}

li {
	margin: 0;
	padding: 0;
	text-align: left;
	width: 100%;
	margin-right: auto;
	text-align: justify;
}

.review {
	float: right;
	position: relative;
	margin-right: 150px;
	line-height: 110px;
	bottom: 120px;
}

.deleteAll {
	float: right;
	margin-right: 50px;
}
</style>

</head>
<body>

	<jsp:include page="home.jsp" />


	<h1>購入商品一覧</h1>

	<s:if test="purchaseHistoryList.size()==0">
		<h2>購入履歴はありません。</h2>
	</s:if>
	<s:elseif test="message == null">
		<a>購入情報は以下になります。</a>
	</s:elseif>


	<s:form id="form" name="form" action="PurchaseHistoryAction">
		<table>
			<s:iterator value="purchaseHistoryList">
				<div class="check">
					<s:checkbox name="checkList" value="checked" fieldValue="%{id}" />
				</div>
				<div class="box1">
					<ul class="okada">

						<li>商品名:<span><s:property value="productName" /></span></li>
						<s:hidden name="productName" value="%{productName}" />

						<li>ふりがな:<span><s:property value="productNameKana" /></span></li>
						<s:hidden name="productName" value="%{productName}" />

						<li>金額:<span><s:property value="price" />円</span></li>
						<s:hidden name="price" value="%{price}" />

						<li>個数:<span><s:property value="count" />個</span></li>
						<s:hidden name="count" value="%{count}" />

						<li>発売会社名<s:property value="releaseCompany" /></li>
						<s:hidden name="releaseCompany" value="%{releaseCompany}" />

						<li>発売年月日:<s:property value="releaseDate" /></li>
						<s:hidden name="releaseDate" value="%{releaseDate}" />

						<li><img src='<s:property value="imageFilePath" />' /></li>
						<s:hidden name="imageFilePath" value="%{imageFilePath}" />

						<s:hidden name="registDate" value="%{registDate}" />

					</ul>
				</div>
				<div class="review">
					<s:submit value="レビュー" onclick="Review1Action();" />
				</div>
			</s:iterator>
			<s:submit value="一括削除" onclick="PurchaseHistoryAction();">
				<s:hidden name="deleteFlg" value="1" />
			</s:submit>
		</table>
	</s:form>

</body>
</html>