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
<title>Insert title here</title>
</head>
<body>
<div id ="wrap">
	<div id="container">
		<div id="inner">
			<h1>게시판 입력</h1>
			<form id="form1" name="form1">
				<table width="100%" class="table2">
					<tbody id="id">
						<tr>
							<th>아이디</th>
							<td><input name="id" tpye="text"  class="tbox01"/></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input name="pw" tpye="text" class="tbox01"/></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input name="user_name" tpye="text" class="tbox01"/></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input name="title" tpye="text" class="tbox01"/></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input type="text" name="board_context" cols="10" row="5" class="textarea01"></textarea></td>
						</tr>	
					</tbody>
				</table>
			</form>
			<div class="btn">
				<button type="button" class="btn black" onClick="insertData()">입력</button>
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


function insertData() {


	
	var f = document.form1;
	if (!f.id.value) {

		alert("id를 입력하세요");
		f.id.focus();
		return;

	}

	if (!f.pw.value) {

		alert("pw");
		f.pw.focus();
		return;

	}

	if (!f.user_name.value) {

		alert("이름");
		f.user_name.focus();
		return;

	}

	if (!f.title.value) {

		alert("제목");
		f.title.focus();
		return;

	}

	if (!f.board_context.value) {

		alert("내용 입력하세요");
		f.board_context.focus();
		return;

	}


	$
			.ajax({
				url : "${pageContext.request.contextPath}/insertDataAjax",
				type : 'post',
				dataType : 'json',
				data : $('#form1').serialize(),
				success : function(result) {
					if (result.result) {
						console.log(result);
						alert(result.msg);
						alert(result.result);
						location.reload();

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