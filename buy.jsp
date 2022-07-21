<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%--

  データベースへのコネクションを取得

--%>
<sql:setDataSource driver="org.h2.Driver" url="jdbc:h2:sdev" />

<%--

  詳細画面で入力した値を取得する

--%>
<fmt:requestEncoding value="utf-8" />
<%-- 製品コードを変数[formCode]に格納する --%>
<c:set var="formCode" value="${param.hiddenCode}" />
<%-- 価格を変数[formPrice]に格納する --%>
<c:set var="formPrice" value="${param.hiddenPrice}" />
<%-- [購入者]を変数[formCustomerName]に格納する --%>
<c:set var="formCustomerName" value="${param.customerName}" />
<%-- point取得 --%>
<c:set var="UsePoint" value="${param.usePoint}" />



<fmt:parseNumber var="pointsGrant" value="${formPrice*0.10}" integerOnly="true" />

<c:choose>
<c:when test="${! empty UsePoint}">
  <c:set var="formPrice" value="${formPrice - UsePoint}"/>
</c:when>
<c:otherwise>
  <c:set var="UsePoint" value="0"/>
</c:otherwise>
</c:choose>
<%--

  注文内容をデータベースに登録するSQL文を実行する
  [PURCHASE_HISTORY]テーブルに、[PRODUCT_CODE], [CUSTOMER_NAME],
  [PURCHASE_DATE], [PRODUCT_NUM],[PRICE] を登録するSQL文
  購入数は1個で固定

--%>
<sql:update>
INSERT INTO PURCHASE_HISTORY (PRODUCT_CODE,CUSTOMER_NAME,PURCHASE_DATE,PRODUCT_NUM,PRICE) VALUES(?, ?, ?, 1, ?);
<sql:param value="${formCode}" />
<sql:param value="${formCustomerName}" />
<sql:dateParam value="<%=new java.util.Date()%>" type="TIMESTAMP" />
<sql:param value="${formPrice}" />
</sql:update>

<html>
<head>
<link rel="stylesheet" href="template/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>購入結果</TITLE>
<%--

  表示方法の設定

--%>
<STYLE type="text/css">
body {background-color:white;}
</STYLE>
</head>
<BODY>
<jsp:include page="template/header.jsp"/>
<center>
<sql:update>
  UPDATE PRODUCT_STOCK SET STOCK_NUM = STOCK_NUM -1 WHERE PRODUCT_CODE = ?;
  <sql:param value="${formCode}" />
  UPDATE USER_INFO SET POINT=POINT-? WHERE ID=?;
  <sql:param value="${UsePoint}" />
  <sql:param value="${UserID}" />
  UPDATE USER_INFO SET POINT=POINT+? WHERE ID=?;
  <sql:param value="${pointsGrant}" />
  <sql:param value="${UserID}" />
</sql:update>


<FONT size="3" color="#000000"><B>ご購入ありがとうございました。</B></FONT>


<BR>
<BR>

<%--

  注文内容をHTML上に出力する

--%>
<%-- [製品コード]をHTML上に出力する --%>
製品コード：${formCode}<BR>
<%-- [価格]をHTML上に出力する --%>
購入価格：${formPrice}<BR>
<%-- [顧客氏名]をHTML上に出力する --%>
顧客氏名：${UserName}<BR>

付与ポイント：${pointsGrant}<BR>
<br>
<a href="list2.jsp">元に戻る</a>
</center>
<jsp:include page="template/footer.jsp"/>
</BODY>
</HTML>
