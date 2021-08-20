<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>파일 업로드</h1>
<div class="content">
		<br/><br/>
		<h3>파일 업로드</h3>
		<form action="/common/upload.do" method="post" enctype="multipart/form-data">
		  <table>
		    <tr>
		      <td>Select File</td>
		      <td><input type="file" name="uploadFile" /></td>
		      <td>
		        <button type="submit">Upload</button>
		      </td>
		    </tr>
		  </table>
		</form>
	</div>
</body>

<script>
  
  
  
</script>


</html>