<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!-- Strutsタグ -->
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="ja">

<link href="css/craftdenki.css" rel="stylesheet">



<script type="text/javascript">
	function GoCartAction() {
		document.getElementById('form').action = "GoCartAction";
	}
	function SettlementAction() {
		document.getElementById('form').action = "SettlementAction";
	}

</script>



<title>cart画面</title>


</head>
<body>

<!-- ヘッダー-->
<jsp:include page="home.jsp" />




	<s:if test="cartList == null">
		<h3>ご購入情報はありません。</h3>
	</s:if>

	<s:form id="form" name="form" action="SettlementAction">
		<h3>カート情報は以下になります。</h3>


		<table>
			<s:iterator value="purchaseHistoryList">
			<div class="check"><s:checkbox name="delete" value="checked"
							fieldValue="%{id}" /></div>
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

					<li><s:property value="releaseCompany" /></li>
					<s:hidden name="releaseCompany" value="%{releaseCompany}" />

					<li>発売会社名:<s:property value="releaseDate" /></li>
					<s:hidden name="releaseDate" value="%{releaseDate}" />

					<li>発売年月日:<s:property value="imageFilePath" /></li>
					<s:hidden name="imageFilePath" value="%{imageFilePath}" />

					<s:hidden name="registDate" value="%{registDate}" />

				</ul>
				</div>
			</s:iterator>

		</table>



		<!--
		<table border="1">
			<tr>
				<td></td>
				<td>商品名</td>
				<td>ふりがな</td>
				<td>画像パス</td>
				<td>値段</td>
				<td>個数</td>
				<td>発売会社</td>
				<td>発売日</td>
				<td>合計金額</td>
			</tr>

				<s:iterator value="cartList">
				<tr>
					<td><s:checkbox name="delete" value="checked"
							fieldValue="%{id}" /></td>

					<td><s:property value="productName" /></td>
					<s:hidden name="productName" value="%{productName}" />

					<td><s:property value="productNameKana" /></td>
					<s:hidden name="productNameKana" value="%{productNameKana}" />

					<td><s:property value="imageFilePath" /></td>
					<s:hidden name="imageFilePath" value="%{imageFilePath}" />

					<td><s:property value="price" /><span>円</span></td>
					<s:hidden name="price" value="%{price}" />

					<td><s:property value="productCount" /><span>個</span></td>
					<s:hidden name="productCount" value="%{productCount}" />

					<td><s:property value="releaseCompany" /></td>
					<s:hidden name="releaseCompany" value="%{releaseCompany}" />

					<td><s:property value="releaseDate" /></td>
					<s:hidden name="releaseDate" value="%{releaseDate}" />

					<td><s:property value="totalPrice" /><span>円</span></td>
					<s:hidden name="totalPrice" value="%{totalPrice}" />
				</tr>
				</s:iterator>
		</table>
		-->



		<td><s:submit value="削除" onclick="GoCartAction();" /></td>
		<td><s:submit value="決済" onclick="SettlementAction();" /></td>
	</s:form>

	<s:if test="message != null">
		<h3>
			<s:property value="message" />
		</h3>
	</s:if>

	<div>
		<a href='<s:url action="StartAction" />'>Home画面に戻る</a>
	</div>

	<s:form action="SettlementAction">
		<s:submit value="決済画面へ(仮置き)" />
	</s:form>



</body>
</html>