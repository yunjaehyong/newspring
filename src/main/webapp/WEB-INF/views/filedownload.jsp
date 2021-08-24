<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
	<jsp:include page="/WEB-INF/views/include/top.jsp" />
<html>
<script
	src="${pageContext.request.contextPath}/resources/js1/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js1/common.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">  <head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>파일 다운로드</title>
  </head>
  <body>
  <form action="fileDownload" method="post" enctype="multipart/form-data">
  <input type="hidden" name=inx value=${upload.inx}>
  	<c:if test="${upload.file_name ne null}">
			<tr>
				<td bgcolor="orange">다운로드</td>
				<td align="left"><a href="fileDownload?fileName=${upload.file_name}">다운로드</a></td>
			</tr>
			</c:if>
	</form>
  </body>
  
</html>