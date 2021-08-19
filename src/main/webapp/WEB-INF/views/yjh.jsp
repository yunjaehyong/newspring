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
<table class="type09">
  <thead>
  <tr>
    <th scope="cols">INX</th>
    <th scope="cols">아이디</th>
    <th scope="cols">패스워드</th>
    <th scope="cols">이름</th>
    <th scope="cols">제목</th>
    <th scope="cols">내용</th>
    <th scope="cols">작성시간</th>
  </tr>
  </thead>
  <tbody>
  		<c:forEach var="test" items="${yjhlist}">
						<tr>
							<td>${test.rate}</td>
							<td>${test.id}</td>
							<td>${test.pw}</td>
							<td>${test.user_name}</td>
							<td>${test.title}</td>
							<td>${test.board_context}</td>
							<td><fmt:formatDate value="${test.to_date}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
						</tr>
			</c:forEach>
  </tbody>
</table>
		
			<form name="Form">
				<input type="hidden" name="cmd" value="openPop" />
				 <input type="hidden" name="rate" />
			</form>

		</div>
		<button type="button" onclick="Goupdate()" style="position: relative; left:-479px;">수정</button>
		<button type = "button" class="btn black" onClick="deleteData()" style="position: relative; left:-479px;">삭제</button>

</body>

<script type="text/javascript">


function Goupdate(seq) {
	
	var myForm = document.Form;
	var url = "${pageContext.request.contextPath}/update";
	myForm.action = url;
 	myForm.method = 'post'; 
	myForm.rate.value = seq;
	myForm.submit();
	
	
}
function deleteData(){

	alert("삭제되었습니다.")
	history.back();
	
	$
	.ajax({
		url : "${pageContext.request.contextPath}/deleteDataAjax",
		type : 'post',
		dataType : 'json',
		data : $('#form2').serialize(),
		success : function(result) {
			if (result.result) {
				console.log("성공");

			} else {
				alert('실패');
			}
		},
		error : function(xhr, textStatus, errorThrown) { 
		}
		
	});
}





</script>

</html>