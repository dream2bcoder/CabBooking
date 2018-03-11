<%-- 
    Document   : db
    Created on : Jul 8, 2017, 6:36:33 PM
    Author     : BASAK
--%>

<%@page import="com.cb.sesson.ForgetPasswordController"%>
<%@page import="com.cb.db.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    if(DAO.isConnectionOK()) {
%>
<h1>Successfully Connected...</h1>
<%
    } else {
        throw new Exception("Database connection failed...");
    }
%>
<%=
   0//ForgetPasswordController.Mailer.send("subhankar.kgp.16@gmail.com", "whiyyxhcpgpuufas", "subho.tukai@gmail.com", "Test", "<a href='http://www.google.com'><h1>Goto Google</h1></a>") ? "Message Sent Successfully!" : "" 
%>