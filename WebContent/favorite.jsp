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
<style type="text/css">
p{
font-size:30px;
}
.box1{
width: 50%;
text-align: center;
margin-left:auto;
margin-right:auto;

}
body{

}

.form{
text-align: center;
}

.okada{
margin-bottom:65px;
border: 1px solid #b1b1b1;
list-style: none;
margin-right:auto;
width:100%;
padding-top:10px;
padding-bottom:10px;

}
.check{
float:left;
position:relative;
margin-top:40px;
margin-left:240px;
line-height:110px;
}

li{
margin:0;
padding:0;
text-align:left;
width:100%;
margin-right:auto;
text-align: justify;
}

.review{
float:right;
position:relative;
margin-right:150px;
line-height:110px;
bottom:120px;
}

.delete{
float:right;
margin-right:50px;
}

.header{
margin-bottom:130px;
}



</style>


</head>
<body>
<jsp:include page="home.jsp" />

<div class="main">

	<h3>お気に入りリスト</h3>
	<s:form id="form" name="form" action="FavoriteAction">
		<table border="0" cellspacing="0">

			<s:iterator value="favoriteList">

				<div class="check"><s:checkbox name="checkList" value="1"
							fieldValue="%{productId}" /></div>
				<div class="box1">
				<ul class="okada">



				<li>商品名:<span><s:property value="productName" /></span></li>
				<li>画像:<span><s:property value="imageFilePath" /></span></li>
				<li>金額:<span><s:property value="price" /></span></li>
				<li>会社:<span><s:property value="releaseCompany" /></span></li>
				<li>登録日時:<span><s:property value="releaseDate" /></span></li>



				</ul>
				</div>
			</s:iterator>
			<tr>
				<td><s:submit value="一括削除">
						<s:hidden name="deleteFlg" value="1" />
					</s:submit></td>
			</tr>
		</table>
	</s:form>
	<a href='<s:url action="StartAction" />'>Home画面に戻る</a>

</div>









<jsp:include page="footer.jsp"/>
</body>
</html>