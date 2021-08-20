<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script
	src="${pageContext.request.contextPath}/resources/js1/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/side.css">
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<h1>업무기록 게시판</h1>
<nav role="navigation">
  <ul id="main-menu">
    <li><a href="${pageContext.request.contextPath}/index">일간리스트</a></li>
    <li><a href="#">주간리스트</a>
      <ul id="sub-menu">
        <li><a href="${pageContext.request.contextPath}/readlist" aria-label="subemnu">1번프로젝트</a></li>
        <li><a href="${pageContext.request.contextPath}/readlist" aria-label="subemnu">2번프로젝트</a></li>
        <li><a href="${pageContext.request.contextPath}/readlist" aria-label="subemnu">3번프로젝트</a></li>
        <li><a href="${pageContext.request.contextPath}/readlist" aria-label="subemnu">4번프로젝트</a></li>
      </ul>
    </li>
    <li><a href="#">월간리스트</a>
      <ul id="sub-menu">
        <li><a href="#" aria-label="subemnu">5번프로젝트</a></li>
        <li><a href="#" aria-label="subemnu">6번프로젝트</a></li>
        <li><a href="#" aria-label="subemnu">7번프로젝트</a></li>
        <li><a href="#" aria-label="subemnu">8번프로젝트</a></li>
      </ul>
    </li>
    <li><a href="#">오늘의 점심</a>
      <ul id="sub-menu">
        <li><a href="${pageContext.request.contextPath}/selectLaunch" aria-label="subemnu">뭘먹을까?</a></li>
        <li><a href="#" aria-label="subemnu">submenu</a></li>
        <li><a href="#" aria-label="subemnu">submenu</a></li>
        <li><a href="#" aria-label="subemnu">submenu</a></li>
        <li><a href="#" aria-label="subemnu">submenu</a></li>
      </ul>
    </li>
  </ul>
</nav>

</body>

<script>

</script>


</html>