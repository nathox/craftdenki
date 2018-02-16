<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Strutsタグ -->
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="ja">

<link href="css/craftdenki.css" rel="stylesheet">



<script type="text/javascript">
	function CartAction() {
		document.getElementById('form').action = "CartAction";
	}
	function SettlementAction() {
		document.getElementById('form').action = "SettlementAction";
	}
</script>



<title>cart画面</title>


</head>
<body>

	<!-- ヘッダー-->
	<jsp:include page="home2.jsp" />

	<div class="main">

		<h3>カート情報</h3>


		<s:if test="nothing == null">
			<h4>ご購入情報はありません。</h4>
		</s:if>
		<s:else>
			<s:form id="form" name="form" action="SettlementAction">
				<h4>カート情報は以下になります。</h4>

				<br><br>


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


		<table>
			<s:iterator value="cartList">
				<div class="check23">
					<s:checkbox name="delete" value="checked" fieldValue="%{id}" />
				</div>


					<ul class="box23">
						<li class="itemlist23"><div class="iFP"><img src="<s:property value='imageFilePath'/>" width="auto" height="200px"></div></li>
						<s:hidden name="imageFilePath" value="%{imageFilePath}" />

						<li class="itemlist23">商品名:<span><s:property value="productName" /></span></li>
						<s:hidden name="productName" value="%{productName}" />

						<li class="itemlist23">ふりがな:<span><s:property value="productNameKana" /></span></li>
						<s:hidden name="productNameKana" value="%{productNamekana}" />

						<li class="itemlist23">金額:<span><s:property value="price" />円</span></li>
						<s:hidden name="price" value="%{price}" />

						<li class="itemlist23">個数:<span><s:property value="productCount" />個</span></li>
						<s:hidden name="productCount" value="%{productCount}" />

						<li class="itemlist23">発売会社名:<s:property value="releaseCompany" /></li>
						<s:hidden name="releaseCompany" value="%{releaseCompany}" />

						<li class="itemlist23">発売年月日:<s:property value="releaseDate" /></li>
						<s:hidden name="releaseDate" value="%{releaseDate}" />

						<li class="itemlist23">合計金額:<s:property value="totalPrice" /></li>
						<s:hidden name="totalPrice" value="%{totalPrice}" />
					</ul>

			</s:iterator>

		</table>


				<br>
				<br>
				<br>
				<td><s:submit value="削除" onclick="CartAction();"
						class="button" ><s:hidden name="cartDeleteFlg" value="1" /></s:submit></td>
				<td><s:submit value="決済に進む" onclick="SettlementAction();"
						class="button" /></td>
			</s:form>
			</s:else>
			<s:if test="message != null">
				<h3>
					<s:property value="message" />
				</h3>
			</s:if>

			<!-- <p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p> -->
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>