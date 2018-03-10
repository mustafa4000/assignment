<%-- 
    Document   : settings
    Created on : Mar 8, 2018, 4:24:38 PM
    Author     : kingf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keyword" content="">
	<meta name="description" content="">
	<link rel="stylesheet" type="text/css" href="styles/style.css">
	<link rel="icon" type="image/x-icon" href=""/>
        
    </head>
    <body>
        <h2>Settings</h2>
        
        <a href="index.htm">Back to main</a><br><br>
        
        <select id="currency" name="currency" onchange="location.href=this.value">
            <option>Select currency</option>
            <option value="settingServlet?currency=usd">USD</option>
            <option value="settingServlet?currency=eur">EUR</option>
            <option value="settingServlet?currency=cny">CNY</option>
        </select>
        
        
    </body>
</html>
