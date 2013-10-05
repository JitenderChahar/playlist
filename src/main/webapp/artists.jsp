﻿<%--@elvariable id="q" type="java.lang.String"--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%--

DataStax Academy Sample Application

Copyright 2013 DataStax

--%>

﻿<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Playlist</title>
    <link href="css/playlist.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="images/favicon.png" type="image/png"/>
</head>
<body>
<section class="menu small">
    <%@ include file="alphabet.jspf" %>
<form id="form1" name="form1" method="get" action="">
<input type="hidden" id="q" name="q" value="${q}"/>
<button name="order" value="up">↑</button>
<button name="order" value="down">↓</button>
    <h2>Artists starting with "${q}"</h2>
    <table>
        <%--@elvariable id="artists" type="java.util.List"--%>
        <c:forEach var="artist" items="${artists}">
            <tr>
                <td><a href="tracks?artist=${artist}">${artist}</a></td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>
