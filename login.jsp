<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        body {background-color:white;}
        table {border-collapse:separate; border-spacing:2px; width:100%;}
        th {background-color:#333333; text-align:center; font-size:large; font-weight:bold; color:white;}
        td {background-color:#EFEFEF; font-size:normal; color:black;}
        img {vertical-align: middle;}
    </style>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <TITLE>新規登録</TITLE>
    <%--
    データベースへのコネクションを取得
    --%>
    <fmt:requestEncoding value="utf-8" />
    <c:set var="formInputID" value="${param.inputID}" />
    <c:set var="formInputPass" value="${param.inputPass}" />
    <sql:setDataSource driver="org.h2.Driver" url="jdbc:h2:sdev" />

    <%-- userデータの追加 --%>
    <sql:query var="rs">
    SELECT ID, NAME, PASSWORD
    FROM USER_INFO_META
    WHERE ID=?;
    <sql:param value="${formInputID}"/>
    </sql:query>

    <c:forEach var="row" items="${rs.rows}">
    <c:set var="UserPass" value="${row.PASSWORD}" />
    <c:set var="UserID" value="${row.ID}" scope='session'/>
    <c:set var="UserName" value="${row.NAME}" scope='session'/>
    <c:choose>
        <c:when test="${formInputPass == UserPass}">
            <meta http-equiv="Refresh" content="3;URL=list2.jsp">
            <c:set var="Logined" value="True" scope='session'/>
            </head>
            <body>
            <jsp:include page="template/header.jsp"/>
            <center>
            <a >
            <h3>ようこそ${UserName}さん</h3>
            <p>3秒後に<a href="list2.jsp">一覧ページ</a>へ画面が切り替わります</p>
        </c:when>
        <c:otherwise>
            <meta http-equiv="Refresh" content="3;URL=login.html">
            <c:set var="Logined" value="False" scope='session'/>
            </head>
            <body>
            <jsp:include page="template/header.jsp"/>
            <center>
            <h3>IDまたはパスワードが違います。ログインできません</h3>
            <p>3秒後に<a href="login.html">ログインページ</a>へ画面が切り替わります</p>
        </c:otherwise>
    </c:choose> 
    </c:forEach> 
	</center>
</body>
</html>