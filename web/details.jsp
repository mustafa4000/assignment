<%-- 
    Document   : details
    Created on : Mar 8, 2018, 3:50:50 PM
    Author     : kingf
--%>

<%@page import="main.Values"%>
<%@page import="main.Start"%>
<%@page import="model.KriptoValute"%>
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
        
        <ul>
            <li><a href="settings.jsp">Settings</a></li>
        </ul>
        
        <h2>Details</h2>
        <a href="index.htm">Back to main</a><br>
        <button onclick="location.href='details.jsp';">Refresh</button><br>
        <br>
        <table id="tableKripto">
            <tr>
                <th>Rank</th>
                <th>Name</th>
                <th>Symbol</th>
                <th>Price</th>
                <th>Market Cap</th>
                <th>Price BTC</th>
                <th>1H Change</th>
                <th>24H Change</th>
                <th>7D Change</th>
                
                <th>Total supply</th>
                <th>Available supply</th>
            </tr>
            <% 
                KriptoValute k = Start.getKplista().get(Integer.parseInt("" + Values.rank) - 1);
                
                double price = 0;
                double marketCap = 0;
                
                if(Values.currency != null){
                        if(Values.currency.equals("eur")){
                            price = k.getPrice_eur();
                            marketCap = k.getMarket_cap_eur();
                        }
                        if(Values.currency.equals("usd")){
                            price = k.getPrice_usd();
                            marketCap = k.getMarket_cap_usd();
                        }
                        if(Values.currency.equals("cny")){
                            price = k.getPrice_cny();
                            marketCap = k.getMarket_cap_cny();
                        }
                }
                
            %>
            <tr>
                <td><% out.print(k.getRank()); %></td> 
                <td><% out.print(k.getName()); %></td> 
                <td><% out.print(k.getSymbol()); %></td>
                <td><%= price %></td>
                <td><%= marketCap %></td>
                <td><% out.print(k.getPrice_btc()); %></td>
                <td><% out.print(k.getPercent_change_1h()); %>%</td>
                <td><% out.print(k.getPercent_change_24h()); %>%</td>
                <td><% out.print(k.getPercent_change_7d()); %>%</td>
                <td><% out.print(k.getTotal_supply()); %></td>
                <td><% out.print(k.getAvailable_supply()); %></td>
            </tr>
        </table>
    </body>
</html>
