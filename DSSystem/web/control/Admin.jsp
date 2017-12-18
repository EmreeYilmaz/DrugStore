<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Drug Store</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" /> 
        <style>
	.button {
    background-color: #b2b2b2; 
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}


.button1 {padding: 16px 60px;}

</style>
    </head>
    <body>
  	<div id="header">
		<div class="clearfix">
			
			<ul class="navigation">
				<li>
					<a href="index.html">Logout</a>
				</li>
				
				
			</ul>
		</div>
	</div>
	<div id="contents">
		<div class="clearfix">
			<div class="main">
			<br>
			<center><h1>Admin Menu</h1> 
			</br>
					<br>
<button class="button button1">Add New Drug</button>
</br>
			<br>
<button class="button button1">List Of Drugs_</button>
</br>
		<br>
<button class="button button1">Add New Doctor</button>
</br>
			<br>
<button class="button button1">List Of Doctors</button>
</br>
			<br>
<button class="button button1">Request Doctor</button>
</br></center>
			</div>
		</div>
	</div>
    </body>
</html>