<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Web Study</title>
</head>
<body>
<%--  <h1><%= request.getAttribute("dancerName") %>님이 등록되었습니다.</h1>--%>

<%-- EL : JSP에서 특별히 사용하는 문법 --%>
  <h1>${dancerName}님이 등록되었습니다.</h1>
  <a href="/mvc/v1/show">댄서 목록 모아보기 (MVC 버전) </a>
</body>
</html>