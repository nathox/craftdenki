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
<link href="./css/sano.css" rel="stylesheet">




<style>
</style>

</head>
<body>
	<jsp:include page="home.jsp" />

	<div class="main">


		<h3>お届け先選択</h3>



		<div>
			<table>

					<th>
						<div class="right">お名前:</div>
					</th>
					<td>
						<div class="left">
							<s:property value="familyName" />
							<s:property value="firstName" />
						</div>
					</td>
				</tr>
				<tr>
					<th>
						<div class="right">メールアドレス:</div>
					</th>
					<td>
						<div class="left">
							<s:property value="email" />
						</div>
					</td>
				</tr>

			</table>
		</div>


		<s:form action="SettlementConfirmAction">
			<table>
				<s:if test="userAddress != null && telNumber != null">
					<tr>
						<td><input type="radio" name="destination" value="1" checked>
						<th>宛先1:</th>
						<td><s:property value="userAddress" /></td>
						<td><s:property value="telNumber" /></td>
					</tr>
				</s:if>




				<s:if test="userAddress2 != null && telNumber2 != null">
					<tr>
						<td><input type="radio" name="destination" value="2">
						<th>宛先2:</th>
						<td><s:property value="userAddress2" /></td>
						<td><s:property value="telNumber2" /></td>
					</tr>
				</s:if>

				<s:if test="userAddress3 != null && telNumber3 != null">
					<tr>
						<td><input type="radio" name="destination" value="3">
						<th>宛先3:</th>
						<td><s:property value="userAddress3" /></td>
						<td><s:property value="telNumber3" /></td>
					</tr>
				</s:if>
			</table>

			<div class="destination">
				<span>宛先の住所を変更、追加するには<a
					href='<s:url action="UserInfoChangeAction"/>'>こちら</a></span>
			</div>


			<br>
			<div class="left8">
				<s:submit value="けってい" />
			</div>
		</s:form>


		<br>


	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>