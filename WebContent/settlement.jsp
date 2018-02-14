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
<title>決済画面</title>




<style>
</style>

</head>
<body>

	<jsp:include page="home.jsp" />

	<div id="top">
	<p> みないで </p>
	</div>

	<div>
		<h3>宛先を選択してください</h3>
	</div>



	<div>
		<table>
			<tr>
				<td>名前:</td>
				<td><s:property value="familyName" />
					<s:property value="firstName" /></td>
			</tr>
			<tr>
				<td>メールアドレス</td>
				<td><s:property value="email" /></td>
			</tr>

		</table>
	</div>

	<s:form action="SettlementConfirmAction">
		<table>
			<s:if test="userAddress != null && telNumber != null">
				<tr>
					<td><input type="radio" name="destination" value="1" checked>
					<td>宛先1:</td>
					<td><s:property value="userAddress" /></td>
					<td><s:property value="telNumber" /></td>
				</tr>
			</s:if>




			<s:if test="userAddress2 != null && telNumber2 != null">
				<tr>
					<td><input type="radio" name="destination" value="2">
					<td>宛先2:</td>
					<td><s:property value="userAddress2" /></td>
					<td><s:property value="telNumber2" /></td>
				</tr>
			</s:if>

			<s:if test="userAddress3 != null && telNumber3 != null">
				<tr>
					<td><input type="radio" name="destination" value="3">
					<td>宛先3:</td>
					<td><s:property value="userAddress3" /></td>
					<td><s:property value="telNumber3" /></td>
				</tr>
			</s:if>
		</table>
		<span>宛先の住所を変更、追加するには<a
			href='<s:url action="UserInfoChangeAction"/>'>こちら</a></span>

		<br>
		<s:submit value="けってい" />
	</s:form>


	<div></div>

	</div>
	</ body>
</html>