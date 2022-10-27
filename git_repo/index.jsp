
<!-- 오늘 점심은 국밥 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>


<h3>  메인화면  </h3>
<hr>

<h5>
<% 	/* 세션에 등록된 id 가 없으면 널값 에 해당 된다. 그래서 회원가입 하시거나 로그인 하세요! 라고 표기 */
	if(session.getAttribute("memId") == null){%> 
		
		<a href="./member/writeForm.jsp"> 회원가입</a> <br>
		<a href="./member/loginForm.jsp"> 로그인</a> <br>
	

<% } 
		/* 널값이 아니라는 말은 즉, 세션에 id가 등록되어있다. 즉 로그인 되어있는 상태 이므로 글쓰기 하거나 로그아웃 하세요 */
	 else { %> 
		<a href="./board/boardWriteForm.jsp"> 글쓰기</a> <br>
		<a href="./member/logout.jsp"> 로그아웃</a> <br>
		
		
	<% } %>
		<a href="./board/boardList.jsp?pg=1"> 목록</a> <br>

</h5>



</body>
</html>
