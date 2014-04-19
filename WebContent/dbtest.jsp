<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK" import="java.sql.*,javax.sql.*,javax.naming.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

  Context ctx=new InitialContext();

  Connection conn=null;

  DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/bookDS");

  conn=ds.getConnection();

  Statement stmt=conn.createStatement();

  ResultSet rs=stmt.executeQuery("select * from book");

  while(rs.next()){

      out.println(rs.getString(1)+"<br>"); 

      out.println(rs.getString(2)+"<br>");

  }

  rs.close();

  stmt.close();

  conn.close();   

 %>

</body>
</html>