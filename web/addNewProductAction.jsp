<%-- 
    Document   : addNewProductAction
    Created on : 06-Feb-2024, 6:57:53 pm
    Author     : Adarsh Tiwari
--%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String category = request.getParameter("category");
   String price = request.getParameter("price");
   String active = request.getParameter("active");
   
try
{
Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("insert into product values(?,?,?,?,?);");
ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, category);
ps.setString(4, price);
ps.setString(5, active);
ps.executeUpdate();
response.sendRedirect("./admin/addNewProduct.jsp?msg=done");
}

catch(Exception e)
{
System.out.println(e);
response.sendRedirect("./admin/addNewProduct.jsp?msg=wrong");
}
%>




