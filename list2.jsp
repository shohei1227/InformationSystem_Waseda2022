<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8" />
<c:set var="formMakerNames" value="${paramValues.makerName}"/>
<c:set var="formProduct" value="${paramValues.product}"/>
<c:set var="formColor" value="${paramValues.color}"/>
<sql:setDataSource driver="org.h2.Driver" url="jdbc:h2:sdev" />



<html>
<head>
<link rel="stylesheet" href="template/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<TITLE>衣料品販売</TITLE>
<%--

  表示方法の設定

--%>
</head>
<BODY>

  <jsp:include page="template/header.jsp"/>
		<c:if test="${Logined == 'True'}">
    	<h2 style="text-align:center;">ようこそ、${UserName}さん</h2>
		</c:if>
		<div style="display: flex; margin:0 3%;">
		<div class="sidebar" style="width: 15%">
			<jsp:include page="template/sidebar.jsp"/>
		</div>
		<div class="main" style="width: 85%">
		  <div style="background-color:#8fa0f6; height:300px; margin-bottom:15px;">
		  <h3> <center>おすすめ商品はこちら</center></h3>
		  <table>
				<TR>
					<TH>イメージ</TH>
					<TH>製品名</TH>
					<TH>色</TH>
					<TH>販売価格</TH>
					<TH>ブランド</TH>
				</TR>
				<TR>
					<TD><img src="image/1024.jpeg" height="60" /></TD>
					<TD><center>シャツ</center></TD>
					<TD><center>赤</center></TD>
					<TD><center>2500円</center></TD>
					<TD><center>Addios</center></TD>
				</TR>
				<TR>
					<TD><img src="image/1025.jpeg" height="60" /></TD>
					<TD><center>シャツ</center></TD>
					<TD><center>青</center></TD>
					<TD><center>2500円</center></TD>
					<TD><center>Addios</center></TD>
				</TR>
				<TR>
					<TD><img src="image/1064.jpeg" height="60" /></TD>
					<TD><center>帽子</center></TD>
					<TD><center>青</center></TD>
					<TD><center>1500円</center></TD>
					<TD><center>Under</center></TD>
				</TR>
			</table>


		  
		  </div>
		<form action="detail.jsp" method="POST">
			<table>
				<TR>
					<TH>イメージ</TH>
					<TH>製品名</TH>
					<TH>色</TH>
					<TH>サイズ</TH>
					<TH>販売価格</TH>
					<TH>ブランド</TH>
				</TR>
<%--

  検索結果レコードの表示処理。

  c:forEachタグは、itemsの行数分ループを行う。

--%>

<c:choose>
	<c:when test="${! empty formMakerNames}">
		<sql:query var="rs">
		SELECT * FROM PRODUCT
		WHERE MAKER_NAME='${fn:join(formMakerNames, "' OR MAKER_NAME='")}' ORDER BY PRODUCT_CODE;
		</sql:query>
	</c:when>
		<c:when test="${! empty formProduct}">
		<sql:query var="rs">
		SELECT * FROM PRODUCT
		WHERE PRODUCT_NAME='${fn:join(formProduct, "' OR PRODUCT_NAME='")}' ORDER BY PRODUCT_CODE;
		</sql:query>
	</c:when>
		<c:when test="${! empty formColor}">
		<sql:query var="rs">
		SELECT * FROM PRODUCT
		WHERE COLOR='${fn:join(formColor, "' OR COLOR='")}' ORDER BY PRODUCT_CODE;
		</sql:query>
	</c:when>
	<c:otherwise>
		<sql:query var="rs">
		SELECT * FROM PRODUCT ORDER BY PRODUCT_CODE;
		</sql:query>
	</c:otherwise>
</c:choose>

<c:forEach var="row" items="${rs.rows}">

  <TR>
    <%-- 商品を選択するラジオボタンを出力 --%>
    <TD>
      <input type="radio" name="selectedProductCode" value="${row.PRODUCT_CODE}">
      <img src="image/${row.IMAGE}" height="60" />
    </TD>
    <%-- 商品名 --%>
    <TD><center>${row.PRODUCT_NAME}</center></TD>
    <TD><center>${row.COLOR}</center></TD>
    <TD><center>${row.SIZE}</center></TD>
    <TD><center>${row.PRICE}円</center></TD>
    <TD><center>${row.MAKER_NAME}</center></TD>
    <%-- <TD><a href="review.jsp?productCode=${row.PRODUCT_CODE}">口コミ</a></TD> --%>
  </TR>

</c:forEach>

			</table>
			<BR> <INPUT type="submit" value="詳細" name="detail">

		</form>
		</div>
		</div>
		<jsp:include page="template/footer.jsp"/>
	</center>
</BODY>
</HTML>
