<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords"content=""/>
	<title>決済確認画面</title>

<style>




</style>

</head>
<body>

<jsp:include page="home.jsp"/>



	<div>
		<h3>購入情報は以下になります。</h3>
		<table border="1">
			<tr>
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
	</div>





	<div>
			<h3><span>ユーザーID:</span><s:property value="session.userId"/></h3>
			<h3><span>名前:</span><s:property value="session.familyName"/><s:property value="session.firstName"/></h3>
			<h3><span>送り先住所:</span><s:property value="choseAddress" escape="false"/></h3>
			<h3><span>電話番号:</span><s:property value="choseNumber" escape="false"/></h3>
	</div>




	<div>
		<s:form action="SettlementCompleteAction">
			<s:submit value="購入する"/>
		</s:form>



	</div>

	</div>
</body>
</html>