<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
<form action="common/upload" method="post" enctype="multipart/form-data">
<table>
<tr>
	<td bgcolor="orange" width="70">업로드</td><td align="left">
	<input type="file" name="uploadFile"/></td>
	<button type="submit">Upload</button>
</tr>
</table>
</form>
</body>
</html>