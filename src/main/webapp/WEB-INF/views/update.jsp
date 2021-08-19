<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>등록</title>
<script src="${pageContext.request.contextPath}/resources/js1/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js1/common.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<jsp:include page="/WEB-INF/views/include/top.jsp" />
<%
request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>
<html>
<head>
<meta charset="EUC-KR">
<title>update title here</title>
</head>
<body>
<div id ="wrap">
	<div id="container">
		<div id="inner">
			<h1>게시판 수정</h1>
			<form id="form2" name="form2" method="post">
				<table width="100%" class="table2">
					<tbody id="id">
					<input type="hidden" name = "rate" value = "${yjhlist.rate}">
						<tr>
							<th>아이디</th>
							<td><input name="id" tpye="text" value="${yjhlist.id}" class="tbox01"/></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input name="pw" tpye="text" value="${yjhlist.pw}"class="tbox01"/></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input name="user_name" tpye="text" value="${yjhlist.user_name}"class="tbox01"/></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input name="title" tpye="text" value="${yjhlist.title}"class="tbox01"/></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input tpye="text" name="board_context" value="${yjhlist.board_context}"cols="10" row="5" class="textarea01"></td>
						</tr>	
					</tbody>
				</table>
			</form>
			<div class="btn">
				<button type="button" class="btn black" onClick="updateData()">입력</button>
				<button type="button" class="btn black" onClick="closeData()">뒤로</button>

				
			</div>
		</div>
	</div>
</div>
</body>

<script>
function closeData(){
	console.log("fsdfdsfsd")
	
	history.back();
	
}


function updateData() {


	var a = confirm("수정하시겠습니까?")
	
	


	$
			.ajax({
				url : "${pageContext.request.contextPath}/updateDataAjax",
				type : 'post',
				dataType : 'json',
				data : $('#form2').serialize(),
				success : function(result) {
					if (result.result) {
						if(a){
							history.back();return false;
						}

					} else {
						alert('실패');
					}
				},
				error : function(xhr, textStatus, errorThrown) { 

					alert(result.msg);
				}
			});
}



</script>
</html>