<%@page import="com.dao.in.BidderDaoImpl"%>
<%@page import="com.dao.in.BidderDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="emp" class="com.model.in.Bidder" />
 <jsp:setProperty property="*" name="emp"/>
 <%
	BidderDao empDao= new BidderDaoImpl();
	int id=empDao.insert(emp);
    
 %>
   Record inserted with <%=id %>
</body>
</html>