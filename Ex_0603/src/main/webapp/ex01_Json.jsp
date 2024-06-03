<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		let p = {'name' : '홍길동', 'age' : '20', 'tel' : '010-1111-1111'}
		document.write('이름 : ' + p.name + "<br>");
		document.write('나이 : ' + p.age + "<br>");
		document.write('전화번호 : ' + p.tel + "<br>");
		
		document.write("<hr>");
		
		// json 1차원 배열
		// json을 요소로 갖는 js배열
		
		let p_arr = [{'name' : '일길동', 'age' : '30'}, {'name' : '이길동', 'age' : '40'}]
		document.write(p_arr[0].name + " / " + p_arr[0].age + "<br>");
		document.write(p_arr[1].name + " / " + p_arr[1].age + "<br>");
		
		document.write("<hr>");
		
		// json 다차원 배열
		let course = {'name' : '웹개발', 
					  'start' : '2024-05-13',
					  'end' : '2025-02-18',
					  'sub' : ['java', 'jsp', 'spring'],
					  'student' : [{'name' : '일길동', 'age' : '30'}, {'name' : '이길동', 'age' : '40'}]}

		document.write("과목명 : " + course.name + "<br>");
		document.write("시작일 : " + course.start + "<br>");
		document.write("종료일 : " + course.end + "<br>");
		document.write("과목 : " + course.sub[0] + ", " + course.sub[1] + ", " + course.sub[2] + "<br>");
		document.write("학생1 : " + course.student[0].name + ", " + course.student[0].age + "<br>");
		document.write("학생2 : " + course.student[1].name + ", " + course.student[1].age + "<br>");
		
	</script>
</body>
</html>