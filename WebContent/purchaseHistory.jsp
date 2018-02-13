<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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

.box1{
width: 50%;
text-align: center;
margin-left:auto;
margin-right:auto;
}
body{
text-align: center;
}

.form{
text-align: center;
}

.okada{
margin-bottom:65px;
border: 1px solid #b1b1b1;
list-style: none;
margin-right:auto;
width:100%;

}
.check{
float:left;
position:relative;
margin-top:40px;
margin-left:240px;
line-height:110px;
}

li{
margin:0;
padding:0;
text-align:left;
width:100%;
margin-right:auto;

}


</style>

</head>
<body>
	<h1>購入商品一覧</h1>

	<s:if test="purchaseHistoryList == null">
		<h2>購入履歴はありません。</h2>
	</s:if>

	<s:elseif test="message == null">
		<a>購入情報は以下になります。</a>
	</s:elseif>


	<s:form class="form" name="form" action="PurchaseHistoryAction">
		<table>
			<s:iterator value="purchaseHistoryList">
			<div class="check"><s:checkbox name="checkList" value="checked"
							fieldValue="%{productId}" /></div>
				<div class="box1">
				<ul class="okada">
					<li>商品ID:<span><s:property value="productId" /></span></li>
						<s:hidden name="productId" value="%{productId}" />
					<li>商品名:<span><s:property value="productName" /></span></li>
					<s:hidden name="productName" value="%{productName}" />
					<li>ふりがな:<span><s:property value="productNameKana" /></span></li>
					<s:hidden name="productName" value="%{productName}" />
					<li>金額:<span><s:property value="price" />円</span></li>
					<s:hidden name="price" value="%{price}" />
						<li>個数:<span><s:property value="count" />個</span></li>
					<s:hidden name="count" value="%{count}" />
					<s:hidden name="registDate" value="%{registDate}" />
				</ul>
				</div>
				<div class="review">レビューボタン:<s:submit value="レビュー" onclick="Review1Action();" /></div>
			</s:iterator>
			<tr>
				<td><s:submit value="一括削除" onclick="PurchaseHistoryAction();">
						<s:hidden name="deleteFlg" value="1" />
					</s:submit></td>
			</tr>
		</table>
	</s:form>

</body>
</html>