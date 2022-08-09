<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout.css">
<style>
h2{
	text-align:center;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
		<h2>회 원 검 색</h2>
			<form name="memberFind" method="post" action="memberFind.jsp">
				<fieldset>
					<legend>회원검색</legend>
						<input type="hidden" name="sw" value="2">
							<select name="fkey">
								<option value="id">아이디</option>
								<option value="name">이름</option>
							</select>
						<input type="text" name="fvalue">
						<input type="submit" value="검색하기">
				</fieldset>
			</form>
	</article>
	<hr>
	<article>
	<fieldset>
		<legend>결과</legend>
		<%
		if(request.getMethod().equals("GET")){
			%>
			<h3>위 검색란에 검색어를 입력해주세요.</h3>
			<%
			
		}else{
			%>
			<jsp:include page="result.jsp"></jsp:include>
			
			<%
		}
		%>
	</fieldset>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>