<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%--
  データベースへのコネクションを取得
--%>
<fmt:requestEncoding value="utf-8" />
<c:set var="formUserName" value="${param.userName}" />
<c:set var="formUserPass" value="${param.userPass}" />
<sql:setDataSource driver="org.h2.Driver" url="jdbc:h2:sdev" />

<%-- userデータの追加 --%>
<sql:update>
INSERT INTO USER_INFO_META (NAME, PASSWORD) VALUES (?, ?);
<sql:param value="${formUserName}"/>
<sql:param value="${formUserPass}"/>
</sql:update>

<sql:query var="rs">
SELECT ID, NAME FROM USER_INFO_META;
</sql:query>

<c:forEach var="row" items="${rs.rows}">
<c:set var="UserID" value="${row.ID}" scope='session'/>
<c:set var="UserName" value="${row.NAME}" scope='session'/>
<c:set var="Logined" value="True" scope='session'/>
</c:forEach>


<sql:update>
INSERT INTO USER_INFO (ID) VALUES (?);
<sql:param value="${UserID}"/>
</sql:update>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Refresh" content="10;URL=list2.jsp">
  <title>新規登録</title>
  <%--  表示方法の設定  --%>
  <style type="text/css">
  body {background-color:white;}
  table {border-collapse:separate; border-spacing:2px; width:100%;}
  th {background-color:#333333; text-align:center; font-size:large; font-weight:bold; color:white;}
  td {background-color:#EFEFEF; font-size:normal; color:black;}
  img {vertical-align: middle;}
  </style>
</head>
<BODY>  
    <jsp:include page="template/header.jsp"/>
    <CENTER>
        <h1>新規登録が完了しました</h1>
        <h2> <b> ${UserName}</b> さん、登録ありがとうございます。</h2>
        <h3> あなたの会員番号(ID)は「 ${UserID} 」です。会員番号はログインに必要となりますので控えておいてください。</h3>
        <p> このページは10秒後に<a href="list2.jsp">一覧ページ</a>に移動します。</p>
    </CENTER>
</BODY>
</HTML>
