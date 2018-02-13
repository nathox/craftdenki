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

</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
		<p>決済画面</p>
		</div>




	<div>
		<h3>カートの情報一覧を今から持ってくる</h3>
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