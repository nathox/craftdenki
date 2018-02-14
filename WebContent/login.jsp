<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>Insert title here</title>


<style>
.top {
	height: 200px;
	width: 300px;
	margin: 0px;
	padding: 20px;
	border: 2px solid black;
	position: absolute;
	top: 30%;
	left: 10%;
}

#top2 {
	height: 200px;
	width: 300px;
	margin: 0px;
	padding: 20px;
	border: 2px solid black;
	position: absolute;
	top: 30%;
	left: 60%;
}


</style>
</head>
<body>

<jsp:include page="home.jsp"/>

	<div id="header"></div>
	<div class="top">
		<s:form action="LoginAction">
			<table>
				<tr>
					<td><s:if test="session.unknown != ''">

							<s:property value="session.unknown" />

						</s:if></td>
				</tr>


				<tr>
					<td><s:if test="session.IDerrormsg != ''">
							<s:property value="session.IDerror" />
						</s:if></td>
				</tr>
				<tr>
					<td><s:textfield name="loginId" style="ime-mode:disabled;"
							value="test" /></td>
				</tr>


				<tr>
					<td><s:if test="session.Passerrormsg != ''">
							<s:property value="session.Passerror" />
						</s:if></td>
				</tr>
				<tr>
					<td><s:textfield name="loginPassword"
							style="ime-mode:disabled;" value="123" /></td>
				</tr>


				<tr>
					<td><s:submit value="ログイン" /></td>
				</tr>
			</table>

		</s:form>
	</div>

	<div id="top2">

		<s:form action="ChangePasswordAction">
			<s:submit value="パスワード再設定" />
		</s:form>

		<s:form action="UserCreateAction">
			<s:submit value="新規登録" />
		</s:form>

	</div>
	<div id="footer"></div>
</body>
</html>