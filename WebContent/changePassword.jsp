<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
<title>changePassword画面</title>
</head>
<body>

<div>
			<s:if test="errorMassage != ''">
				<h3><s:property value="errorMassage" escape="false" /></h3>
			</s:if>
			<s:form action="ChangePasswordAction">
				<tr>
					<td>
						<label>秘密の質問:</label>
					</td>
					<td>
					<s:property value="question" escape="false"/>
					</td>
					<td>
						<label>答え:</label>
					</td>
					<td>
					<input type="text" name="answer" value="<s:property value="session.loginUser.answer"/>" />
					</td>
				</tr>
				<tr>
					<td>
						<label>ログインPASS (パスワード):</label>
					</td>
					<td>
						<input type="password" name="loginPassword" value="<s:property value="session.loginUser.loginPassword"/>" />
					</td>
				</tr>
				<tr>
					<td>
						<label>確認用：</label>
					</td>
					<td>
						<input type="password" name="checkPassword" value="<s:property value="session.loginUser.loginPassword"/>" />
					</td>
				</tr>

				<s:submit value="変更"/>
			</s:form>
		</div>
</body>
</html>