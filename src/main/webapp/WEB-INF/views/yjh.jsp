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
<<<<<<< HEAD

=======
<form name="form" id=form method="post">
>>>>>>> 63a59ab54bc5dacc9b96b88bbff489da922cd754
	<div class="container">
	<form id="form2" name="form2" method="post">
<table class="type09">
<<<<<<< HEAD

					<tbody id="id">
					<input type="hidden" name = "rate" value = "${yjhlist.rate}">
					
						<tr>
							<th>아이디</th>
							<td><input type="text" name="id" value="${yjhlist.id}" > </span></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input name="pw" tpye="text" value="${yjhlist.pw}"class="tbox01" /></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input name="user_name" tpye="text" value="${yjhlist.user_name}"class="tbox01" /></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input name="title" tpye="text" value="${yjhlist.title}"class="tbox01" /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input tpye="text" name="board_context" value="${yjhlist.board_context}"cols="10" row="5" class="textarea01" ></td>
						</tr>	
						</form>
					</tbody>
				</table>
		</form>
		
		</div>
		<button type="button" onclick="updateData()" style="position: relative; left:-479px;">수정</button>
		<button type = "button" class="btn black" onClick="deleteData()" style="position: relative; left:-479px;">삭제</button>

	<form name="Form">
				<input type="hidden" name="cmd" value="openPop" />
				 <input type="hidden" name="rate" />
			</form>


=======
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
  		<tr>
  			<td>${test.rate}</td>
  			<td>${test.id}</td>
  			<td>${test.pw}</td>
  			<td>${test.user_name}</td>
  			<td>${test.title}</td>
  			<td>${test.board_context}</td>
  			<td><fmt:formatDate value="${test.to_date}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
  </tbody>
</table>
		
				<input type="hidden" name="cmd" value="openPop" />
				<input type="hidden" name="rate" />
				
			
		
		<div class="btn">	
			<button type="button" onClick="Goupdate(${test.rate})" style="position: relative; left:-4px;">수정</button>
			<button type="button" onClick="deleteData()" style="position: relative; left:-4px;">삭제</button>
		</div>
		</div>
	</form>
>>>>>>> 63a59ab54bc5dacc9b96b88bbff489da922cd754
</body>

<script type="text/javascript">


<<<<<<< HEAD
function updateData() {


	
	var f = document.form2;
	var con = confirm("수정하시겠습니까?")


	$
			.ajax({
				url : "${pageContext.request.contextPath}/updateDataAjax",
				type : 'post',
				dataType : 'json',
				data : $('#form2').serialize(),
				success : function(result) {
					if (result.result) {
						if(con){
							alert("수정되었습니다.")
							history.back(); return false;
						}

					} else {
						alert('실패');
					}
				},
				error : function(xhr, textStatus, errorThrown) { 

					alert(result.msg);
				}
			});
=======
function Goupdate(seq) {
	
	var myForm = document.form;
	var url = "${pageContext.request.contextPath}/update";
	myForm.action = url;
 	myForm.method = 'post'; 
	myForm.rate.value = seq;
	myForm.submit();
	
		
>>>>>>> 63a59ab54bc5dacc9b96b88bbff489da922cd754
}

function deleteData(){

	
	
	$
	.ajax({
		url : "${pageContext.request.contextPath}/deleteDataAjax",
		type : 'post',
		dataType : 'json',
		data : $('#form').serialize(),
		success : function(result) {
			if (result.result) {
				console.log("성공");

			} else {
				alert('fail');
			}
		},
		error : function(xhr, textStatus, errorThrown) { 
		}
		
	});
}





</script>

</html>