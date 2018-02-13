<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/okamoto.css">
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>仕入確認画面</title>

</head>
<body>
	<div id="main">
		<div id="top">
			<p>仕入確認画面</p>
		</div>
		<div>
			<s:if test="supplyList.size() == 0">
				仕入情報がありません。
			</s:if>
			<s:else>
				<s:form action="SupplyCompleteAction">
					<table border="1">
						<tr>
							<th>ID</th>
							<th>商品名</th>
							<th>販売価格</th>
							<th>在庫数</th>
							<th>仕入数</th>
							<th>仕入原価</th>
							<th>仕入原価計</th>
						</tr>
						<s:iterator value="supplyList">
							<tr>
								<td><s:property value="product_id"/><s:hidden name="product_id" value="%{product_id}"/></td>
								<td><s:property value="product_name"/></td>
								<td><s:property value="price"/></td>
								<td><s:property value="item_stock"/></td>
								<td><s:property value="supplyCount"/><s:hidden name="supplyCount" value="%{supplyCount}"/></td>
								<td><s:property value="supplyCost"/><s:hidden name="supplyCost" value="%{supplyCost}"/></td>
								<td><s:property value="supplyCostTotal"/></td>
							</tr>
						</s:iterator>
					</table>
					<p>仕入値合計<s:property value="supplyCostAllTotal"/>円
					<p>以上でよろしいですか？</p>
					<s:submit value="はい"/>
				</s:form>
				<s:form action="ProductManageAction">
					<s:submit value="いいえ" />
				</s:form>
			</s:else>
		</div>
	</div>
</body>
</html>