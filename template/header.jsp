<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
    </style>
</head>
<body>
    <!-- Header Start -->
    <header class="site-header">
        <sql:setDataSource driver="org.h2.Driver" url="jdbc:h2:sdev" />
        <div class="wrapper site-header__wrapper">
            <div class="site-header__start">
                <a href="/list2.jsp" class="brand">Brand</a>
            </div>
            <div class="site-header__end">
                <nav class="nav">
                    <button class="nav__toggle" aria-expanded="false" type="button">menu</button>
                    <ul class="nav__wrapper">
                        <li class="nav__item"><a href="#">Home</a></li>
                        <c:if test="${Logined == 'False' || empty Logined}">
                            <li class="nav__item"><a href="/login.html">Login</a></li>
                            <li class="nav__item"><a href="/register.html">Register</a></li>
                        </c:if>
                        <c:if test="${Logined == 'True'}">
                            <sql:query var="rs">
                            SELECT POINT FROM USER_INFO WHERE ID = ?;
                            <sql:param value="${UserID}" />
                            </sql:query>
                            <c:set var="row" value="${rs.rows[0]}"/>
                            <c:set var="Point" value="${row.POINT}" scope='session'/>
                            <c:set var="History" value="${row.HISTORY}" scope='session'/>
                            <li class="nav__item"><a style="font-size:80%;"><b>${UserName}<br>ID : No. ${UserID}</b></a></li>
                            <li class="nav__item"><a style="font-size:80%;">POINT : ${Point} pt</a></li>
                            <li class="nav__item"><a href="#">Services</a></li>
                            <li class="nav__item"><a href="#">${Logined}</a></li>
                        </c:if>
                    </ul>
                </nav>
                <div class="search">
                    <button class="search__toggle" aria-label="Open search">Search</button>
                    <form class="search__form" action="">
                        <label class="sr-only" for="search">Search</label>
                        <input type="search" name="" id="search" placeholder="検索機能はまだ実装されていません。"/>
                    </form>
                </div>
            </div>
        </div>
    </header>
    <script>
        let navToggle = document.querySelector(".nav__toggle");
        let navWrapper = document.querySelector(".nav__wrapper");

        navToggle.addEventListener("click", function () {
        if (navWrapper.classList.contains("active")) {
            this.setAttribute("aria-expanded", "false");
            this.setAttribute("aria-label", "menu");
            navWrapper.classList.remove("active");
        } else {
            navWrapper.classList.add("active");
            this.setAttribute("aria-label", "close menu");
            this.setAttribute("aria-expanded", "true");
            searchForm.classList.remove("active");
        }
        });

        let searchToggle = document.querySelector(".search__toggle");
        let searchForm = document.querySelector(".search__form");

        searchToggle.addEventListener("click", showSearch);

        function showSearch() {
            searchForm.classList.toggle("active");
            navToggle.setAttribute("aria-expanded", "false");
            navToggle.setAttribute("aria-label", "menu");
            navWrapper.classList.remove("active");
        }
</script>
    <!-- Header End -->