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
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
			<table border="1">
			
				<tr>
					<th>INX</th>
					<th>아이디</th>
					<th>패스워드</th>
					<th>이름</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성시간</th>
				</tr>
				<tbody>
					<c:forEach var="yjh" items="${yjhlist}">
						<tr>
							<td>${yjh.rate}</td>
							<td onclick="Goupdate(${yjh.rate})">${yjh.id}</td>
							<td>${yjh.pw}</td>
							<td>${yjh.user_name}</td>
							<td>${yjh.title}</td>
							<td>${yjh.board_context}</td>
							<td><fmt:formatDate value="${yjh.to_date}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
					</c:forEach>
				</tbody>
			</table>

			<form name="Form">
				<input type="hidden" name="cmd" value="openPop" />
				 <input type="hidden" name="rate" />
			</form>

		</div>
		<button type="button" onclick="GoInsert()">등록</button>

</body>

<script type="text/javascript">

function GoInsert(){
	
	console.log("이동");
	location.href = "/swempire/insert"
	
	
}
function Goupdate(seq) {
	
	var myForm = document.Form;
	var url = "${pageContext.request.contextPath}/update";
	myForm.action = url;
 	myForm.method = 'post'; 
	myForm.rate.value = seq;
	myForm.submit();
	
	
}




</script>

</html>