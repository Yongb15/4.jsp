<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send(f) {
		let title = f.title.value.trim();
		let photo = f.photo.value.trim();
	}
	
	// 제목이 없고 사진이 첨부가 안되어있으면 경고 띄우기
	if(title = '') {
		alert('제목을 입력하세요')
		return
	}
	
	if(photo = '') {
		alert('파일을 업로드하세요')
		return
	}
	
	f.action = "upload.do";
	f.submin();
</script>

</head>
<body>
	<form method="post" enctype="multipart/form-data">
		제목 : <input name="title"><br>
		첨부 : <input type="file" name="photo"><br>
		<input type="button" value="업로드" onclick="send(this.form)">
	</form>
</body>
</html>