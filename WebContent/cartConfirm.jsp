<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords"content=""/>


	<script type="text/javascript">
    function goCartAction(){
    	o=document.createElement('input');
    	o.name ='deleteFlg';
    	o.value=1;
    	document.form.appendChild(o);
        document.getElementById('form').action="CartAction";
    }

    function goSettlementAction(){
        document.getElementById('form').action="SettlementAction";
    }
</script>




	<title>cart画面</title>

</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
		<p>CartConfirm</p>
		</div>

			<s:if test="cartList == null">
				<h3>ご購入情報はありません。</h3>
			</s:if>
			<s:elseif test="message == null">



				<s:form id="form" name="form" action ="CartAction">
					<h3>カート情報は以下になります。</h3>
					<table>
					<tr>

						<td>
						<table border="1">
							<tr>
								<th></th>
								<th>商品名</th>
								<th>ふりがな</th>
								<th>画像パス</th>
								<th>値段</th>
								<th>個数</th>
								<th>発売会社</th>
								<th>発売日</th>
								<th>合計金額</th>
							</tr>
							<s:iterator value="cartList">
								<tr>
									<td><s:checkbox name="delete" value="checked" fieldValue="%{id}" /></td>

									<td><s:property value="productName"/></td>
											<s:hidden name="productName" value="%{productName}"/>

									<td><s:property value="productNameKana"/></td>
											<s:hidden name="productNameKana" value="%{productNameKana}"/>

									<td><s:property value="imageFilePath"/></td>
											<s:hidden name="imageFilePath" value="%{imageFilePath}"/>

									<td><s:property value="price"/><span>円</span></td>
											<s:hidden name="price" value="%{price}"/>

									<td><s:property value="productCount"/><span>個</span></td>
											<s:hidden name="productCount" value="%{productCount}"/>

									<td><s:property value="releaseCompany"/></td>
											<s:hidden name="releaseCompany" value="%{releaseCompany}"/>

									<td><s:property value="releaseDate"/></td>
											<s:hidden name="releaseDate" value="%{releaseDate}"/>

									<td><s:property value="totalPrice"/><span>円</span></td>
											<s:hidden name="totalPrice" value="%{totalPrice}"/>
								</tr>
							</s:iterator>
						</table>
						</td>
					</tr>
					</table>
						<s:submit value="削除" onclick="goCartAction();"/>
						<s:submit value="決済" oncick="SettlementAction();"/>
					</s:form>

			</s:elseif>
			<s:if test="message != null">
				<h3><s:property value="message"/></h3>
			</s:if>

			<div>
			<a href='<s:url action="StartAction" />'>Home画面に戻る</a>
			</div>

	<s:form action ="SettlementAction">
		<s:submit value ="決済画面へ(仮置き)"/>
	</s:form>



	</div>
</body>
</html>