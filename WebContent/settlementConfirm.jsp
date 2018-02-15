<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>決済確認画面</title>
<link href="./css/sano.css" rel="stylesheet">

<style>
</style>

</head>
<body>
	<jsp:include page="home.jsp" />
	<div class="main">

	<h3>決済確認</h3>




		<div>
			<table>

				<tr>
					<td><div class="right">名前:</div></td>
					<td><div class="left">
							<s:property value="session.familyName" />
							<s:property value="session.firstName" />
						</div></td>
				</tr>

				<tr>
					<td><div class="right">お届け先住所:</div></td>
					<td><div class="left">
							<s:property value="choseAddress" escape="false" />
						</div></td>
				</tr>

				<tr>
					<td><div class="right">電話番号:</div></td>
					<td><div class="left">
							<s:property value="choseNumber" escape="false" />
						</div></td>
				</tr>

			</table>
		</div>


		<br>


		<table border="1">
			<tr>
				<th>商品名</th>
				<th>ふりがな</th>
				<th>画像パス</th>
				<th>値段</th>
				<th>個数</th>
				<th>発売会社</th>
				<th>発売日</th>
				<th>合計金額</th>
			</tr>

			<s:iterator value="cartList">
				<tr>
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


		<p>合計:\  -</p>


		<br>


		<div class="left8">
			<s:form action="SettlementCompleteAction">
				<s:submit value="購入する" />
			</s:form>
		</div>


		<br>


	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>