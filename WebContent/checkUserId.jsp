<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />

<title>ログインID確認画面</title>
</head>
<body>
	<div>
	<s:form action="CheckUserIdAction">
				<tr>
				<td>
				<label>ログインID：</label>
				</td>
				<td>
				<input type="text" name="userId" value="test"/>
				</td>
			</tr>

		<s:submit value="確認"/>
	</s:form>
	</div>
</body>
</html>