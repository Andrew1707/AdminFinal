<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WelcomeAdmin</title>
</head>
<body>
Welcome Admin
<%
String link1 = "employeeSignup.jsp";
out.println("<a href ="+link1+">Register an Employee</a>");
String link = "signout.jsp";
out.println("<a href ="+link+">Signout</a>");
String link3 = "home.jsp";
out.println("<a href ="+link3+">Return to home</a>");
%>
<br>
<br>
<%
String details = request.getParameter("try");
if (details!= null){
	
	out.println(details);
	
}

%>
<br>
<br>
Search/edit customer information 
<form action="SearchCust.jsp" method="post">
<pre>
Enter customer: <input type="text" name="searchCust">
	<input type="submit" value="Submit">
</pre>
</form>

<br>

See sales for a given month and year
<form action="Sales.jsp" method="post">
<pre>
Enter date in form of year/month "0000/00": <input type="text" name="date">
	<input type="submit" value="Submit">
</pre>
</form>

<br>

See the reservation a customer made or reservations a flight has
<form action="Reservation.jsp">
Select whether to see reservations from a flight or a customer
  <select name="Reservation">
  <option value="1">Flight</option>
  <option value="2">Customer</option>
  </select>
<pre>
Type Flight number or customer username: <input type="text" name="name">
	<input type="submit" value="Submit">
</pre>
</form>

<br>

See revenue generated by a flight, customer, or airline
<form action="Revenue.jsp">
Select what you would like to see the revenue for a
  <select name="Revenue">
    <option value="Flight">Flight</option>
    <option value="Customer">Customer</option>
    <option value="Airline">Airline</option>
  </select>
<pre>
Type Flight number or customer username or Airline ID: <input type="text" name="name">
</pre>
  <input type="submit" value="Submit">
</form>

<br>

View Customer that generated most revenue:
<form action="BestCust.jsp">
<pre>
  <input type="submit" value="Submit">
</pre>
</form>

<br>

View top 5 most active flights:
<form action="ActiveFlights.jsp" method="post">
<pre>
	<input type="submit" value="Submit">
</pre>
</form>

<br>

See all flights in an airport
<form action="AirportFlights.jsp" method="post">
<pre>
Enter AirportID: <input type="text" name="airport">
	<input type="submit" value="Submit">
</pre>
</form>

</body>
</html>