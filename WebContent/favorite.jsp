<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	★お気に入りリスト★

	<table border="1" cellspacing="0">
		<thead id="hoge-head">
			<tr>
				<td>チェック</td>
				<td>商品名</td>
				<td>画像</td>
				<td>値段</td>
				<td>会社</td>
				<td>販売月</td>
				<td>ボタン</td>
			</tr>
		</thead>
		<s:iterator value="favoriteList">
			<tr>
				<td><input type="checkbox"></td>
				<td><span><s:property value="productName" /></span></td>
				<td><span><s:property value="imageFilePath" /></span></td>
				<td><span><s:property value="price" /></span></td>
				<td><span><s:property value="releaseCompany" /></span></td>
				<td><span><s:property value="releaseDate" /></span></td>
				<td><input type="button" name="delete_line" class="delete_line"
					value="削除" id="hoge-head"></td>
			</tr>
		</s:iterator>
	</table>





	<table border="1" cellspacing="0">
		<tr>
			<td>商品名</td>
			<td>画像</td>
			<td>値段</td>
			<td>会社</td>
			<td>発売月</td>
		</tr>









		<img class="image" src="<s:property value='image_file_path'/>">
		<s:hidden name="product_id" value="%{product_id}" />







		<form name="frmMove">
			<script language=javascript>
			function obakasannemou() {
				objChk = frmMove.chkMove //チェックボックスオブジェクトを参照
				str = ""; //チェック内容を代入する変数
				for (i = 0; i < objChk.length; i++) {
					if (objChk[i].checked)
						str += objChk[i].value
				}
				switch (str) {
				case "1":
					location.href = "https://www.yahoo.co.jp/";
					break;
				case "2":
					location.href = "https://www.google.co.jp";
					break;

				case "3":
					location.href = "https://www.biglobe.ne.jp/";
					break;

				case "4":
					location.href = "https://www.goo.ne.jp/";
					break;

				case "5":
					location.href = "https://www.google.co.jp/maps";
					break;




				}
			}
		</script>


			<p>★お気に入りリスト★</p>

			<p>
				<br> <input type="checkbox" value="1" name="chkMove">1.商品名
				<br> <input type="checkbox" value="2" name="chkMove">2.画像
				<br> <input type="checkbox" value="3" name="chkMove">3.値段<br>
				<input type="checkbox" value="4" name="chkMove">4.会社<br>
				<input type="checkbox" value="5" name="chkMove">5.発売月
			</p>

			<p>
				<br> <input type="button" value="商品ページへ"
					onclick="obakasannemou()"> <INPUT TYPE="button"
					VALUE="商品一覧へ戻る"
					onClick="http://localhost:8080/craftdenki/ProductListAction.action">
				<INPUT TYPE="button" VALUE="マイページ"
					onClick="http://localhost:8080/craftdenki/GoMyPageAction.action">
				<INPUT TYPE="button" VALUE="削除" onClick="location.href=''">

				<INPUT TYPE="button" VALUE="HOME" onClick="location.href=''">



			</p>
		</form>
</body>
</html>