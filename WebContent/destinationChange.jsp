<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>





<%--
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />

	--%>






<meta charset="utf-8">

<title>DestinationChange画面</title>

<style type="text/css">
.errorColor {
	color: red;
}
</style>





<%--
	<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/jquery.validationEngine.js"></script>
	<script src="js/jquery.validationEngine-ja.js"></script>
	<script src="js/jquery.autoKana.js"></script>
	<link rel="stylesheet" href="css/validationEngine.jquery.css">

	<script>
	$(function() {
		$.fn.autoKana('#familyName', '#familyNameKana');
		$.fn.autoKana('#firstName', '#firstNameKana');
	});
	</script>
	<script>
	$(function() {
		jQuery("#form_1").validationEngine();
	});
	</script>

	<script type="text/javascript">
		function nextField(i, n, m) {
 		if (i.value.length >= m) {
 	 	  i.form.elements[n].focus();
 		 }
		}
	</script>

	--%>






<link href="css/craftdenki.css" rel="stylesheet">
<link href="css/nakajima.css" rel="stylesheet">
<link href="css/userInfoChange.css" rel="stylesheet">

</head>
<body>

	<jsp:include page="home2.jsp" />



	<div class="main">
		<div class="wideBox">

			<h3>お届け先変更、追加ページ</h3>
			<br>
			<s:form id="form_1" action="DestinationChangeAction">
				<div class="errorColor">
					<s:if test="errorMessage!=hoge">
						<s:property value="errorMessage" escape="false" />
					</s:if>
				</div>





				<s:iterator value="list_user_info">

					<table>


						<tr>
							<th>郵便番号</th>
							<td>〒<input type="text" name="yuubin1" size="4"
								maxlength="3" onkeyup="nextField(this, 'yuubin4', 3)">-<input
								type="text" name="yuubin4" size="4" maxlength="4"
								onKeyUp="AjaxZip3.zip2addr('yuubin1','yuubin4','userAddress','userAddress');">
							</td>
						</tr>

						<tr>
							<th>住所１</th>
							<td><s:textfield name="userAddress" size="60"
									value="%{userAddress}" class="validate[required]" /></td>
						</tr>

						<tr>
							<th>郵便番号</th>
							<td>〒<input type="text" name="yuubin2" size="4"
								maxlength="3" onkeyup="nextField(this, 'yuubin5', 3)">-<input
								type="text" name="yuubin5" size="4" maxlength="4"
								onKeyUp="AjaxZip3.zip2addr('yuubin2','yuubin5','userAddress2','userAddress2');">
							</td>
						</tr>

						<tr>
							<th>住所２</th>
							<td><s:textfield name="userAddress2" size="60"
									value="%{userAddress2}" /></td>
						</tr>

						<tr>
							<th>郵便番号</th>
							<td>〒<input type="text" name="yuubin3" size="4"
								maxlength="3" onkeyup="nextField(this, 'yuubin6', 3)">-<input
								type="text" name="yuubin6" size="4" maxlength="4"
								onKeyUp="AjaxZip3.zip2addr('yuubin3','yuubin6','userAddress3','userAddress3');">
							</td>
						</tr>

						<tr>
							<th>住所３</th>
							<td><s:textfield name="userAddress3" size="60"
									value="%{userAddress3}" /></td>
						</tr>


						<tr>
							<th>電話番号</th>
							<td><s:textfield name="telNumber" value="%{telNumber}"
									class="validate[required]" /></td>
						</tr>

						<tr>
							<th>電話番号２</th>
							<td><s:textfield name="telNumber2" value="%{telNumber2}" /></td>
						</tr>

						<tr>
							<th>電話番号３</th>
							<td><s:textfield name="telNumber3" value="%{telNumber3}" /></td>
						</tr>


					</table>

					<br>
					<s:submit value="決済画面へ戻る" id="userInfoCheck" />


				</s:iterator>
			</s:form>

		</div>
	</div>
	<jsp:include page="footer.jsp" />


</body>
</html>