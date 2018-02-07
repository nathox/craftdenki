<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<s:iterator value="favoriteList">















<table border="1" cellspacing="0">
        <thead id="hoge-head">
            <tr>
                <td></td>
                <td>商品名</td>
                <td>ふりがな</td>
                <td>画像</td>
                <td>画像名</td>
                <td>値段</td>
                <td>会社</td>
                <td>販売月</td>
            </tr>
        </thead>
        <tbody id="hoge-body">

        <s:iterator value=favoriteList>
            <tr>
                <td><input type="checkbox"></td>
                <td>1</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </s:iterator>



            <tr>
                <td><input type="checkbox"></td>
                <td>2</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>3</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>

            </tr>

            <tr>
                <td><input type="checkbox"></td>
                <td>5</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td><input type="checkbox"></td>
                <td>6</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td><input type="checkbox"></td>
                <td>7</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

        </tbody>
    </table>

























			<table border="1" cellspacing="0">
<tr>
<td>商品名</td><td>ふりがな</td><td>画像</td><td>画像名</td><td>値段</td><td>会社</td><td>発売月</td>
</tr>





			<span>商品名<s:property value="productName" /></span>
			<span>ふりがな<s:property value="productNameKana" /></span>
			<span>画像<s:property value="imageFilePath" /></span>
			<span>画像名<s:property value="imageFileName" /></span>
			<span>値段<s:property value="price" /></span>
			<span>会社<s:property value="releaseCompany" /></span>
			<span>発売月<s:property value="releaseDate" /></span>


			<img class="image" src="<s:property value='image_file_path'/>" >
			<s:hidden name="product_id" value="%{product_id}"/>







</s:iterator>
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

				case "6":
					location.href = "https://www.google.co.jp/maps";
					break;

				case "7":
					location.href = "https://www.google.co.jp/maps";
					break;


				}
			}
		</script>

		お気に入り画面
		<p>★お気に入りリスト★</p>

		<p>
			<br> <input type="checkbox" value="1" name="chkMove">1.商品名
			<br>
			<input type="checkbox" value="2" name="chkMove">2.ふりがな <br>
			<input type="checkbox" value="3" name="chkMove">3.画像 <br>
			<input type="checkbox" value="4" name="chkMove">4.画像名 <br>
			<input type="checkbox" value="5" name="chkMove">5.値段<br>
			<input type="checkbox" value="6" name="chkMove">6.会社<br>
			<input type="checkbox" value="7" name="chkMove">7.発売月
		</p>

		<p>
			<br>
			<input type="button" value="商品ページへ" onclick="obakasannemou()">


			<INPUT TYPE="button" VALUE="商品一覧へ戻る"
				onClick="http://localhost:8080/craftdenki/ProductListAction.action"> <INPUT
				TYPE="button" VALUE="マイページ"
				onClick="location.href='https://www.yahoo.co.jp/'"> <INPUT
				TYPE="button" VALUE="削除" onClick="location.href=''">



		</p>
	</form>





</body>
</html>