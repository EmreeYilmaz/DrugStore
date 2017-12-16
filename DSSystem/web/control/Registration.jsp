<%@page import="controller.RegisterDao"%>  
<jsp:useBean id="obj" class="beans.User"/> 
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status= RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
else
out.print("errorr");
  
%>

