<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/enna.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/craftdenki.css" rel="stylesheet">
<title>Insert title here</title>

<script>
	function myCheck() {
		var flag = false;
		for (var i = 0; i < document.form1.fruits.length - 1; i++) {
			if (document.form1.fruits[i].checked) {
				flag = true;
				alert(document.form1.fruits[i].value + "が選択されました。");
			}
		}
		if (!flag) {
			alert("項目が選択されていません。");
		}
	}
</script>
<style>
.Abox {
	width: 1000px;
	height: 300px;
	border: 1px solid black;
}

table {
	text-align: center;
}
</style>


</head>
<body>
	<jsp:include page="home.jsp" />

	<div class="main">

		<h3>お気に入りリスト</h3>
		<s:form id="form" name="form" action="FavoriteAction">

			<s:iterator value="favoriteList">
				<div class="Abox">
					<table>
						<tr>
							<td><div class="check">
									<s:checkbox name="checkList" value="1"
										fieldValue="%{productId}" />
								</div></td>
						</tr>
						<tr>
							<td><div id="memo"></div></td>
							<td><img src="<s:property value='imageFilePath'/>"
								width="auto" height="200px"></td>
							<s:hidden name="imageFilePath"
								value='<s:property value="imageFilePath"/>' />
							<td>商品名:<span><s:property value="productName" /></span></td>
							<s:hidden name="productName" value="%{productName}" />
							<td>画像: <span><s:property value="imageFilePath" /></span></td>
							<td>金額: <span><s:property value="price" /></span></td>
							<s:hidden name="price" value="%{price}" />

							<td>会社: <span><s:property value="releaseCompany" /></span></td>
							<s:hidden name="releaseCompany" value="%{releaseCompany}" />
							<td>登録日時: <span><s:property value="releaseDate" /></span></td>
							<s:hidden name="id" value="%{id}" />

							<s:hidden name="releaseDate" value="%{releaseDate}" />
							<s:hidden name="productId" value="%{productId}" />

							</div>
						</tr>

					</table>

				</div>

			</s:iterator>

			<s:submit value="一括削除">
				<s:hidden name="deleteFlg" value="1" />
			</s:submit>

		</s:form>

	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>