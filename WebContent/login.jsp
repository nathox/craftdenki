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
<link href="css/craftdenki.css" rel="stylesheet">

<title>Insert title here</title>


<style>
.top {
	float: left;
	height: 230px;
	width: 320px;
	padding-top: 0px;
	padding-left: 40px;
	padding-right: 40px;
	border: 0.5px solid black;
	font-family: SimHei;
	margin-top: 10px;
	margin-left: 25px;
	margin-right: 25px;
	margin-bottom: 10px;
	text-align: center;
}

#Abox {
border:2px solid black;

}

#box {
	border-bottom: 1px solid black;
	position: center;
	font-size: 17px;
	text-align: center;
}

#message {
	font-size: 13px;
}

p {
	width: 200px;
	background: #CCC;
}

.left {
	margin-right: auto;
}
</style>
</head>
<body>
	<jsp:include page="home2.jsp" />
	<div class="main">

		<div class="top _1">

			<div class="Abox">

				<div id="box">ログイン</div>


				<s:form action="LoginAction">
					<table>
						<tr>
							<s:if test="session.unknown != ''">
								<s:property value="session.unknown" />
							</s:if>
						</tr>
						<br>
						<tr>ユーザーID
						</tr>
						<br>
						<tr>
							<s:textfield name="loginId" style="ime-mode:disabled;" size="40" />
						</tr>
						<tr>
							<td><s:if test="session.IDerrormsg != ''">
									<br>
									<s:property value="session.IDerror" />
								</s:if></td>
						</tr>
						<br>
						<tr>パスワード
						</tr>
						<br>
						<tr>
							<s:password name="loginPassword" style="ime-mode:disabled;"
								size="40" />
						</tr>
						<tr>
							<s:if test="session.Passerrormsg != ''">
								<br>
								<s:property value="session.Passerror" />
							</s:if>
						</tr>
						<tr>
							<td><s:submit value="ログイン" size="30" class="button" /></td>
						</tr>
					</table>
				</s:form>
				<table>
					<tr>
						<td><span>パスワードを忘れてしまった方は<a
								href='<s:url action="ChangePasswordAction"/>'>こちら</a>から
						</span></td>
					</tr>
				</table>
			</div>
			<div class="top _2">
				<div id="box">新規登録</div>
				<br>
				<div id="message">
					会員登録をお願いします。 <br> <br> 会員登録は無料です。
				</div>
				<br> <br>
				<s:form action="UserCreateAction">
					<s:submit value="新規登録" class="button" />
				</s:form>

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>