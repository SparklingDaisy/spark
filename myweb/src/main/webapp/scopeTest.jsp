<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>scopeTest.jsp</h1>
<jsp:useBean id="stest" class="com.yong.scope.ScopeTest" scope="application"></jsp:useBean>
<jsp:setProperty property="count" name="stest"/>
<h2 style="color:blue;">count의 값:<%=stest.getCount() %></h2>
<a href="scopeTest_ok.jsp">다음 페이지로..</a>
</body>
</html>