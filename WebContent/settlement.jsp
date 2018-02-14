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
	<title>決済画面</title>




<style>




</style>

</head>
<body>

<jsp:include page="home.jsp"/>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
		<p>決済画面</p>
		</div>




	<div>
		<h3>宛先を選択してください</h3>
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

	<s:form action="SettlementConfirmAction">
		<table>
			<s:if test="userAddress != null && telNumber != null">
				<tr>
					<td><input type="radio" name="destination" value="1" checked>
					<td>宛先1:</td>
					<td><s:property value="familyName"/></td><td><s:property value="firstName"/></td><td><s:property value="email"/></td><td><s:property value="userAddress"/></td><td><s:property value="telNumber"/></td>
				</tr>
			</s:if>




	<s:if test="userAddress2 != null && telNumber2 != null">
	<tr>
		<td><input type="radio" name="destination" value="2">
		<td>宛先2:</td>
		<td><s:property value="familyName"/></td><td><s:property value="firstName"/></td><td><s:property value="email"/></td><td><s:property value="userAddress2"/></td><td><s:property value="telNumber2"/></td>
	</tr>
	</s:if>

	<s:if test="userAddress3 != null && telNumber3 != null">
	<tr>
		<td><input type="radio" name="destination" value="3">
		<td>宛先3:</td>
		<td><s:property value="familyName"/></td><td><s:property value="firstName"/></td><td><s:property value="email"/></td><td><s:property value="userAddress3"/></td><td><s:property value="telNumber3"/></td>
	</tr>
	</s:if>
</table>

<br>
<s:submit value="けってい" />
</s:form>


	<div>

	</div>

	</div>
</body>
</html>