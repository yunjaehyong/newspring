<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>등록</title>
<script src="${pageContext.request.contextPath}/resources/js1/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js1/common.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css2/Board.css"/>
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
			<h1>update</h1>
			<form id="form2" name="form2" method="post">
				<table width="100%" class="table2">
				<caption><span class="t_red">*</span>표시는 필수입력 항목입니다.</caption>
					<tbody id="id">
					<input type="hidden" name = "rate" value = "${yjh.rate}">
						<tr>
							<th>아이디</th>
							<td><input name="id" tpye="text" value="${yjh.id}" class="tbox01"/></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input name="pw" tpye="text" value="${yjh.pw}"class="tbox01"/></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input name="user_name" tpye="text" value="${yjh.user_name}"class="tbox01"/></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input name="title" tpye="text" value="${yjh.title}"class="tbox01"/></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input tpye="text" name="board_context" value="${yjh.board_context}"cols="10" row="5" class="textarea01"></td>
						</tr>	
					</tbody>
				</table>
			</form>
			<div class="btn">
				<button type="button" class="btn black" onClick="updateData()">입력</button>
				<button type="button" class="btn black" onClick="closeData()">뒤로</button>
				<button type = "button" class="btn black" onClick="deleteData()">삭제</button>
				
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


	
	var f = document.form2;
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
				url : "${pageContext.request.contextPath}/updateDataAjax",
				type : 'post',
				dataType : 'json',
				data : $('#form2').serialize(),
				success : function(result) {
					if (result.result) {
						console.log("성공");
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