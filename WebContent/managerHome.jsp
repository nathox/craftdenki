<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/okamoto.css">
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>管理者Home画面</title>


</head>
<body>
	<div id="main">
		<div id="top">
			<p>管理者Home画面</p>
		</div>
		<div>
			<div>
				<s:form action="ProductManageAction">
					<s:submit value="商品管理" class="icon"/>
				</s:form>
				<s:form action="SalesManageAction">
					<s:submit value="売上管理" class="icon"/>
				</s:form>
			</div>
		</div>
	</div>

</body>
</html>