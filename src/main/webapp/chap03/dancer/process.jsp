<%@ page import="com.jsp.basic.chap02.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsp.basic.chap02.Dancer" %>
<%@ page import="com.jsp.basic.chap02.DanceLevel" %>
<%@ page import="com.jsp.basic.chap02.Genre" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // 넘어온 쿼리 스트링 (?a=b)을 읽어야 함
    String name = request.getParameter("name");
    String crewName = request.getParameter("crewName");
    String danceLevel = request.getParameter("danceLevel");
    String genres = request.getParameter("genres");

    System.out.println("name = " + name);

    List<Genre> genreList = new ArrayList<>();
    for (String g : genres) {
        genreList.add(Genre.valueOf(g));
    }

    Dancer dancer = new Dancer(
            name, crewName, DanceLevel.valueOf(danceLevel), genreList
    );

    DancerRepository.addDancer(dancer);

%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Web Study</title>
</head>
<body>

    <h1><%= dancer.getName() %>님이 등록되었습니다.</h1>

    <a href="/chap03/dancer/show-list.jsp">댄서 목록 모아보기 (JSP 버전) </a>

</body>
</html>