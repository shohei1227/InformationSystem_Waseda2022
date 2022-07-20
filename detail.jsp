<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<sql:setDataSource driver="org.h2.Driver" url="jdbc:h2:sdev" />


<%-- 販売画面で選択した衣料品の情報を取得する
  商品コードを取得し、変数[formProductCode]に格納する --%>
<fmt:requestEncoding value="utf-8" />
<c:set var="formProductCode" value="${param.selectedProductCode}" />

<sql:query var="rs">
SELECT STOCK_NUM
  FROM PRODUCT_STOCK WHERE PRODUCT_CODE = ?;
<sql:param value="${formProductCode}" />
</sql:query>

<%-- 在庫数を変数[stockNum]に格納する --%>
<c:choose>
  <c:when test="${rs.rowCount == 0}">
    <c:set var="stockNum" value="0" />
  </c:when>
  <c:otherwise>
    <c:set var="row" value="${rs.rows[0]}" />
    <c:set var="stockNum" value="${row.STOCK_NUM}" />
  </c:otherwise>
</c:choose>

<%--
  商品の情報を検索する
  [PRODUCT_INFO]テーブルから [PRODUCT_CODE], [PRODUCT_NAME],
  [CATEGORY_NAME], [MAKER_NAME], [DETAIL], [MATERIAL], [SIZE], [IMAGE],
  [PRICE] を [PRODUCT_CODE]の昇順で検索するSQL文。
--%>
<sql:query var="rs">
SELECT PRODUCT_CODE, PRODUCT_NAME, CATEGORY_NAME, MAKER_NAME, DETAIL, MATERIAL, SIZE, IMAGE, PRICE
  FROM PRODUCT_INFO WHERE PRODUCT_CODE=? ORDER BY PRODUCT_CODE;
<sql:param value="${formProductCode}" />
</sql:query>

<%-- 一行目を変数rowに代入 --%>
<c:set var="row" value="${rs.rows[0]}" />

<html>
<head>
  <link rel="stylesheet" href="template/style.css"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <TITLE>詳細情報</TITLE>
  <STYLE type="text/css">
      body {background-color:white;}
      table {border-collapse:separate; border-spacing:2px; width:100%;}
      th {background-color:#333333; text-align:center; font-size:large; font-weight:bold; color:white;}
      td {background-color:#EFEFEF; font-size:normal; color:black;}
      h2{
        padding: 10px;
      }
      .detail{
        display: flex;
        justify-content: space-evenly;
      }
  </STYLE>
</head>
<BODY>
  <jsp:include page="template/header.jsp"/>
  <%--  <H2>${formProductCode}</H2> --%>
      <h2>詳細画面</h2>

  <%--

    詳細情報を出力する

  --%>
  <div class="detail">
      <div class="right">
          <%-- 画像を出力 --%>
          <img src="image/${row.IMAGE}" />
      </div>
      <div class="left">
          <%-- メーカーを出力 --%>
          <h4>メーカー：${row.MAKER_NAME}</h4>
          <%-- 製品名を出力 --%>
          <h4>製品名：${row.PRODUCT_NAME}</h4>
          <%-- 素材を出力 --%>
          <h4>素材：${row.MATERIAL}</h4>
          <%-- カテゴリを出力 --%>
          <h4>カテゴリ：${row.CATEGORY_NAME}</h4>
          <%-- 説明を出力 --%>
          <h4>説明：${row.DETAIL}</h4>
          <%--販売価格を出力 --%>
          <h4 style="font-size: 140%;"> ¥${row.PRICE}</h4>
      </div>
  </div>
  <%-- 在庫数を確認 --%>
  <div class="buy" style="text-align: center; padding-top: 5%">
    <c:choose>
      <c:when test="${stockNum < 1}">
        <%-- 商品の在庫が存在しない場合は、品切れの情報を出力する --%>
        申し訳ございません。${row.PRODUCT_NAME} は品切れです。<BR>
        <a href="list.jsp">一覧へ戻る</a>
      </c:when>
      <c:otherwise>
        <c:choose>
          <c:when test="${stockNum < 3}">
            <p style="color: red;">残り在庫:${stockNum}個</p><BR>
          </c:when>
          <c:otherwise>
            <p>残り在庫:${stockNum}個<p>
          </c:otherwise>
        </c:choose>
        <form action="buy.jsp" method="POST">
        <%--  次の購入のページに製品コードを渡すための処理 
          画面上には出力されない --%>
        <%-- 製品コードのデータ --%>
          <input type="hidden" name="hiddenCode" value="${row.PRODUCT_CODE}" />
          <input type="hidden" name="hiddenPrice" value="${row.PRICE}" />
          <c:choose>
          <c:when test="${empty UserName}">
          <p>商品を購入するには<a href="login.html">LOGIN</a>してください</p>
          </c:when>
          <c:otherwise>
          <p>購入者氏名 : ${UserName}</p> 
          <INPUT type="submit" name="buttonBuy" value="購入する">
          <br><br>
          <input type="number" name="usePoint" min="1" max="${Point}"> 
          <INPUT type="submit" name="buttonBuyPoint" value="Pointを使って購入する">

          </c:otherwise>
          </c:choose>
          <br><br>
          <a href="list2.jsp">一覧へ戻る</a>
        </form>
      </c:otherwise>
    </c:choose>
  </div>
  <jsp:include page="template/footer.jsp"/>
</body>
</html>
