<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/enna.css" rel="stylesheet">


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

<!-- ヘッダー -->
<jsp:include page="home.jsp" />



	<s:if test="cartList == null">
		<h3>ご購入情報はありません。</h3>
	</s:if>

	<s:form id="form" name="form" action="SettlementAction">
		<h3>カート情報は以下になります。</h3>
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
			<tr>
				<td><s:submit value="削除" onclick="GoCartAction();" /></td>
				<td><s:submit value="決済" onclick="SettlementAction();" /></td>
			</tr>
		</table>
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