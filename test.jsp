<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// ../login_action.jsp?uid=aaa&pwd=123&z=%EB%A1%9C%EA%B7%B8%EC%9D%B8
    String userid=request.getParameter("uid");    
	String userpw=request.getParameter("pwd");
    
    //db 조작
    DBHandler db=new DBHandler();
    String name=db.getLogin(userid,userpw);
    db.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	b{color:blue;}
</style>
</head>
<body>
    <h2>로그인 결과</h2>
    <p>아이디 :<b><%=userid%></b></p>
    <p>암호 : <%=userpw%></p>
    <a href="javascript:history.back()">이전 페이지로</a>
</body>
</html>