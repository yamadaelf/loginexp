
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
username=<%=request.getParameter("username")%>
password=<%=request.getParameter("password")%>


<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if("admin".equals(username)&&"123456".equals(password))
    {
        out.println("welcome "+username);
    }else{
        out.println("登陆失败");
        response.sendRedirect("login.html");
    }
%>
</body>
</html>
