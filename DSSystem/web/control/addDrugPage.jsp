<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.DrugDao"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />

<jsp:useBean id = "drug" class = "beans.Drug" >
</jsp:useBean>
<jsp:setProperty name = "drug" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Drug Store</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" /> 
    </head>
    <body>
     
        <%
           
            String prescriptionid = request.getParameter("prescriptionID");
            String drugname = request.getParameter("drugName");
            String type = request.getParameter("type");
            String date = request.getParameter("date");

            if (prescriptionid != null && drugname != null) {
                System.out.println("presid: " + prescriptionid + " drgunmae: " + drugname);
                DrugDao.addDrug(drug);
                
            }
        %>
        <div id="header">
            <div class="clearfix">
                <div class="logo">
                    <a href="index.html" title="fff"></a>
                </div>
                <ul class="navigation">
                    

                    <li>
                        <a href="Login.html">Logout</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="contents">
            <div class="clearfix">
                <div class="main">
                    <h1>Add Drug</h1>
                    <form action="addDrugPage.jsp" method="post" class="message">

                       

                        <label>Prescription ID: </label>
                        <input type="text" name="prescriptionID"  placeholder="Prescription ID" onclick=" this.value = ''"/>

                        <label>Drug Name:  </label>
                          <input type="text" name="drugName"  placeholder="Drug Name" onclick=" this.value = ''">
                         
                         <label>Type: </label>
                        <input type="text" name="type"  placeholder="Type" onclick=" this.value = ''"/>
                        
                         <label>Date: </label>
                        <input type="text" name="date"  placeholder="Expiration Date" onclick=" this.value = ''"/>
                        &nbsp;
                        <br> <input type="submit" name ="create" value="Create" ></br>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
