<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/nakajima.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script>

</script>

<meta charset="utf-8">
<title>確認画面</title>
<style type="text/css">
table.company {
    width: 500px;
    margin: 0 auto;
    border-collapse: separate;
    border-spacing: 0px 15px;
    font-size: 12px;
}

table.company th,
table.company td {
    padding: 10px;
}

table.company th {
    background: #295890;
    vertical-align: middle;
    text-align: left;
    width: 100px;
    overflow: visible;
    position: relative;
    color: #fff;
    font-weight: normal;
    font-size: 15px;
}

table.company th:after {
    left: 100%;
    top: 50%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(136, 183, 213, 0);
    border-left-color: #295890;
    border-width: 10px;
    margin-top: -10px;
}
    h3{
    text-align:center;}
table.company tr{
background-color:white;}
/* firefox */
@-moz-document url-prefix() {
    table.company th::after {
        float: right;
        padding: 0;
        left: 30px;
        top: 10px;
        content: " ";
        height: 0;
        width: 0;
        position: relative;
        pointer-events: none;
        border: 10px solid transparent;
        border-left: #295890 10px solid;
        margin-top: -10px;
    }



table.company td {
    background: #f8f8f8;
    width: 360px;
    padding-left: 20px;
}
</style>
</head>
<body>
<jsp:include page="home.jsp"/>

<h1>ユーザー登録</h1>
<ol class="stepBar">
<li class="visited"><span>1</span><br>必要事項の入力</li>
<li class="visited"><span>2</span><br>入力内容の確認</li>
<li><span>3</span><br>登録完了</li>
</ol>
<h3>登録する内容は以下でよろしいですか?</h3>

<div class="sen">
<table class="company">
	<tbody>
		<tr>
			<th class="arrow_box">ログインID</th>
			<td><s:property value="loginUserId" /></td>
		<tr>
			<th class="arrow_box">ログインPASS</th>
			<td><s:property value="loginPassCon"/></td>
		</tr>
		<tr>
			<th>お名前(かな)</th>
			<td><s:property value="familyNameKana"/> <s:property value="firstNameKana"/></td>
		</tr>
		<tr>
			<th>お名前</th>
			<td><s:property value="familyName"/> <s:property value="firstName"/></td>
		</tr>
		<tr>
			<th>性別</th>
			<td><s:if test="sex==0">男</s:if>
	 			<s:if test="sex==1">女</s:if>
	 		</td>
	 	</tr>
	 	<tr>
	 		<th>メールアドレス</th>
	 		<td><s:property value="mail" /></td>
	 	</tr>
	 	<tr>
			<th>秘密の質問</th>
			<td><s:if test="secretQuestion==1">嫌いな食べ物は？</s:if>
				<s:if test="secretQuestion==2">母親の旧姓は？</s:if>
				<s:if test="secretQuestion==3">好きな動物は？</s:if>
			</td>
		</tr>
		<tr>
			<th>答え</th>
			<td><s:property value="secretAnswer" /></td>
		</tr>
		<tr>
			<th>郵便番号</th>
			<td><s:property value="yuubin"/></td>
		</tr>
		<tr>
			<th>住所</th>
			<td><s:property value="address" /></td>
		</tr>
		<tr>
			<th>電話番号</th>
			<td><s:property value="tel" /></td>
		</tr>
	</tbody>
</table>
</div>
	<s:form action="UserCreateCompleteAction" >
		<s:submit value="完了"/>
	</s:form>

<s:form action="UserCreateAction">
<input type="hidden" name="loginUserId" value="<s:property value="loginUserId" />"/>
<input type="hidden" name="loginPassword" value="<s:property value="loginPassword" />">
<input type="hidden" name="familyName" value="<s:property value="familyName" />">
<input type="hidden" name="firstName" value="<s:property value="firstName" />">
<input type="hidden" name="familyNameKana" value="<s:property value="familyNameKana" />">
<input type="hidden" name="firstNameKana" value="<s:property value="firstNameKana" />">
<input type="hidden" name="sex" value="<s:property value="sex" />">
<input type="hidden" name="mail" value="<s:property value="mail" />">
<input type="hidden" name="secretQuestion" value="<s:property value="secretQuestion" />">
<input type="hidden" name="secretAnswer" value="<s:property value="secretAnswer" />">
<input type="hidden" name="yuubin" value="<s:property value="yuubin" />">
<input type="hidden" name="address" value="<s:property value="address" />">
<input type="hidden" name="tel" value="<s:property value="tel" />">
<s:submit value="戻る"/>
</s:form>

</body>
</html>