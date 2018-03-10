
<%@page import="main.Values"%>
<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="model.KriptoValute"%>
<%@page import="main.Read"%>
<%@page import="main.Start"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keyword" content="">
	<meta name="description" content="">
	<link rel="stylesheet" type="text/css" href="styles/style.css">
	<link rel="icon" type="image/x-icon" href=""/>
        
    </head>

    <body>
        
        <ul>
            <li><a href="settings.jsp">Settings</a></li>
        </ul>
        
        
        <h2>Cryptocurrency list</h2><br>
        
        <button onclick="location.href='index.htm';">Refresh</button><br>
        
        <% 
            String symbol = Values.usdSymbol;
            Values.link = "https://api.coinmarketcap.com/v1/ticker/?convert=USD&limit=10";
            if (Values.currency != null) {
                    if (Values.currency.equals("eur")) {
                        symbol = Values.eurSymbol;
                        Values.link = "https://api.coinmarketcap.com/v1/ticker/?convert=EUR&limit=100";
                    } else if (Values.currency.equals("cny")) {
                        symbol = Values.cnySymbol;
                        Values.link = "https://api.coinmarketcap.com/v1/ticker/?convert=CNY&limit=100";
                    }
            }else{
                Values.currency = "usd";
            }
            Start.readUrl(Values.link);
            
        %><br>
        
        <table id="tableKripto">
            <tr>
                <th>Rank</th>
                <th>Symbol</th>
                <th>Price in selected currency (<%= symbol %>)</th>
                <th>24 Hour change </th>
            </tr>
            <% 
                int i = 1;
                double price = 0;
                for(KriptoValute k : Start.getKplista()){
                    if(Values.currency != null){
                        if(Values.currency.equals("eur"))
                            price = k.getPrice_eur();
                        if(Values.currency.equals("usd"))
                            price = k.getPrice_usd();
                        if(Values.currency.equals("cny"))
                            price = k.getPrice_cny();
                    }
            %>
            <tr>
                <td><a href="indexServlet?id=<%= k.getRank()%>"><% out.print(k.getRank()); %></a></td> 
                <td><a href="indexServlet?id=<%= k.getRank()%>"><% out.print(k.getSymbol()); %></a></td>
                <td><a href="indexServlet?id=<%= k.getRank()%>"><%= price %></a></td>
                <td><a href="indexServlet?id=<%= k.getRank()%>"><% out.print(k.getPercent_change_24h()); %>%</a></td>
                
            </tr>
            <% i++; } %>
        </table>
        
        
    </body>
</html>
